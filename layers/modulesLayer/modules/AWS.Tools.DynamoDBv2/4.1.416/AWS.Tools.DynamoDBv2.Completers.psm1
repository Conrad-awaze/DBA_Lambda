# Auto-generated argument completers for parameters of SDK ConstantClass-derived type used in cmdlets.
# Do not modify this file; it may be overwritten during version upgrades.

$psMajorVersion = $PSVersionTable.PSVersion.Major
if ($psMajorVersion -eq 2) 
{ 
	Write-Verbose "Dynamic argument completion not supported in PowerShell version 2; skipping load."
	return 
}

# PowerShell's native Register-ArgumentCompleter cmdlet is available on v5.0 or higher. For lower
# version, we can use the version in the TabExpansion++ module if installed.
$registrationCmdletAvailable = ($psMajorVersion -ge 5) -Or !((Get-Command Register-ArgumentCompleter -ea Ignore) -eq $null)

# internal function to perform the registration using either cmdlet or manipulation
# of the options table
function _awsArgumentCompleterRegistration()
{
    param
    (
        [scriptblock]$scriptBlock,
        [hashtable]$param2CmdletsMap
    )

    if ($registrationCmdletAvailable)
    {
        foreach ($paramName in $param2CmdletsMap.Keys)
        {
             $args = @{
                "ScriptBlock" = $scriptBlock
                "Parameter" = $paramName
            }

            $cmdletNames = $param2CmdletsMap[$paramName]
            if ($cmdletNames -And $cmdletNames.Length -gt 0)
            {
                $args["Command"] = $cmdletNames
            }

            Register-ArgumentCompleter @args
        }
    }
    else
    {
        if (-not $global:options) { $global:options = @{ CustomArgumentCompleters = @{ }; NativeArgumentCompleters = @{ } } }

        foreach ($paramName in $param2CmdletsMap.Keys)
        {
            $cmdletNames = $param2CmdletsMap[$paramName]

            if ($cmdletNames -And $cmdletNames.Length -gt 0)
            {
                foreach ($cn in $cmdletNames)
                {
                    $fqn =  [string]::Concat($cn, ":", $paramName)
                    $global:options['CustomArgumentCompleters'][$fqn] = $scriptBlock
                }
            }
            else
            {
                $global:options['CustomArgumentCompleters'][$paramName] = $scriptBlock
            }
        }

        $function:tabexpansion2 = $function:tabexpansion2 -replace 'End\r\n{', 'End { if ($null -ne $options) { $options += $global:options} else {$options = $global:options}'
    }
}

# To allow for same-name parameters of different ConstantClass-derived types 
# each completer function checks on command name concatenated with parameter name.
# Additionally, the standard code pattern for completers is to pipe through 
# sort-object after filtering against $wordToComplete but we omit this as our members 
# are already sorted.

# Argument completions for service Amazon DynamoDB


