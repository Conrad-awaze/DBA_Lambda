# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

Set-PSDebug -Strict
 # All Private modules merged into this file during build process to speed up module loading.

function private:Get-Handler {
    <#
        .SYNOPSIS
            Parse _HANDLER environment variable.

        .DESCRIPTION
            Parse _HANDLER environment variable.

        .Notes
            Valid "_HANDLER" options:
            - "<script.ps1>"
            - "<script.ps1>::<function_name>"
            - "Module::<module_name>::<function_name>"
    #>
    [CmdletBinding()]
    param (
        [String]$handler = $env:_HANDLER
    )

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-Handler]Start: Get-Handler' }

    enum HandlerType {
        Script
        Function
        Module
    }

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-Handler]Split _HANDLER environment variable' }
    $private:handlerArray = $handler.Split('::')

    if ($private:handlerArray[0] -like '*.ps1' -and $private:handlerArray.Count -eq 1) {
        # Handler contains only a script file
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-Handler]Handler contains only a script file' }

        $private:handlerObject = @{
            handlerType    = [HandlerType]::Script
            scriptFileName = $private:handlerArray[0]
            scriptFilePath = [System.IO.Path]::Combine($env:LAMBDA_TASK_ROOT, $private:handlerArray[0])
        }
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Get-Handler]Handler type set to: $($private:handlerObject.handlerType)" }
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Get-Handler]Handler set to PowerShell script name: $($private:handlerObject.scriptFileName)" }
    }

    elseif ($private:handlerArray[0] -like '*.ps1' -and $private:handlerArray.Count -eq 2) {
        # Handler contains a script file and handler function name
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-Handler]Handler contains a script file and handler function name' }

        $private:handlerObject = @{
            handlerType    = [HandlerType]::Function
            scriptFileName = $private:handlerArray[0]
            scriptFilePath = [System.IO.Path]::Combine($env:LAMBDA_TASK_ROOT, $private:handlerArray[0])
            functionName   = $private:handlerArray[1]
        }

        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Get-Handler]Handler type set to: $($private:handlerObject.handlerType)" }
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Get-Handler]Script file set to PowerShell script name: $($private:handlerObject.scriptFileName)" }
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Get-Handler]Handler set to PowerShell function: $($private:handlerObject.functionName)" }

    }
    elseif ($private:handlerArray[0] -eq 'Module' -and $private:handlerArray.Count -eq 3) {
        # Handler contains a module name and handler function name
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-Handler]Handler contains a module name and handler function name' }

        $private:handlerObject = @{
            handlerType  = [HandlerType]::Module
            moduleName   = $private:handlerArray[1]
            functionName = $private:handlerArray[2]
        }
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Get-Handler]Handler type set to: $($private:handlerObject.handlerType)" }
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Get-Handler]Module name set to PowerShell module: $($private:handlerObject.moduleName)" }
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Get-Handler]Handler set to PowerShell function: $($private:handlerObject.functionName)" }

    }
    # Unable to parse Handler object
    else {
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-Handler]Unable to parse Handler object' }
        throw ('Invalid Lambda Handler: {0}' -f $handler)
    }

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-Handler]Return handlerObject' }
    return [pscustomobject]$private:handlerObject
}

function private:Get-LambdaNextInvocation {
    <#
        .SYNOPSIS
            Get /NEXT invocation from AWS Lambda Runtime API.

        .DESCRIPTION
            Get /NEXT invocation from AWS Lambda Runtime API.

        .Notes
            If there is an error calling the Runtime API endpoint, this is ignored and retried as part of the event loop.
    #>

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-LambdaNextInvocation]Start: Get-LambdaNextInvocation' }

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-LambdaNextInvocation]Create GET request to Runtime API' }
    $private:incomingWebRequest = [System.Net.WebRequest]::Create("http://$env:AWS_LAMBDA_RUNTIME_API/2018-06-01/runtime/invocation/next")
    $private:incomingWebRequest.Headers.Add('User-Agent', "aws-lambda-powershell/$env:POWERSHELL_VERSION")
    try {
        # Get the next invocation
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-LambdaNextInvocation]Get the next invocation' }
        $private:incomingWebResponse = $private:incomingWebRequest.GetResponse()
    }
    catch {
        # If there is an error calling the Runtime API endpoint, ignore which tries again
        continue
    }

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-LambdaNextInvocation]Read response stream' }
    $private:incomingStreamReader = [System.IO.StreamReader]::new($private:incomingWebResponse.GetResponseStream())
    $private:incomingEvent = $private:incomingStreamReader.ReadToEnd()
    $private:incomingStreamReader.Dispose()

    # If there is no response from the Runtime API endpoint, ignore which tries again.
    if ([String]::IsNullOrWhiteSpace($private:incomingEvent)) { continue }
    else {
        $private:responseStream = $null
    }

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-LambdaNextInvocation]Create response object' }
    $private:NextInvocationResponseObject = [pscustomobject]@{
        headers       = $private:incomingWebResponse.Headers
        incomingEvent = $private:incomingEvent
    }
    if ($private:responseStream) { $private:responseStream.Dispose() }
    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Get-LambdaNextInvocation]Return response object' }
    return [pscustomobject]$private:NextInvocationResponseObject
}