$DDB_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.DynamoDBv2.BackupTypeFilter
        "Get-DDBBackupList/BackupType"
        {
            $v = "ALL","AWS_BACKUP","SYSTEM","USER"
            break
        }

        # Amazon.DynamoDBv2.BillingMode
        {
            ($_ -eq "New-DDBTable/BillingMode") -Or
            ($_ -eq "Update-DDBTable/BillingMode") -Or
            ($_ -eq "Restore-DDBTableFromBackup/BillingModeOverride") -Or
            ($_ -eq "Restore-DDBTableToPointInTime/BillingModeOverride") -Or
            ($_ -eq "Update-DDBGlobalTableSetting/GlobalTableBillingMode") -Or
            ($_ -eq "Import-DDBTable/TableCreationParameters_BillingMode")
        }
        {
            $v = "PAY_PER_REQUEST","PROVISIONED"
            break
        }

        # Amazon.DynamoDBv2.ConditionalOperator
        {
            ($_ -eq "Invoke-DDBQuery/ConditionalOperator") -Or
            ($_ -eq "Invoke-DDBScan/ConditionalOperator") -Or
            ($_ -eq "Remove-DDBItem/ConditionalOperator") -Or
            ($_ -eq "Set-DDBItem/ConditionalOperator") -Or
            ($_ -eq "Update-DDBItem/ConditionalOperator")
        }
        {
            $v = "AND","OR"
            break
        }

        # Amazon.DynamoDBv2.ContributorInsightsAction
        "Update-DDBContributorInsight/ContributorInsightsAction"
        {
            $v = "DISABLE","ENABLE"
            break
        }

        # Amazon.DynamoDBv2.ExportFormat
        "Export-DDBTableToPointInTime/ExportFormat"
        {
            $v = "DYNAMODB_JSON","ION"
            break
        }

        # Amazon.DynamoDBv2.InputCompressionType
        "Import-DDBTable/InputCompressionType"
        {
            $v = "GZIP","NONE","ZSTD"
            break
        }

        # Amazon.DynamoDBv2.InputFormat
        "Import-DDBTable/InputFormat"
        {
            $v = "CSV","DYNAMODB_JSON","ION"
            break
        }

        # Amazon.DynamoDBv2.KeyType
        "Add-DDBKeySchema/KeyType"
        {
            $v = "HASH","RANGE"
            break
        }

        # Amazon.DynamoDBv2.ProjectionType
        "Add-DDBIndexSchema/ProjectionType"
        {
            $v = "ALL","INCLUDE","KEYS_ONLY"
            break
        }

        # Amazon.DynamoDBv2.ReturnConsumedCapacity
        {
            ($_ -eq "Get-DDBBatchItem/ReturnConsumedCapacity") -Or
            ($_ -eq "Get-DDBItem/ReturnConsumedCapacity") -Or
            ($_ -eq "Get-DDBItemTransactionally/ReturnConsumedCapacity") -Or
            ($_ -eq "Invoke-DDBDDBBatchExecuteStatement/ReturnConsumedCapacity") -Or
            ($_ -eq "Invoke-DDBDDBExecuteStatement/ReturnConsumedCapacity") -Or
            ($_ -eq "Invoke-DDBDDBExecuteTransaction/ReturnConsumedCapacity") -Or
            ($_ -eq "Invoke-DDBQuery/ReturnConsumedCapacity") -Or
            ($_ -eq "Invoke-DDBScan/ReturnConsumedCapacity") -Or
            ($_ -eq "Remove-DDBItem/ReturnConsumedCapacity") -Or
            ($_ -eq "Set-DDBBatchItem/ReturnConsumedCapacity") -Or
            ($_ -eq "Set-DDBItem/ReturnConsumedCapacity") -Or
            ($_ -eq "Update-DDBItem/ReturnConsumedCapacity") -Or
            ($_ -eq "Write-DDBItemTransactionally/ReturnConsumedCapacity")
        }
        {
            $v = "INDEXES","NONE","TOTAL"
            break
        }

        # Amazon.DynamoDBv2.ReturnItemCollectionMetrics
        {
            ($_ -eq "Remove-DDBItem/ReturnItemCollectionMetrics") -Or
            ($_ -eq "Set-DDBBatchItem/ReturnItemCollectionMetrics") -Or
            ($_ -eq "Set-DDBItem/ReturnItemCollectionMetrics") -Or
            ($_ -eq "Update-DDBItem/ReturnItemCollectionMetrics") -Or
            ($_ -eq "Write-DDBItemTransactionally/ReturnItemCollectionMetrics")
        }
        {
            $v = "NONE","SIZE"
            break
        }

        # Amazon.DynamoDBv2.ReturnValue
        {
            ($_ -eq "Remove-DDBItem/ReturnValues") -Or
            ($_ -eq "Set-DDBItem/ReturnValues") -Or
            ($_ -eq "Update-DDBItem/ReturnValues")
        }
        {
            $v = "ALL_NEW","ALL_OLD","NONE","UPDATED_NEW","UPDATED_OLD"
            break
        }

        # Amazon.DynamoDBv2.ReturnValuesOnConditionCheckFailure
        {
            ($_ -eq "Invoke-DDBDDBExecuteStatement/ReturnValuesOnConditionCheckFailure") -Or
            ($_ -eq "Remove-DDBItem/ReturnValuesOnConditionCheckFailure") -Or
            ($_ -eq "Set-DDBItem/ReturnValuesOnConditionCheckFailure") -Or
            ($_ -eq "Update-DDBItem/ReturnValuesOnConditionCheckFailure")
        }
        {
            $v = "ALL_OLD","NONE"
            break
        }

        # Amazon.DynamoDBv2.S3SseAlgorithm
        "Export-DDBTableToPointInTime/S3SseAlgorithm"
        {
            $v = "AES256","KMS"
            break
        }

        # Amazon.DynamoDBv2.ScalarAttributeType
        {
            ($_ -eq "Add-DDBIndexSchema/HashKeyDataType") -Or
            ($_ -eq "Add-DDBKeySchema/KeyDataType") -Or
            ($_ -eq "Add-DDBIndexSchema/RangeKeyDataType")
        }
        {
            $v = "B","N","S"
            break
        }

        # Amazon.DynamoDBv2.Select
        {
            ($_ -eq "Invoke-DDBQuery/Select") -Or
            ($_ -eq "Invoke-DDBScan/Select")
        }
        {
            $v = "ALL_ATTRIBUTES","ALL_PROJECTED_ATTRIBUTES","COUNT","SPECIFIC_ATTRIBUTES"
            break
        }

        # Amazon.DynamoDBv2.SSEType
        {
            ($_ -eq "Update-DDBTable/SSESpecification_SSEType") -Or
            ($_ -eq "Restore-DDBTableFromBackup/SSESpecificationOverride_SSEType") -Or
            ($_ -eq "Restore-DDBTableToPointInTime/SSESpecificationOverride_SSEType") -Or
            ($_ -eq "Import-DDBTable/TableCreationParameters_SSESpecification_SSEType")
        }
        {
            $v = "AES256","KMS"
            break
        }

        # Amazon.DynamoDBv2.StreamViewType
        "Update-DDBTable/StreamSpecification_StreamViewType"
        {
            $v = "KEYS_ONLY","NEW_AND_OLD_IMAGES","NEW_IMAGE","OLD_IMAGE"
            break
        }

        # Amazon.DynamoDBv2.TableClass
        "Update-DDBTable/TableClass"
        {
            $v = "STANDARD","STANDARD_INFREQUENT_ACCESS"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$DDB_map = @{
    "BackupType"=@("Get-DDBBackupList")
    "BillingMode"=@("New-DDBTable","Update-DDBTable")
    "BillingModeOverride"=@("Restore-DDBTableFromBackup","Restore-DDBTableToPointInTime")
    "ConditionalOperator"=@("Invoke-DDBQuery","Invoke-DDBScan","Remove-DDBItem","Set-DDBItem","Update-DDBItem")
    "ContributorInsightsAction"=@("Update-DDBContributorInsight")
    "ExportFormat"=@("Export-DDBTableToPointInTime")
    "GlobalTableBillingMode"=@("Update-DDBGlobalTableSetting")
    "HashKeyDataType"=@("Add-DDBIndexSchema")
    "InputCompressionType"=@("Import-DDBTable")
    "InputFormat"=@("Import-DDBTable")
    "KeyDataType"=@("Add-DDBKeySchema")
    "KeyType"=@("Add-DDBKeySchema")
    "ProjectionType"=@("Add-DDBIndexSchema")
    "RangeKeyDataType"=@("Add-DDBIndexSchema")
    "ReturnConsumedCapacity"=@("Get-DDBBatchItem","Get-DDBItem","Get-DDBItemTransactionally","Invoke-DDBDDBBatchExecuteStatement","Invoke-DDBDDBExecuteStatement","Invoke-DDBDDBExecuteTransaction","Invoke-DDBQuery","Invoke-DDBScan","Remove-DDBItem","Set-DDBBatchItem","Set-DDBItem","Update-DDBItem","Write-DDBItemTransactionally")
    "ReturnItemCollectionMetrics"=@("Remove-DDBItem","Set-DDBBatchItem","Set-DDBItem","Update-DDBItem","Write-DDBItemTransactionally")
    "ReturnValues"=@("Remove-DDBItem","Set-DDBItem","Update-DDBItem")
    "ReturnValuesOnConditionCheckFailure"=@("Invoke-DDBDDBExecuteStatement","Remove-DDBItem","Set-DDBItem","Update-DDBItem")
    "S3SseAlgorithm"=@("Export-DDBTableToPointInTime")
    "Select"=@("Invoke-DDBQuery","Invoke-DDBScan")
    "SSESpecification_SSEType"=@("Update-DDBTable")
    "SSESpecificationOverride_SSEType"=@("Restore-DDBTableFromBackup","Restore-DDBTableToPointInTime")
    "StreamSpecification_StreamViewType"=@("Update-DDBTable")
    "TableClass"=@("Update-DDBTable")
    "TableCreationParameters_BillingMode"=@("Import-DDBTable")
    "TableCreationParameters_SSESpecification_SSEType"=@("Import-DDBTable")
}

_awsArgumentCompleterRegistration $DDB_Completers $DDB_map

$DDB_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.DDB.$($commandName.Replace('-', ''))Cmdlet]"
    if (-not $cmdletType) {
        return
    }
    $awsCmdletAttribute = $cmdletType.GetCustomAttributes([Amazon.PowerShell.Common.AWSCmdletAttribute], $false)
    if (-not $awsCmdletAttribute) {
        return
    }
    $type = $awsCmdletAttribute.SelectReturnType
    if (-not $type) {
        return
    }

    $splitSelect = $wordToComplete -Split '\.'
    $splitSelect | Select-Object -First ($splitSelect.Length - 1) | ForEach-Object {
        $propertyName = $_
        $properties = $type.GetProperties(('Instance', 'Public', 'DeclaredOnly')) | Where-Object { $_.Name -ieq $propertyName }
        if ($properties.Length -ne 1) {
            break
        }
        $type = $properties.PropertyType
        $prefix += "$($properties.Name)."

        $asEnumerableType = $type.GetInterface('System.Collections.Generic.IEnumerable`1')
        if ($asEnumerableType -and $type -ne [System.String]) {
            $type =  $asEnumerableType.GetGenericArguments()[0]
        }
    }

    $v = @( '*' )
    $properties = $type.GetProperties(('Instance', 'Public', 'DeclaredOnly')).Name | Sort-Object
    if ($properties) {
        $v += ($properties | ForEach-Object { $prefix + $_ })
    }
    $parameters = $cmdletType.GetProperties(('Instance', 'Public')) | Where-Object { $_.GetCustomAttributes([System.Management.Automation.ParameterAttribute], $true) } | Select-Object -ExpandProperty Name | Sort-Object
    if ($parameters) {
        $v += ($parameters | ForEach-Object { "^$_" })
    }

    $v |
        Where-Object { $_ -match "^$([System.Text.RegularExpressions.Regex]::Escape($wordToComplete)).*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$DDB_SelectMap = @{
    "Select"=@("Invoke-DDBDDBBatchExecuteStatement",
               "Get-DDBBatchItem",
               "Set-DDBBatchItem",
               "New-DDBBackup",
               "New-DDBGlobalTable",
               "Remove-DDBBackup",
               "Remove-DDBItem",
               "Remove-DDBTable",
               "Get-DDBBackup",
               "Get-DDBContinuousBackup",
               "Get-DDBContributorInsight",
               "Get-DDBEndpoint",
               "Get-DDBExport",
               "Get-DDBGlobalTable",
               "Get-DDBGlobalTableSetting",
               "Get-DDBImport",
               "Get-DDBKinesisStreamingDestination",
               "Get-DDBProvisionLimit",
               "Get-DDBTable",
               "Get-DDBTableReplicaAutoScaling",
               "Get-DDBTimeToLive",
               "Disable-DDBKinesisStreamingDestination",
               "Enable-DDBKinesisStreamingDestination",
               "Invoke-DDBDDBExecuteStatement",
               "Invoke-DDBDDBExecuteTransaction",
               "Export-DDBTableToPointInTime",
               "Get-DDBItem",
               "Import-DDBTable",
               "Get-DDBBackupList",
               "Get-DDBContributorInsightList",
               "Get-DDBExportList",
               "Get-DDBGlobalTableList",
               "Get-DDBImportList",
               "Get-DDBTableList",
               "Get-DDBResourceTag",
               "Set-DDBItem",
               "Invoke-DDBQuery",
               "Restore-DDBTableFromBackup",
               "Restore-DDBTableToPointInTime",
               "Invoke-DDBScan",
               "Add-DDBResourceTag",
               "Get-DDBItemTransactionally",
               "Write-DDBItemTransactionally",
               "Remove-DDBResourceTag",
               "Update-DDBContinuousBackup",
               "Update-DDBContributorInsight",
               "Update-DDBGlobalTable",
               "Update-DDBGlobalTableSetting",
               "Update-DDBItem",
               "Update-DDBTable",
               "Update-DDBTableReplicaAutoScaling",
               "Update-DDBTimeToLive",
               "Add-DDBIndexSchema",
               "Add-DDBKeySchema",
               "ConvertFrom-DDBItem",
               "ConvertTo-DDBItem",
               "New-DDBTable",
               "New-DDBTableSchema")
}