function private:Invoke-FunctionHandler {
    <#
        .SYNOPSIS
            Invoke Lambda handler function.

        .DESCRIPTION
            Invoke Lambda handler function.

        .Notes
            Runs entire script if handler isthe script, or function from script/module.
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)] $private:runtimeNextInvocationResponse,
        [Parameter(Mandatory)] $private:HandlerArray,
        [Parameter(Mandatory)] $private:LambdaContext
    )

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Invoke-FunctionHandler]Start: Invoke-FunctionHandler' }

    $private:LambdaInput = ConvertFrom-Json -InputObject $private:runtimeNextInvocationResponse.incomingEvent
    switch ($private:HandlerArray.handlerType) {
        'Module' {
            $private:functionInvocationResponse = & $private:handlerArray.functionName $private:LambdaInput $private:LambdaContext
        }
        'Function' {
            $private:functionInvocationResponse = & $private:handlerArray.functionName $private:LambdaInput $private:LambdaContext
        }
        'Script' {
            $private:functionInvocationResponse = & $private:handlerArray.scriptFilePath $private:LambdaInput $private:LambdaContext
        }
    }

    # Convert function response to a string if needed
    if ($private:functionInvocationResponse -and ($private:functionInvocationResponse.GetType().Name -ne 'String')) {
        $private:responseString = ConvertTo-Json -InputObject $private:functionInvocationResponse -Compress
    }
    else {
        $private:responseString = $private:functionInvocationResponse

    }

    return $private:responseString
}

function private:Send-FunctionHandlerError {
    <#
        .SYNOPSIS
            POST function invocation error back to Runtime API.

        .DESCRIPTION
            POST function invocation error back to Runtime API.

        .Notes

    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)] $private:InvocationError
    )

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Send-FunctionHandlerError]Start: Send-FunctionHandlerError' }

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Send-FunctionHandlerError]Create POST request to Runtime Error API' }
    $private:responseUri = "http://$env:AWS_LAMBDA_RUNTIME_API/2018-06-01/runtime/invocation/$env:AWS_LAMBDA_RUNTIME_AWS_REQUEST_ID/error"
    $private:responseRequest = [System.Net.WebRequest]::Create($private:responseUri)
    $private:responseRequest.Headers.Add('User-Agent', "aws-lambda-powershell/$env:POWERSHELL_VERSION")
    $private:responseRequest.Method = 'POST'

    Write-Host $private:InvocationError

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Send-FunctionHandlerError]Create response error object' }
    $private:responseErrorBody = ConvertTo-Json -Compress -InputObject @{
        errorMessage = $private:InvocationError.Exception.Message
        errorType    = $private:InvocationError.CategoryInfo.Reason
    }

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Send-FunctionHandlerError]Send response error object' }
    $private:responseStream = $private:responseRequest.GetRequestStream()
    $private:responseByteArray = [System.Text.Encoding]::UTF8.GetBytes($private:responseErrorBody)
    $private:responseStream.Write($private:responseByteArray, 0, $private:responseByteArray.Length)

    $null = $private:responseRequest.GetResponse()
    if ($private:responseStream) { $private:responseStream.Dispose() }
}

function private:Send-FunctionHandlerResponse {
    <#
        .SYNOPSIS
            POST function response back to Runtime API.

        .DESCRIPTION
            POST function response back to Runtime API.

        .Notes

    #>
    [CmdletBinding()]
    param (
        $private:InvocationResponse
    )

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Send-FunctionHandlerResponse]Start: Send-FunctionHandlerResponse' }

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Send-FunctionHandlerResponse]Create POST request to Runtime API' }
    $private:responseUri = "http://$env:AWS_LAMBDA_RUNTIME_API/2018-06-01/runtime/invocation/$env:AWS_LAMBDA_RUNTIME_AWS_REQUEST_ID/response"
    $private:responseRequest = [System.Net.WebRequest]::Create($private:responseUri)
    $private:responseRequest.Headers.Add('User-Agent', "aws-lambda-powershell/$env:POWERSHELL_VERSION")
    $private:responseRequest.Method = 'POST'

    if (-not([String]::IsNullOrWhiteSpace($private:InvocationResponse))) {
        if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Send-FunctionHandlerResponse]Sending POST request to Runtime API' }
        $private:responseByteArray = [System.Text.Encoding]::UTF8.GetBytes($private:InvocationResponse)
        $private:responseStream = $private:responseRequest.GetRequestStream()
        $private:responseStream.Write($private:responseByteArray, 0, $private:responseByteArray.Length)
    }

    $null = $private:responseRequest.GetResponse()
    if ($private:responseStream) { $private:responseStream.Dispose() }
}

function private:Set-HandlerEnvironmentVariables {
    <#
        .SYNOPSIS
            Set default and AWS Lambda specific environment variables for each invocation.

        .DESCRIPTION
            Set default and AWS Lambda specific environment variables for each invocation.

        .Notes

    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)] $Headers
    )

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Set-HandlerEnvironmentVariables]Start: Set-HandlerEnvironmentVariables' }
    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Set-HandlerEnvironmentVariables]Received Headers: $($Headers)" }

    # Set default TEMP environment variables for each invocation to ensure they're "clean" for each handler invocation
    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Set-HandlerEnvironmentVariables]Set default TEMP environment variables' }
    $env:TEMP = '/tmp'
    $env:TMP = '/tmp'
    $env:TMPDIR = '/tmp'

    # Set AWS Lambda specific environment variables
    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Set-HandlerEnvironmentVariables]Set AWS Lambda specific environment variables' }
    $env:AWS_LAMBDA_RUNTIME_AWS_REQUEST_ID = $Headers['Lambda-Runtime-Aws-Request-Id']
    $env:AWS_LAMBDA_RUNTIME_CLIENT_CONTEXT = $Headers['Lambda-Runtime-Client-Context']
    $env:AWS_LAMBDA_RUNTIME_COGNITO_IDENTITY = $Headers['Lambda-Runtime-Cognito-Identity']
    $env:AWS_LAMBDA_RUNTIME_DEADLINE_MS = $Headers['Lambda-Runtime-Deadline-Ms']
    $env:AWS_LAMBDA_RUNTIME_INVOKED_FUNCTION_ARN = $Headers['Lambda-Runtime-Invoked-Function-Arn']
    $env:_X_AMZN_TRACE_ID = $Headers['Lambda-Runtime-Trace-Id']
}

function Private:Set-LambdaContext {
    <#
        .SYNOPSIS
            Captures the content of the provided Lambda Context variable.

        .DESCRIPTION
            Captures the content of the provided Lambda Context variable.
    #>

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Set-LambdaContext]Start: Set-LambdaContext' }

    # Importing .NET class from .cs file to support the script property "RemainingTime" and method "getRemainingTimeInMillis".
    # This is taken from the Lambda .Net runtime LambdaContext code: https://github.com/aws/aws-lambda-dotnet/blob/master/Libraries/src/Amazon.Lambda.Core/ILambdaContext.cs
    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Set-LambdaContext]Importing .NET class from .cs file to support script properties and method' }
    Add-Type -TypeDefinition ([System.IO.File]::ReadAllText('/opt/PowerShellLambdaContext.cs'))

    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Set-LambdaContext]Creating LambdaContext' }
    $private:LambdaContext = [Amazon.Lambda.PowerShell.Internal.LambdaContext]::new(
        $env:AWS_LAMBDA_FUNCTION_NAME,
        $env:AWS_LAMBDA_FUNCTION_VERSION,
        $env:AWS_LAMBDA_RUNTIME_INVOKE_FUNCTION_ARN,
        [int]$env:AWS_LAMBDA_FUNCTION_MEMORY_SIZE,
        $env:AWS_LAMBDA_RUNTIME_AWS_REQUEST_ID,
        $env:AWS_LAMBDA_LOG_GROUP_NAME,
        $env:AWS_LAMBDA_LOG_STREAM_NAME,
        $env:AWS_LAMBDA_RUNTIME_COGNITO_IDENTITY,
        $env:AWS_LAMBDA_RUNTIME_CLIENT_CONTEXT,
        [double]$env:AWS_LAMBDA_RUNTIME_DEADLINE_MS
    )
    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Set-LambdaContext]Return LambdaContext: $($private:LambdaContext)" }
    return $private:LambdaContext
}

function private:Set-PSModulePath {
    <#
        .SYNOPSIS
            Modify $env:PSModulePath to support Lambda module file paths.

        .DESCRIPTION
            Modify $env:PSModulePath to support Lambda module file paths.

        .Notes
            Module folders are added in a specific order:
                1: Modules supplied with pwsh
                2: User supplied modules as part of Lambda Layers
                3: User supplied modules as part of function package
    #>
    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Set-PSModulePath]Start: Set-PSModulePath' }
    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host '[RUNTIME-Set-PSModulePath]Setting PSModulePath environment variable' }
    $env:PSModulePath = @(
        '/opt/powershell/modules', # Modules supplied with pwsh
        '/opt/modules', # User supplied modules as part of Lambda Layers
        [System.IO.Path]::Combine($env:LAMBDA_TASK_ROOT, 'modules') # User supplied modules as part of function package
    ) -join ':'
    if ($env:POWERSHELL_RUNTIME_VERBOSE -eq 'TRUE') { Write-Host "[RUNTIME-Set-PSModulePath]PSModulePath environment variable set to: $($env:PSModulePath)" }
}