_awsArgumentCompleterRegistration $DDB_SelectCompleters $DDB_SelectMap
# Argument completions for service Amazon DynamoDB


$DDB_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.DynamoDBv2.BillingMode
        "New-DDBTable/BillingMode"
        {
            $v = "PAY_PER_REQUEST","PROVISIONED"
            break
        }

        # Amazon.DynamoDBv2.KeyType
        "Add-DDBKeySchema/KeyType"
        {
            $v = "HASH","RANGE"
            break
        }

        # Amazon.DynamoDBv2.ProjectionType
        "Add-DDBIndexSchema/ProjectionType"
        {
            $v = "ALL","INCLUDE","KEYS_ONLY"
            break
        }

        # Amazon.DynamoDBv2.ScalarAttributeType
        {
            ($_ -eq "Add-DDBIndexSchema/HashKeyDataType") -Or
            ($_ -eq "Add-DDBKeySchema/KeyDataType") -Or
            ($_ -eq "Add-DDBIndexSchema/RangeKeyDataType")
        }
        {
            $v = "B","N","S"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$DDB_map = @{
    "BillingMode"=@("New-DDBTable")
    "HashKeyDataType"=@("Add-DDBIndexSchema")
    "KeyDataType"=@("Add-DDBKeySchema")
    "KeyType"=@("Add-DDBKeySchema")
    "ProjectionType"=@("Add-DDBIndexSchema")
    "RangeKeyDataType"=@("Add-DDBIndexSchema")
}

_awsArgumentCompleterRegistration $DDB_Completers $DDB_map

$DDB_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.DDB.$($commandName.Replace('-', ''))Cmdlet]"
    if (-not $cmdletType) {
        return
    }
    $awsCmdletAttribute = $cmdletType.GetCustomAttributes([Amazon.PowerShell.Common.AWSCmdletAttribute], $false)
    if (-not $awsCmdletAttribute) {
        return
    }
    $type = $awsCmdletAttribute.SelectReturnType
    if (-not $type) {
        return
    }

    $splitSelect = $wordToComplete -Split '\.'
    $splitSelect | Select-Object -First ($splitSelect.Length - 1) | ForEach-Object {
        $propertyName = $_
        $properties = $type.GetProperties(('Instance', 'Public', 'DeclaredOnly')) | Where-Object { $_.Name -ieq $propertyName }
        if ($properties.Length -ne 1) {
            break
        }
        $type = $properties.PropertyType
        $prefix += "$($properties.Name)."

        $asEnumerableType = $type.GetInterface('System.Collections.Generic.IEnumerable`1')
        if ($asEnumerableType -and $type -ne [System.String]) {
            $type =  $asEnumerableType.GetGenericArguments()[0]
        }
    }

    $v = @( '*' )
    $properties = $type.GetProperties(('Instance', 'Public', 'DeclaredOnly')).Name | Sort-Object
    if ($properties) {
        $v += ($properties | ForEach-Object { $prefix + $_ })
    }
    $parameters = $cmdletType.GetProperties(('Instance', 'Public')) | Where-Object { $_.GetCustomAttributes([System.Management.Automation.ParameterAttribute], $true) } | Select-Object -ExpandProperty Name | Sort-Object
    if ($parameters) {
        $v += ($parameters | ForEach-Object { "^$_" })
    }

    $v |
        Where-Object { $_ -match "^$([System.Text.RegularExpressions.Regex]::Escape($wordToComplete)).*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$DDB_SelectMap = @{
    "Select"=@("Get-DDBStream",
               "Get-DDBStreamList",
               "Add-DDBIndexSchema",
               "Add-DDBKeySchema",
               "ConvertFrom-DDBItem",
               "ConvertTo-DDBItem",
               "New-DDBTable",
               "New-DDBTableSchema")
}

_awsArgumentCompleterRegistration $DDB_SelectCompleters $DDB_SelectMap


# SIG # Begin signature block
# MIIusAYJKoZIhvcNAQcCoIIuoTCCLp0CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCp4+5k1lXOmQG3
# pybBis4TlMoh4YtMAMM3tJNEm83syqCCFB0wggXAMIIEqKADAgECAhAP0bvKeWvX
# +N1MguEKmpYxMA0GCSqGSIb3DQEBCwUAMGwxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
# EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xKzApBgNV
# BAMTIkRpZ2lDZXJ0IEhpZ2ggQXNzdXJhbmNlIEVWIFJvb3QgQ0EwHhcNMjIwMTEz
# MDAwMDAwWhcNMzExMTA5MjM1OTU5WjBiMQswCQYDVQQGEwJVUzEVMBMGA1UEChMM
# RGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMSEwHwYDVQQD
# ExhEaWdpQ2VydCBUcnVzdGVkIFJvb3QgRzQwggIiMA0GCSqGSIb3DQEBAQUAA4IC
# DwAwggIKAoICAQC/5pBzaN675F1KPDAiMGkz7MKnJS7JIT3yithZwuEppz1Yq3aa
# za57G4QNxDAf8xukOBbrVsaXbR2rsnnyyhHS5F/WBTxSD1Ifxp4VpX6+n6lXFllV
# cq9ok3DCsrp1mWpzMpTREEQQLt+C8weE5nQ7bXHiLQwb7iDVySAdYyktzuxeTsiT
# +CFhmzTrBcZe7FsavOvJz82sNEBfsXpm7nfISKhmV1efVFiODCu3T6cw2Vbuyntd
# 463JT17lNecxy9qTXtyOj4DatpGYQJB5w3jHtrHEtWoYOAMQjdjUN6QuBX2I9YI+
# EJFwq1WCQTLX2wRzKm6RAXwhTNS8rhsDdV14Ztk6MUSaM0C/CNdaSaTC5qmgZ92k
# J7yhTzm1EVgX9yRcRo9k98FpiHaYdj1ZXUJ2h4mXaXpI8OCiEhtmmnTK3kse5w5j
# rubU75KSOp493ADkRSWJtppEGSt+wJS00mFt6zPZxd9LBADMfRyVw4/3IbKyEbe7
# f/LVjHAsQWCqsWMYRJUadmJ+9oCw++hkpjPRiQfhvbfmQ6QYuKZ3AeEPlAwhHbJU
# KSWJbOUOUlFHdL4mrLZBdd56rF+NP8m800ERElvlEFDrMcXKchYiCd98THU/Y+wh
# X8QgUWtvsauGi0/C1kVfnSD8oR7FwI+isX4KJpn15GkvmB0t9dmpsh3lGwIDAQAB
# o4IBZjCCAWIwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU7NfjgtJxXWRM3y5n
# P+e6mK4cD08wHwYDVR0jBBgwFoAUsT7DaQP4v0cB1JgmGggC72NkK8MwDgYDVR0P
# AQH/BAQDAgGGMBMGA1UdJQQMMAoGCCsGAQUFBwMDMH8GCCsGAQUFBwEBBHMwcTAk
# BggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEkGCCsGAQUFBzAC
# hj1odHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRIaWdoQXNzdXJh
# bmNlRVZSb290Q0EuY3J0MEsGA1UdHwREMEIwQKA+oDyGOmh0dHA6Ly9jcmwzLmRp
# Z2ljZXJ0LmNvbS9EaWdpQ2VydEhpZ2hBc3N1cmFuY2VFVlJvb3RDQS5jcmwwHAYD
# VR0gBBUwEzAHBgVngQwBAzAIBgZngQwBBAEwDQYJKoZIhvcNAQELBQADggEBAEHx
# qRH0DxNHecllao3A7pgEpMbjDPKisedfYk/ak1k2zfIe4R7sD+EbP5HU5A/C5pg0
# /xkPZigfT2IxpCrhKhO61z7H0ZL+q93fqpgzRh9Onr3g7QdG64AupP2uU7SkwaT1
# IY1rzAGt9Rnu15ClMlIr28xzDxj4+87eg3Gn77tRWwR2L62t0+od/P1Tk+WMieNg
# GbngLyOOLFxJy34riDkruQZhiPOuAnZ2dMFkkbiJUZflhX0901emWG4f7vtpYeJa
# 3Cgh6GO6Ps9W7Zrk9wXqyvPsEt84zdp7PiuTUy9cUQBY3pBIowrHC/Q7bVUx8ALM
# R3eWUaNetbxcyEMRoacwggawMIIEmKADAgECAhAIrUCyYNKcTJ9ezam9k67ZMA0G
# CSqGSIb3DQEBDAUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJ
# bmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0
# IFRydXN0ZWQgUm9vdCBHNDAeFw0yMTA0MjkwMDAwMDBaFw0zNjA0MjgyMzU5NTla
# MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjFBMD8GA1UE
# AxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcgUlNBNDA5NiBTSEEz
# ODQgMjAyMSBDQTEwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDVtC9C
# 0CiteLdd1TlZG7GIQvUzjOs9gZdwxbvEhSYwn6SOaNhc9es0JAfhS0/TeEP0F9ce
# 2vnS1WcaUk8OoVf8iJnBkcyBAz5NcCRks43iCH00fUyAVxJrQ5qZ8sU7H/Lvy0da
# E6ZMswEgJfMQ04uy+wjwiuCdCcBlp/qYgEk1hz1RGeiQIXhFLqGfLOEYwhrMxe6T
# SXBCMo/7xuoc82VokaJNTIIRSFJo3hC9FFdd6BgTZcV/sk+FLEikVoQ11vkunKoA
# FdE3/hoGlMJ8yOobMubKwvSnowMOdKWvObarYBLj6Na59zHh3K3kGKDYwSNHR7Oh
# D26jq22YBoMbt2pnLdK9RBqSEIGPsDsJ18ebMlrC/2pgVItJwZPt4bRc4G/rJvmM
# 1bL5OBDm6s6R9b7T+2+TYTRcvJNFKIM2KmYoX7BzzosmJQayg9Rc9hUZTO1i4F4z
# 8ujo7AqnsAMrkbI2eb73rQgedaZlzLvjSFDzd5Ea/ttQokbIYViY9XwCFjyDKK05
# huzUtw1T0PhH5nUwjewwk3YUpltLXXRhTT8SkXbev1jLchApQfDVxW0mdmgRQRNY
# mtwmKwH0iU1Z23jPgUo+QEdfyYFQc4UQIyFZYIpkVMHMIRroOBl8ZhzNeDhFMJlP
# /2NPTLuqDQhTQXxYPUez+rbsjDIJAsxsPAxWEQIDAQABo4IBWTCCAVUwEgYDVR0T
# AQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUaDfg67Y7+F8Rhvv+YXsIiGX0TkIwHwYD
# VR0jBBgwFoAU7NfjgtJxXWRM3y5nP+e6mK4cD08wDgYDVR0PAQH/BAQDAgGGMBMG
# A1UdJQQMMAoGCCsGAQUFBwMDMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYY
# aHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2Fj
# ZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNydDBDBgNV
# HR8EPDA6MDigNqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRU
# cnVzdGVkUm9vdEc0LmNybDAcBgNVHSAEFTATMAcGBWeBDAEDMAgGBmeBDAEEATAN
# BgkqhkiG9w0BAQwFAAOCAgEAOiNEPY0Idu6PvDqZ01bgAhql+Eg08yy25nRm95Ry
# sQDKr2wwJxMSnpBEn0v9nqN8JtU3vDpdSG2V1T9J9Ce7FoFFUP2cvbaF4HZ+N3HL
# IvdaqpDP9ZNq4+sg0dVQeYiaiorBtr2hSBh+3NiAGhEZGM1hmYFW9snjdufE5Btf
# Q/g+lP92OT2e1JnPSt0o618moZVYSNUa/tcnP/2Q0XaG3RywYFzzDaju4ImhvTnh
# OE7abrs2nfvlIVNaw8rpavGiPttDuDPITzgUkpn13c5UbdldAhQfQDN8A+KVssIh
# dXNSy0bYxDQcoqVLjc1vdjcshT8azibpGL6QB7BDf5WIIIJw8MzK7/0pNVwfiThV
# 9zeKiwmhywvpMRr/LhlcOXHhvpynCgbWJme3kuZOX956rEnPLqR0kq3bPKSchh/j
# wVYbKyP/j7XqiHtwa+aguv06P0WmxOgWkVKLQcBIhEuWTatEQOON8BUozu3xGFYH
# Ki8QxAwIZDwzj64ojDzLj4gLDb879M4ee47vtevLt/B3E+bnKD+sEq6lLyJsQfmC
# XBVmzGwOysWGw/YmMwwHS6DTBwJqakAwSEs0qFEgu60bhQjiWQ1tygVQK+pKHJ6l
# /aCnHwZ05/LWUpD9r4VIIflXO7ScA+2GRfS0YW6/aOImYIbqyK+p/pQd52MbOoZW
# eE4wggehMIIFiaADAgECAhAFSBlU0HcFPwxIHXZupwTGMA0GCSqGSIb3DQEBCwUA
# MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjFBMD8GA1UE
# AxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcgUlNBNDA5NiBTSEEz
# ODQgMjAyMSBDQTEwHhcNMjIxMTA1MDAwMDAwWhcNMjMxMTA4MjM1OTU5WjCB9jET
# MBEGCysGAQQBgjc8AgEDEwJVUzEZMBcGCysGAQQBgjc8AgECEwhEZWxhd2FyZTEd
# MBsGA1UEDwwUUHJpdmF0ZSBPcmdhbml6YXRpb24xEDAOBgNVBAUTBzQxNTI5NTQx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdTZWF0
# dGxlMSIwIAYDVQQKExlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRcwFQYDVQQL
# Ew5TREtzIGFuZCBUb29sczEiMCAGA1UEAxMZQW1hem9uIFdlYiBTZXJ2aWNlcywg
# SW5jLjCCAaIwDQYJKoZIhvcNAQEBBQADggGPADCCAYoCggGBAK9vDmDGSnY2lXZ9
# nlp41y3ArsYpOy2oaM0TjFdorTVku7toW9HYNr41iEQIS5edE5DJ4mjCE9PSiinq
# eJArM66qMPhQJyl5NrumlY3jVy3EZSSlKt9H9+aCnF/7ku1CjHZ7d8+B6Pqw4RfB
# S8PZ7dH85hih3VIPzpd8r/5pIBO2mw+MaPLhOFycmloGX4l/6RO41FYYFVV4klpc
# bmU+5meN/7mhGtdBPGte7G+4IVF2v8ZxRiCIP+MvSC8LCJYXUNWt4LQ2nXPmbA4U
# lb0MlJA1IxkXZ2uY6Hi62MOf4JQvnEjFO5YKS/ie6fRZ/hnjGCyfHA/2cLDJaJv9
# JleODk1W/0D2pOOx9yQyvv1UM6C9I/tvqEc98xzWQALRviag5ic1DPJtXzbOXX3K
# zhOsUInCj0xgVM+nBPXy83GyPx/p8tbcFQMryG2dJ7sKNWheNwB96dMAumysQhcH
# Gk8dGH6WUHTR2JcqpueGAU+tQo4ZWJCcsvV3GlZe9kDjs1dTuQIDAQABo4ICNTCC
# AjEwHwYDVR0jBBgwFoAUaDfg67Y7+F8Rhvv+YXsIiGX0TkIwHQYDVR0OBBYEFFvU
# mCXQMox/7R+rB702j2AeTZleMC4GA1UdEQQnMCWgIwYIKwYBBQUHCAOgFzAVDBNV
# Uy1ERUxBV0FSRS00MTUyOTU0MA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggr
# BgEFBQcDAzCBtQYDVR0fBIGtMIGqMFOgUaBPhk1odHRwOi8vY3JsMy5kaWdpY2Vy
# dC5jb20vRGlnaUNlcnRUcnVzdGVkRzRDb2RlU2lnbmluZ1JTQTQwOTZTSEEzODQy
# MDIxQ0ExLmNybDBToFGgT4ZNaHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lD
# ZXJ0VHJ1c3RlZEc0Q29kZVNpZ25pbmdSU0E0MDk2U0hBMzg0MjAyMUNBMS5jcmww
# PQYDVR0gBDYwNDAyBgVngQwBAzApMCcGCCsGAQUFBwIBFhtodHRwOi8vd3d3LmRp
# Z2ljZXJ0LmNvbS9DUFMwgZQGCCsGAQUFBwEBBIGHMIGEMCQGCCsGAQUFBzABhhho
# dHRwOi8vb2NzcC5kaWdpY2VydC5jb20wXAYIKwYBBQUHMAKGUGh0dHA6Ly9jYWNl
# cnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRHNENvZGVTaWduaW5nUlNB
# NDA5NlNIQTM4NDIwMjFDQTEuY3J0MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQEL
# BQADggIBAA7jihh1yfeO45MthV2/e0v5qB8DrSM4knVgPLryRTp6fQuPxjNAbD6t
# k++ZW3zUzIQIak7S4pMOkRqucyooSxNhbVdKsWzCEHYtv1Yt0g/E6n+8ghZhW4b8
# m9kMmK/K9thjKZ6EQBaPLY2a5VV7dH8EYcu4Y8THocdpFlAgyu06oUmAnq7Ue/Q+
# mQls5A4mDS5w1NO9gmVz9DtytAnhY8Tjk4cpfSP86ZSckWutesy3WpTwVG6e0BOZ
# tRFmC14mT7cb02ZGBuz8lIbK/KHCNptEVA18OJxGrRat/k4GHxmynfioKN5Ji+xd
# H+nMkpbeLJBnm1Nx9OztEtnEX9zrv2pzu6axZwRYOo8EBYZs4sG/MQk+tg1ST4or
# 5LBNTMVG3L2o5R1b4VjybSASS3DSnOdQbOcjtCZS73ShQHffObCqqlJVB3nvgknK
# 0aq64XVQElgbTbZBu1aL83VtKkBKAlu1e1euPrJISYgJhKDBlvGT/Fs9WoDUWOzP
# R2FDxa8KyXsfnrkRXEiDxOTHa5rNtKwjPcn2Hgm8bWEBzlPuegGqpHfE36elwEJC
# 9aIA9m5XGvfuKshHs54jNuVU4OPhQJIk0Hux5zJWnezYdM+q0AhkH2wHqt0ogeD4
# U+sHoe1KClFclVFNKrpdlO2BSIxlQiInW0UL06RqqwcpLHGtFqnxMYIZ6TCCGeUC
# AQEwfTBpMQswCQYDVQQGEwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xQTA/
# BgNVBAMTOERpZ2lDZXJ0IFRydXN0ZWQgRzQgQ29kZSBTaWduaW5nIFJTQTQwOTYg
# U0hBMzg0IDIwMjEgQ0ExAhAFSBlU0HcFPwxIHXZupwTGMA0GCWCGSAFlAwQCAQUA
# oHwwEAYKKwYBBAGCNwIBDDECMAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEILoN
# RPjZSBYl+sjJX0dwp9RnzWOmRJE7jav8VI25vmNSMA0GCSqGSIb3DQEBAQUABIIB
# gHUqzHA/3/7ciZfyUWP+o7lGz/vWjcMt8MlVfp5tBWKJmPjHJZ0vt8UHQqrYm2uK
# 16cERopI45dgoTrffT2GVO0GaNGSEi02l7Y0VTtEi/89GRsOXjQ6+qTJd8dL3/Ao
# eSf6tXH+1+O/iza2zdzqSq9TpgX9+eDzl6nan6gq7DBX2vDsrNjTSGGWkt40YSLj
# DnwQzY1cwI0OEtOp7IntHaIFn07mNhI5fS1sjElqA9q4U0zp8lqFClGJwDl68t3j
# 7N8sM7W2t51aGxTlTMIxDNtNxlchqjNTTS0Vh1/14nfyTujCwlx2MILHPJaRCjRD
# hxSxeGWNjny0EJYFnhzEf4OeLR/ubGSHK9AHlmXMakDBsAys3gSYwxfVuMiClXun
# +D7Dr6NJq5YR+16vZp7Ue2rybrlTYLNxQ6iDdv3xNR1720lUOIjUHoX0ofMqRljU
# a0zrNz8sleeh3AO1YOGlzSw4qGP8ZW7giyO/pluerK1EH2Qm1wwaBG5mYJKbRmda
# r6GCFz8wghc7BgorBgEEAYI3AwMBMYIXKzCCFycGCSqGSIb3DQEHAqCCFxgwghcU
# AgEDMQ8wDQYJYIZIAWUDBAIBBQAwdwYLKoZIhvcNAQkQAQSgaARmMGQCAQEGCWCG
# SAGG/WwHATAxMA0GCWCGSAFlAwQCAQUABCBj2Hazkpia80MZCiPjhmMigL5qGL+2
# xmERwZfXSh3YmQIQa3/mebLOxiGRb9/StjmSUBgPMjAyMzA5MTUyMjMzNTlaoIIT
# CTCCBsIwggSqoAMCAQICEAVEr/OUnQg5pr/bP1/lYRYwDQYJKoZIhvcNAQELBQAw
# YzELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMTswOQYDVQQD
# EzJEaWdpQ2VydCBUcnVzdGVkIEc0IFJTQTQwOTYgU0hBMjU2IFRpbWVTdGFtcGlu
# ZyBDQTAeFw0yMzA3MTQwMDAwMDBaFw0zNDEwMTMyMzU5NTlaMEgxCzAJBgNVBAYT
# AlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjEgMB4GA1UEAxMXRGlnaUNlcnQg
# VGltZXN0YW1wIDIwMjMwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCj
# U0WHHYOOW6w+VLMj4M+f1+XS512hDgncL0ijl3o7Kpxn3GIVWMGpkxGnzaqyat0Q
# KYoeYmNp01icNXG/OpfrlFCPHCDqx5o7L5Zm42nnaf5bw9YrIBzBl5S0pVCB8s/L
# B6YwaMqDQtr8fwkklKSCGtpqutg7yl3eGRiF+0XqDWFsnf5xXsQGmjzwxS55Dxtm
# UuPI1j5f2kPThPXQx/ZILV5FdZZ1/t0QoRuDwbjmUpW1R9d4KTlr4HhZl+NEK0rV
# lc7vCBfqgmRN/yPjyobutKQhZHDr1eWg2mOzLukF7qr2JPUdvJscsrdf3/Dudn0x
# mWVHVZ1KJC+sK5e+n+T9e3M+Mu5SNPvUu+vUoCw0m+PebmQZBzcBkQ8ctVHNqkxm
# g4hoYru8QRt4GW3k2Q/gWEH72LEs4VGvtK0VBhTqYggT02kefGRNnQ/fztFejKqr
# UBXJs8q818Q7aESjpTtC/XN97t0K/3k0EH6mXApYTAA+hWl1x4Nk1nXNjxJ2VqUk
# +tfEayG66B80mC866msBsPf7Kobse1I4qZgJoXGybHGvPrhvltXhEBP+YUcKjP7w
# tsfVx95sJPC/QoLKoHE9nJKTBLRpcCcNT7e1NtHJXwikcKPsCvERLmTgyyIryvEo
# EyFJUX4GZtM7vvrrkTjYUQfKlLfiUKHzOtOKg8tAewIDAQABo4IBizCCAYcwDgYD
# VR0PAQH/BAQDAgeAMAwGA1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYBBQUH
# AwgwIAYDVR0gBBkwFzAIBgZngQwBBAIwCwYJYIZIAYb9bAcBMB8GA1UdIwQYMBaA
# FLoW2W1NhS9zKXaaL3WMaiCPnshvMB0GA1UdDgQWBBSltu8T5+/N0GSh1VapZTGj
# 3tXjSTBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsMy5kaWdpY2VydC5jb20v
# RGlnaUNlcnRUcnVzdGVkRzRSU0E0MDk2U0hBMjU2VGltZVN0YW1waW5nQ0EuY3Js
# MIGQBggrBgEFBQcBAQSBgzCBgDAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGln
# aWNlcnQuY29tMFgGCCsGAQUFBzAChkxodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5j
# b20vRGlnaUNlcnRUcnVzdGVkRzRSU0E0MDk2U0hBMjU2VGltZVN0YW1waW5nQ0Eu
# Y3J0MA0GCSqGSIb3DQEBCwUAA4ICAQCBGtbeoKm1mBe8cI1PijxonNgl/8ss5M3q
# XSKS7IwiAqm4z4Co2efjxe0mgopxLxjdTrbebNfhYJwr7e09SI64a7p8Xb3CYTdo
# SXej65CqEtcnhfOOHpLawkA4n13IoC4leCWdKgV6hCmYtld5j9smViuw86e9NwzY
# mHZPVrlSwradOKmB521BXIxp0bkrxMZ7z5z6eOKTGnaiaXXTUOREEr4gDZ6pRND4
# 5Ul3CFohxbTPmJUaVLq5vMFpGbrPFvKDNzRusEEm3d5al08zjdSNd311RaGlWCZq
# A0Xe2VC1UIyvVr1MxeFGxSjTredDAHDezJieGYkD6tSRN+9NUvPJYCHEVkft2hFL
# jDLDiOZY4rbbPvlfsELWj+MXkdGqwFXjhr+sJyxB0JozSqg21Llyln6XeThIX8rC
# 3D0y33XWNmdaifj2p8flTzU8AL2+nCpseQHc2kTmOt44OwdeOVj0fHMxVaCAEcsU
# DH6uvP6k63llqmjWIso765qCNVcoFstp8jKastLYOrixRoZruhf9xHdsFWyuq69z
# OuhJRrfVf8y2OMDY7Bz1tqG4QyzfTkx9HmhwwHcK1ALgXGC7KP845VJa1qwXIiNO
# 9OzTF/tQa/8Hdx9xl0RBybhG02wyfFgvZ0dl5Rtztpn5aywGRu9BHvDwX+Db2a2Q
# gESvgBBBijCCBq4wggSWoAMCAQICEAc2N7ckVHzYR6z9KGYqXlswDQYJKoZIhvcN
# AQELBQAwYjELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcG
# A1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEhMB8GA1UEAxMYRGlnaUNlcnQgVHJ1c3Rl
# ZCBSb290IEc0MB4XDTIyMDMyMzAwMDAwMFoXDTM3MDMyMjIzNTk1OVowYzELMAkG
# A1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMTswOQYDVQQDEzJEaWdp
# Q2VydCBUcnVzdGVkIEc0IFJTQTQwOTYgU0hBMjU2IFRpbWVTdGFtcGluZyBDQTCC
# AiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMaGNQZJs8E9cklRVcclA8Ty
# kTepl1Gh1tKD0Z5Mom2gsMyD+Vr2EaFEFUJfpIjzaPp985yJC3+dH54PMx9QEwsm
# c5Zt+FeoAn39Q7SE2hHxc7Gz7iuAhIoiGN/r2j3EF3+rGSs+QtxnjupRPfDWVtTn
# KC3r07G1decfBmWNlCnT2exp39mQh0YAe9tEQYncfGpXevA3eZ9drMvohGS0UvJ2
# R/dhgxndX7RUCyFobjchu0CsX7LeSn3O9TkSZ+8OpWNs5KbFHc02DVzV5huowWR0
# QKfAcsW6Th+xtVhNef7Xj3OTrCw54qVI1vCwMROpVymWJy71h6aPTnYVVSZwmCZ/
# oBpHIEPjQ2OAe3VuJyWQmDo4EbP29p7mO1vsgd4iFNmCKseSv6De4z6ic/rnH1ps
# lPJSlRErWHRAKKtzQ87fSqEcazjFKfPKqpZzQmiftkaznTqj1QPgv/CiPMpC3BhI
# fxQ0z9JMq++bPf4OuGQq+nUoJEHtQr8FnGZJUlD0UfM2SU2LINIsVzV5K6jzRWC8
# I41Y99xh3pP+OcD5sjClTNfpmEpYPtMDiP6zj9NeS3YSUZPJjAw7W4oiqMEmCPkU
# EBIDfV8ju2TjY+Cm4T72wnSyPx4JduyrXUZ14mCjWAkBKAAOhFTuzuldyF4wEr1G
# nrXTdrnSDmuZDNIztM2xAgMBAAGjggFdMIIBWTASBgNVHRMBAf8ECDAGAQH/AgEA
# MB0GA1UdDgQWBBS6FtltTYUvcyl2mi91jGogj57IbzAfBgNVHSMEGDAWgBTs1+OC
# 0nFdZEzfLmc/57qYrhwPTzAOBgNVHQ8BAf8EBAMCAYYwEwYDVR0lBAwwCgYIKwYB
# BQUHAwgwdwYIKwYBBQUHAQEEazBpMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5k
# aWdpY2VydC5jb20wQQYIKwYBBQUHMAKGNWh0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0
# LmNvbS9EaWdpQ2VydFRydXN0ZWRSb290RzQuY3J0MEMGA1UdHwQ8MDowOKA2oDSG
# Mmh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRSb290RzQu
# Y3JsMCAGA1UdIAQZMBcwCAYGZ4EMAQQCMAsGCWCGSAGG/WwHATANBgkqhkiG9w0B
# AQsFAAOCAgEAfVmOwJO2b5ipRCIBfmbW2CFC4bAYLhBNE88wU86/GPvHUF3iSyn7
# cIoNqilp/GnBzx0H6T5gyNgL5Vxb122H+oQgJTQxZ822EpZvxFBMYh0MCIKoFr2p
# Vs8Vc40BIiXOlWk/R3f7cnQU1/+rT4osequFzUNf7WC2qk+RZp4snuCKrOX9jLxk
# Jodskr2dfNBwCnzvqLx1T7pa96kQsl3p/yhUifDVinF2ZdrM8HKjI/rAJ4JErpkn
# G6skHibBt94q6/aesXmZgaNWhqsKRcnfxI2g55j7+6adcq/Ex8HBanHZxhOACcS2
# n82HhyS7T6NJuXdmkfFynOlLAlKnN36TU6w7HQhJD5TNOXrd/yVjmScsPT9rp/Fm
# w0HNT7ZAmyEhQNC3EyTN3B14OuSereU0cZLXJmvkOHOrpgFPvT87eK1MrfvElXvt
# Cl8zOYdBeHo46Zzh3SP9HSjTx/no8Zhf+yvYfvJGnXUsHicsJttvFXseGYs2uJPU
# 5vIXmVnKcPA3v5gA3yAWTyf7YGcWoWa63VXAOimGsJigK+2VQbc61RWYMbRiCQ8K
# vYHZE/6/pNHzV9m8BPqC3jLfBInwAM1dwvnQI38AC+R2AibZ8GV2QqYphwlHK+Z/
# GqSFD/yYlvZVVCsfgPrA8g4r5db7qS9EFUrnEw4d2zc4GqEr9u3WfPwwggWNMIIE
# daADAgECAhAOmxiO+dAt5+/bUOIIQBhaMA0GCSqGSIb3DQEBDAUAMGUxCzAJBgNV
# BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
# Y2VydC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAe
# Fw0yMjA4MDEwMDAwMDBaFw0zMTExMDkyMzU5NTlaMGIxCzAJBgNVBAYTAlVTMRUw
# EwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20x
# ITAfBgNVBAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDCCAiIwDQYJKoZIhvcN
# AQEBBQADggIPADCCAgoCggIBAL/mkHNo3rvkXUo8MCIwaTPswqclLskhPfKK2FnC
# 4SmnPVirdprNrnsbhA3EMB/zG6Q4FutWxpdtHauyefLKEdLkX9YFPFIPUh/GnhWl
# fr6fqVcWWVVyr2iTcMKyunWZanMylNEQRBAu34LzB4TmdDttceItDBvuINXJIB1j
# KS3O7F5OyJP4IWGbNOsFxl7sWxq868nPzaw0QF+xembud8hIqGZXV59UWI4MK7dP
# pzDZVu7Ke13jrclPXuU15zHL2pNe3I6PgNq2kZhAkHnDeMe2scS1ahg4AxCN2NQ3
# pC4FfYj1gj4QkXCrVYJBMtfbBHMqbpEBfCFM1LyuGwN1XXhm2ToxRJozQL8I11pJ
# pMLmqaBn3aQnvKFPObURWBf3JFxGj2T3wWmIdph2PVldQnaHiZdpekjw4KISG2aa
# dMreSx7nDmOu5tTvkpI6nj3cAORFJYm2mkQZK37AlLTSYW3rM9nF30sEAMx9HJXD
# j/chsrIRt7t/8tWMcCxBYKqxYxhElRp2Yn72gLD76GSmM9GJB+G9t+ZDpBi4pncB
# 4Q+UDCEdslQpJYls5Q5SUUd0viastkF13nqsX40/ybzTQRESW+UQUOsxxcpyFiIJ
# 33xMdT9j7CFfxCBRa2+xq4aLT8LWRV+dIPyhHsXAj6KxfgommfXkaS+YHS312amy
# HeUbAgMBAAGjggE6MIIBNjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTs1+OC
# 0nFdZEzfLmc/57qYrhwPTzAfBgNVHSMEGDAWgBRF66Kv9JLLgjEtUYunpyGd823I
# DzAOBgNVHQ8BAf8EBAMCAYYweQYIKwYBBQUHAQEEbTBrMCQGCCsGAQUFBzABhhho
# dHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKGN2h0dHA6Ly9jYWNl
# cnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcnQwRQYD
# VR0fBD4wPDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0
# QXNzdXJlZElEUm9vdENBLmNybDARBgNVHSAECjAIMAYGBFUdIAAwDQYJKoZIhvcN
# AQEMBQADggEBAHCgv0NcVec4X6CjdBs9thbX979XB72arKGHLOyFXqkauyL4hxpp
# VCLtpIh3bb0aFPQTSnovLbc47/T/gLn4offyct4kvFIDyE7QKt76LVbP+fT3rDB6
# mouyXtTP0UNEm0Mh65ZyoUi0mcudT6cGAxN3J0TU53/oWajwvy8LpunyNDzs9wPH
# h6jSTEAZNUZqaVSwuKFWjuyk1T3osdz9HNj0d1pcVIxv76FQPfx2CWiEn2/K2yCN
# NWAcAgPLILCsWKAOQGPFmCLBsln1VWvPJ6tsds5vIy30fnFqI2si/xK4VC0nftg6
# 2fC2h5b9W9FcrBjDTZ9ztwGpn1eqXijiuZQxggN2MIIDcgIBATB3MGMxCzAJBgNV
# BAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjE7MDkGA1UEAxMyRGlnaUNl
# cnQgVHJ1c3RlZCBHNCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0ECEAVE
# r/OUnQg5pr/bP1/lYRYwDQYJYIZIAWUDBAIBBQCggdEwGgYJKoZIhvcNAQkDMQ0G
# CyqGSIb3DQEJEAEEMBwGCSqGSIb3DQEJBTEPFw0yMzA5MTUyMjMzNTlaMCsGCyqG
# SIb3DQEJEAIMMRwwGjAYMBYEFGbwKzLCwskPgl3OqorJxk8ZnM9AMC8GCSqGSIb3
# DQEJBDEiBCD43bNHFIBVeY8JPgvH2t6oUbZVChjqWfzqZsIu4mtbLzA3BgsqhkiG
# 9w0BCRACLzEoMCYwJDAiBCDS9uRt7XQizNHUQFdoQTZvgoraVZquMxavTRqa1Ax4
# KDANBgkqhkiG9w0BAQEFAASCAgBQtzp/PcVlvkl4r0137SGIkq53I5dTVzlMd5Si
# ThZoNK6dPZOp+it8tvdY3FbikfFkvy55O+J3kxLuywhnKVDMwRfTxmrJggmN8H7Z
# 7FYFB0mpxT9VJvUh2vW5kyyTM8ufoJP8e5kUO7E752j0KxHJSgPgxkshNsFIgAEo
# 1cQSSpWiQ27SJWMZ8kdw7jJf/G1KwjinUbi9i5mouIQQjYsUoKOmVxRH0EUG7+jQ
# EQg4I/4iDsd8qJJeuOwrHIV6y3t5hOzngBmn0Q/qVRK4oEIdhsMZwg5i1YMOkvSo
# OKP7Hs+rMHyOi/lcNalOPB8DlWsyydpsEaCMhP2K+zLhzULAySeFtmJegg51m2ou
# TtqxpsYXNxQJto/Ks/mZ95fwSf4bIJvVKxv2AlHL4mEJ+o7+4zT0YgmKWz8UGM6m
# lFKXDXfNWWnRIkVDg3bjVk0sb6Su7qzJgU7A9AW0hhk3JfLroore4l6D1Tw2e+y2
# tTuSMtTUwiSqJXtCalasrBblNdcZqhAmK013t42nMKuYpWozEXd+n05uw5S+QFLE
# InHuXSI1EO4BZSZcodLwaTIwOwW+GRpd01ACbjXygjS87m7x7KVL7fFA2/CLR4dl
# GcuD99lOSBwFjYrdxBs8rRrd6mOhgTA4iReqXwMadNUZN4oUFQ7DUyqP7YrSGl3+
# +lAOHg==
# SIG # End signature block
