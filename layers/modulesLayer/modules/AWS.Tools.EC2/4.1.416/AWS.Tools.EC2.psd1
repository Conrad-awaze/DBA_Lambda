#
# Module manifest for module 'AWS.Tools.EC2'
#

@{
    # Script module or binary module file associated with this manifest
    RootModule = 'AWS.Tools.EC2.dll'

    # Supported PSEditions
    CompatiblePSEditions = @('Core', 'Desktop')

    # Version number of this module.
    ModuleVersion = '4.1.416'

    # ID used to uniquely identify this module
    GUID = 'beb2445c-fd90-4fda-adf1-f8c955ce16dc'

    # Author of this module
    Author = 'Amazon.com, Inc'

    # Company or vendor of this module
    CompanyName = 'Amazon.com, Inc'

    # Copyright statement for this module
    Copyright = 'Copyright 2012-2023 Amazon.com, Inc. or its affiliates. All Rights Reserved.'

    # Description of the functionality provided by this module
    Description = 'The EC2 module of AWS Tools for PowerShell lets developers and administrators manage Amazon Elastic Compute Cloud (EC2) from the PowerShell scripting environment. In order to manage each AWS service, install the corresponding module (e.g. AWS.Tools.EC2, AWS.Tools.S3...).
The module AWS.Tools.Installer (https://www.powershellgallery.com/packages/AWS.Tools.Installer/) makes it easier to install, update and uninstall the AWS.Tools modules.
This version of AWS Tools for PowerShell is compatible with Windows PowerShell 5.1+ and PowerShell Core 6+ on Windows, Linux and macOS. When running on Windows PowerShell, .NET Framework 4.7.2 or newer is required. Alternative modules AWSPowerShell.NetCore and AWSPowerShell, provide support for all AWS services from a single module and also support older versions of Windows PowerShell and .NET Framework.'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '5.1'

    # Name of the PowerShell host required by this module
    PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    PowerShellHostVersion = ''

    # Minimum version of the .NET Framework required by this module
    DotNetFrameworkVersion = '4.7.2'

    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion = ''

    # Processor architecture (None, X86, Amd64, IA64) required by this module
    ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules = @(
        @{
            ModuleName = 'AWS.Tools.Common';
            RequiredVersion = '4.1.416';
            Guid = 'e5b05bf3-9eee-47b2-81f2-41ddc0501b86' }
    )

    # Assemblies that must be loaded prior to importing this module.
    RequiredAssemblies = @(
        'AWSSDK.EC2.dll'
    )

    # Script files (.ps1) that are run in the caller's environment prior to importing this module
    ScriptsToProcess = @(

    )

    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess = @(

    )

    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @(
        'AWS.Tools.EC2.Format.ps1xml'
    )

    # Modules to import as nested modules of the module specified in ModuleToProcess
    NestedModules = @(
        'AWS.Tools.EC2.Completers.psm1',
        'AWS.Tools.EC2.Aliases.psm1'
    )

    # Functions to export from this module
    FunctionsToExport = ''

    # Cmdlets to export from this module
    CmdletsToExport = @(
        'Add-EC2CapacityReservation', 
        'Add-EC2ClassicLinkVpc', 
        'Add-EC2InternetGateway', 
        'Add-EC2NetworkInterface', 
        'Add-EC2SecurityGroupToClientVpnTargetNetwork', 
        'Add-EC2Volume', 
        'Add-EC2VpnGateway', 
        'Approve-EC2AddressTransfer', 
        'Approve-EC2EndpointConnection', 
        'Approve-EC2ReservedInstancesExchangeQuote', 
        'Approve-EC2TransitGatewayMulticastDomainAssociation', 
        'Approve-EC2TransitGatewayPeeringAttachment', 
        'Approve-EC2TransitGatewayVpcAttachment', 
        'Approve-EC2VpcPeeringConnection', 
        'Confirm-EC2ProductInstance', 
        'Copy-EC2FpgaImage', 
        'Copy-EC2Image', 
        'Copy-EC2Snapshot', 
        'Deny-EC2EndpointConnection', 
        'Deny-EC2TransitGatewayMulticastDomainAssociation', 
        'Deny-EC2TransitGatewayPeeringAttachment', 
        'Deny-EC2TransitGatewayVpcAttachment', 
        'Deny-EC2VpcPeeringConnection', 
        'Disable-EC2AddressTransfer', 
        'Disable-EC2AwsNetworkPerformanceMetricSubscription', 
        'Disable-EC2EbsEncryptionByDefault', 
        'Disable-EC2FastLaunch', 
        'Disable-EC2FastSnapshotRestore', 
        'Disable-EC2ImageBlockPublicAccess', 
        'Disable-EC2ImageDeprecation', 
        'Disable-EC2IpamOrganizationAdminAccount', 
        'Disable-EC2SerialConsoleAccess', 
        'Disable-EC2TransitGatewayRouteTablePropagation', 
        'Disable-EC2VgwRoutePropagation', 
        'Disable-EC2VpcClassicLink', 
        'Disable-EC2VpcClassicLinkDnsSupport', 
        'Dismount-EC2ClassicLinkVpc', 
        'Dismount-EC2InternetGateway', 
        'Dismount-EC2NetworkInterface', 
        'Dismount-EC2VerifiedAccessTrustProvider', 
        'Dismount-EC2Volume', 
        'Dismount-EC2VpnGateway', 
        'Edit-EC2AddressAttribute', 
        'Edit-EC2AvailabilityZoneGroup', 
        'Edit-EC2CapacityReservation', 
        'Edit-EC2CapacityReservationFleet', 
        'Edit-EC2ClientVpnEndpoint', 
        'Edit-EC2DefaultCreditSpecification', 
        'Edit-EC2EbsDefaultKmsKeyId', 
        'Edit-EC2EndpointServicePermission', 
        'Edit-EC2Fleet', 
        'Edit-EC2FpgaImageAttribute', 
        'Edit-EC2Host', 
        'Edit-EC2IdentityIdFormat', 
        'Edit-EC2IdFormat', 
        'Edit-EC2ImageAttribute', 
        'Edit-EC2InstanceAttribute', 
        'Edit-EC2InstanceCapacityReservationAttribute', 
        'Edit-EC2InstanceCreditSpecification', 
        'Edit-EC2InstanceEventStartTime', 
        'Edit-EC2InstanceEventWindow', 
        'Edit-EC2InstanceMaintenanceOption', 
        'Edit-EC2InstanceMetadataOption', 
        'Edit-EC2InstancePlacement', 
        'Edit-EC2Ipam', 
        'Edit-EC2IpamPool', 
        'Edit-EC2IpamResourceCidr', 
        'Edit-EC2IpamResourceDiscovery', 
        'Edit-EC2IpamScope', 
        'Edit-EC2LaunchTemplate', 
        'Edit-EC2LocalGatewayRoute', 
        'Edit-EC2ManagedPrefixList', 
        'Edit-EC2NetworkInterfaceAttribute', 
        'Edit-EC2PrivateDnsNameOption', 
        'Edit-EC2ReservedInstance', 
        'Edit-EC2SecurityGroupRule', 
        'Edit-EC2SnapshotAttribute', 
        'Edit-EC2SnapshotTier', 
        'Edit-EC2SpotFleetRequest', 
        'Edit-EC2SubnetAttribute', 
        'Edit-EC2TrafficMirrorFilterNetworkService', 
        'Edit-EC2TrafficMirrorFilterRule', 
        'Edit-EC2TrafficMirrorSession', 
        'Edit-EC2TransitGateway', 
        'Edit-EC2TransitGatewayPrefixListReference', 
        'Edit-EC2TransitGatewayVpcAttachment', 
        'Edit-EC2VerifiedAccessEndpoint', 
        'Edit-EC2VerifiedAccessEndpointPolicy', 
        'Edit-EC2VerifiedAccessGroup', 
        'Edit-EC2VerifiedAccessGroupPolicy', 
        'Edit-EC2VerifiedAccessInstance', 
        'Edit-EC2VerifiedAccessInstanceLoggingConfiguration', 
        'Edit-EC2VerifiedAccessTrustProvider', 
        'Edit-EC2Volume', 
        'Edit-EC2VolumeAttribute', 
        'Edit-EC2VpcAttribute', 
        'Edit-EC2VpcEndpoint', 
        'Edit-EC2VpcEndpointConnectionNotification', 
        'Edit-EC2VpcEndpointServiceConfiguration', 
        'Edit-EC2VpcEndpointServicePayerResponsibility', 
        'Edit-EC2VpcPeeringConnectionOption', 
        'Edit-EC2VpcTenancy', 
        'Edit-EC2VpnConnection', 
        'Edit-EC2VpnConnectionOption', 
        'Edit-EC2VpnTunnelCertificate', 
        'Edit-EC2VpnTunnelOption', 
        'Enable-EC2AddressTransfer', 
        'Enable-EC2AwsNetworkPerformanceMetricSubscription', 
        'Enable-EC2EbsEncryptionByDefault', 
        'Enable-EC2FastLaunch', 
        'Enable-EC2FastSnapshotRestore', 
        'Enable-EC2ImageBlockPublicAccess', 
        'Enable-EC2ImageDeprecation', 
        'Enable-EC2IpamOrganizationAdminAccount', 
        'Enable-EC2ReachabilityAnalyzerOrganizationSharing', 
        'Enable-EC2SerialConsoleAccess', 
        'Enable-EC2TransitGatewayRouteTablePropagation', 
        'Enable-EC2VgwRoutePropagation', 
        'Enable-EC2VolumeIO', 
        'Enable-EC2VpcClassicLink', 
        'Enable-EC2VpcClassicLinkDnsSupport', 
        'Export-EC2ClientVpnClientCertificateRevocationList', 
        'Export-EC2ClientVpnClientConfiguration', 
        'Export-EC2Image', 
        'Export-EC2TransitGatewayRoute', 
        'Get-EC2AccountAttribute', 
        'Get-EC2Address', 
        'Get-EC2AddressesAttribute', 
        'Get-EC2AddressTransfer', 
        'Get-EC2AggregateIdFormat', 
        'Get-EC2AssociatedEnclaveCertificateIamRole', 
        'Get-EC2AssociatedIpv6PoolCidr', 
        'Get-EC2AvailabilityZone', 
        'Get-EC2AwsNetworkPerformanceData', 
        'Get-EC2AwsNetworkPerformanceMetricSubscription', 
        'Get-EC2BundleTask', 
        'Get-EC2ByoipCidr', 
        'Get-EC2CapacityReservation', 
        'Get-EC2CapacityReservationFleet', 
        'Get-EC2CapacityReservationUsage', 
        'Get-EC2CarrierGateway', 
        'Get-EC2ClassicLinkInstance', 
        'Get-EC2ClientVpnAuthorizationRule', 
        'Get-EC2ClientVpnConnection', 
        'Get-EC2ClientVpnEndpoint', 
        'Get-EC2ClientVpnRoute', 
        'Get-EC2ClientVpnTargetNetwork', 
        'Get-EC2CoipPool', 
        'Get-EC2CoipPoolUsage', 
        'Get-EC2ConsoleOutput', 
        'Get-EC2ConsoleScreenshot', 
        'Get-EC2CreditSpecification', 
        'Get-EC2CustomerGateway', 
        'Get-EC2DefaultCreditSpecification', 
        'Get-EC2DhcpOption', 
        'Get-EC2EbsDefaultKmsKeyId', 
        'Get-EC2EbsEncryptionByDefault', 
        'Get-EC2EgressOnlyInternetGatewayList', 
        'Get-EC2ElasticGpu', 
        'Get-EC2EndpointConnection', 
        'Get-EC2EndpointConnectionNotification', 
        'Get-EC2EndpointServiceConfiguration', 
        'Get-EC2EndpointServicePermission', 
        'Get-EC2ExportImageTask', 
        'Get-EC2ExportTask', 
        'Get-EC2FastLaunchImage', 
        'Get-EC2FastSnapshotRestore', 
        'Get-EC2FleetHistory', 
        'Get-EC2FleetInstanceList', 
        'Get-EC2FleetList', 
        'Get-EC2FlowLog', 
        'Get-EC2FlowLogsIntegrationTemplate', 
        'Get-EC2FpgaImage', 
        'Get-EC2FpgaImageAttribute', 
        'Get-EC2GroupsForCapacityReservation', 
        'Get-EC2Host', 
        'Get-EC2HostReservation', 
        'Get-EC2HostReservationOffering', 
        'Get-EC2HostReservationPurchasePreview', 
        'Get-EC2IamInstanceProfileAssociation', 
        'Get-EC2IdentityIdFormat', 
        'Get-EC2IdFormat', 
        'Get-EC2Image', 
        'Get-EC2ImageAttribute', 
        'Get-EC2ImageBlockPublicAccessState', 
        'Get-EC2ImageByName', 
        'Get-EC2ImagesInRecycleBinList', 
        'Get-EC2ImportImageTask', 
        'Get-EC2ImportSnapshotTask', 
        'Get-EC2Instance', 
        'Get-EC2InstanceAttribute', 
        'Get-EC2InstanceConnectEndpoint', 
        'Get-EC2InstanceEventNotificationAttribute', 
        'Get-EC2InstanceEventWindow', 
        'Get-EC2InstanceMetadata', 
        'Get-EC2InstanceStatus', 
        'Get-EC2InstanceType', 
        'Get-EC2InstanceTypeOffering', 
        'Get-EC2InstanceTypesFromInstanceRequirement', 
        'Get-EC2InstanceUefiData', 
        'Get-EC2InternetGateway', 
        'Get-EC2Ipam', 
        'Get-EC2IpamAddressHistory', 
        'Get-EC2IpamDiscoveredAccount', 
        'Get-EC2IpamDiscoveredResourceCidr', 
        'Get-EC2IpamPool', 
        'Get-EC2IpamPoolAllocation', 
        'Get-EC2IpamPoolCidr', 
        'Get-EC2IpamResourceCidr', 
        'Get-EC2IpamResourceDiscovery', 
        'Get-EC2IpamResourceDiscoveryAssociation', 
        'Get-EC2IpamScope', 
        'Get-EC2Ipv6Pool', 
        'Get-EC2KeyPair', 
        'Get-EC2LaunchTemplateData', 
        'Get-EC2LocalGateway', 
        'Get-EC2LocalGatewayRouteTable', 
        'Get-EC2LocalGatewayRouteTableVirtualInterfaceGroupAssociation', 
        'Get-EC2LocalGatewayRouteTableVpcAssociation', 
        'Get-EC2LocalGatewayVirtualInterface', 
        'Get-EC2LocalGatewayVirtualInterfaceGroup', 
        'Get-EC2ManagedPrefixList', 
        'Get-EC2ManagedPrefixListAssociation', 
        'Get-EC2ManagedPrefixListEntry', 
        'Get-EC2MovingAddress', 
        'Get-EC2NatGateway', 
        'Get-EC2NetworkAcl', 
        'Get-EC2NetworkInsightsAccessScope', 
        'Get-EC2NetworkInsightsAccessScopeAnalysis', 
        'Get-EC2NetworkInsightsAccessScopeAnalysisFinding', 
        'Get-EC2NetworkInsightsAccessScopeContent', 
        'Get-EC2NetworkInsightsAnalysis', 
        'Get-EC2NetworkInsightsPath', 
        'Get-EC2NetworkInterface', 
        'Get-EC2NetworkInterfaceAttribute', 
        'Get-EC2NetworkInterfacePermission', 
        'Get-EC2PasswordData', 
        'Get-EC2PlacementGroup', 
        'Get-EC2PrefixList', 
        'Get-EC2PrincipalIdFormat', 
        'Get-EC2PublicIpv4Pool', 
        'Get-EC2Region', 
        'Get-EC2ReplaceRootVolumeTask', 
        'Get-EC2ReservedInstance', 
        'Get-EC2ReservedInstancesExchangeQuote', 
        'Get-EC2ReservedInstancesListing', 
        'Get-EC2ReservedInstancesModification', 
        'Get-EC2ReservedInstancesOffering', 
        'Get-EC2RouteTable', 
        'Get-EC2ScheduledInstance', 
        'Get-EC2ScheduledInstanceAvailability', 
        'Get-EC2SecurityGroup', 
        'Get-EC2SecurityGroupReference', 
        'Get-EC2SecurityGroupRule', 
        'Get-EC2SerialConsoleAccessStatus', 
        'Get-EC2Snapshot', 
        'Get-EC2SnapshotAttribute', 
        'Get-EC2SnapshotsInRecycleBinList', 
        'Get-EC2SnapshotTierStatus', 
        'Get-EC2SpotDatafeedSubscription', 
        'Get-EC2SpotFleetInstance', 
        'Get-EC2SpotFleetRequest', 
        'Get-EC2SpotFleetRequestHistory', 
        'Get-EC2SpotInstanceRequest', 
        'Get-EC2SpotPlacementScore', 
        'Get-EC2SpotPriceHistory', 
        'Get-EC2StaleSecurityGroup', 
        'Get-EC2StoreImageTask', 
        'Get-EC2Subnet', 
        'Get-EC2SubnetCidrReservation', 
        'Get-EC2Tag', 
        'Get-EC2Template', 
        'Get-EC2TemplateVersion', 
        'Get-EC2TrafficMirrorFilter', 
        'Get-EC2TrafficMirrorSession', 
        'Get-EC2TrafficMirrorTarget', 
        'Get-EC2TransitGateway', 
        'Get-EC2TransitGatewayAttachment', 
        'Get-EC2TransitGatewayAttachmentPropagation', 
        'Get-EC2TransitGatewayConnect', 
        'Get-EC2TransitGatewayConnectPeer', 
        'Get-EC2TransitGatewayMulticastDomain', 
        'Get-EC2TransitGatewayMulticastDomainAssociation', 
        'Get-EC2TransitGatewayPeeringAttachment', 
        'Get-EC2TransitGatewayPolicyTable', 
        'Get-EC2TransitGatewayPolicyTableAssociation', 
        'Get-EC2TransitGatewayPolicyTableEntry', 
        'Get-EC2TransitGatewayPrefixListReference', 
        'Get-EC2TransitGatewayRouteTable', 
        'Get-EC2TransitGatewayRouteTableAnnouncement', 
        'Get-EC2TransitGatewayRouteTableAssociation', 
        'Get-EC2TransitGatewayRouteTablePropagation', 
        'Get-EC2TransitGatewayVpcAttachment', 
        'Get-EC2TrunkInterfaceAssociation', 
        'Get-EC2VerifiedAccessEndpoint', 
        'Get-EC2VerifiedAccessEndpointPolicy', 
        'Get-EC2VerifiedAccessGroup', 
        'Get-EC2VerifiedAccessGroupPolicy', 
        'Get-EC2VerifiedAccessInstance', 
        'Get-EC2VerifiedAccessInstanceLoggingConfiguration', 
        'Get-EC2VerifiedAccessTrustProvider', 
        'Get-EC2Volume', 
        'Get-EC2VolumeAttribute', 
        'Get-EC2VolumeModification', 
        'Get-EC2VolumeStatus', 
        'Get-EC2Vpc', 
        'Get-EC2VpcAttribute', 
        'Get-EC2VpcClassicLink', 
        'Get-EC2VpcClassicLinkDnsSupport', 
        'Get-EC2VpcEndpoint', 
        'Get-EC2VpcEndpointService', 
        'Get-EC2VpcPeeringConnection', 
        'Get-EC2VpnConnection', 
        'Get-EC2VpnConnectionDeviceSampleConfiguration', 
        'Get-EC2VpnConnectionDeviceType', 
        'Get-EC2VpnGateway', 
        'Get-EC2VpnTunnelReplacementStatus', 
        'Grant-EC2ClientVpnIngress', 
        'Grant-EC2SecurityGroupEgress', 
        'Grant-EC2SecurityGroupIngress', 
        'Import-EC2ClientVpnClientCertificateRevocationList', 
        'Import-EC2Image', 
        'Import-EC2KeyPair', 
        'Import-EC2Snapshot', 
        'Mount-EC2VerifiedAccessTrustProvider', 
        'Move-EC2AddressToVpc', 
        'Move-EC2ByoipCidrToIpam', 
        'New-EC2Address', 
        'New-EC2CapacityReservationFleet', 
        'New-EC2CarrierGateway', 
        'New-EC2ClientVpnEndpoint', 
        'New-EC2ClientVpnRoute', 
        'New-EC2CoipCidr', 
        'New-EC2CoipPool', 
        'New-EC2CustomerGateway', 
        'New-EC2DefaultSubnet', 
        'New-EC2DefaultVpc', 
        'New-EC2DhcpOption', 
        'New-EC2EgressOnlyInternetGateway', 
        'New-EC2Fleet', 
        'New-EC2FlowLog', 
        'New-EC2FpgaImage', 
        'New-EC2Host', 
        'New-EC2HostReservation', 
        'New-EC2Image', 
        'New-EC2Instance', 
        'New-EC2InstanceBundle', 
        'New-EC2InstanceConnectEndpoint', 
        'New-EC2InstanceEventWindow', 
        'New-EC2InstanceExportTask', 
        'New-EC2InternetGateway', 
        'New-EC2Ipam', 
        'New-EC2IpamPool', 
        'New-EC2IpamPoolCidr', 
        'New-EC2IpamResourceDiscovery', 
        'New-EC2IpamScope', 
        'New-EC2KeyPair', 
        'New-EC2LaunchTemplate', 
        'New-EC2LaunchTemplateVersion', 
        'New-EC2LocalGatewayRoute', 
        'New-EC2LocalGatewayRouteTable', 
        'New-EC2LocalGatewayRouteTableVirtualInterfaceGroupAssociation', 
        'New-EC2LocalGatewayRouteTableVpcAssociation', 
        'New-EC2ManagedPrefixList', 
        'New-EC2NatGateway', 
        'New-EC2NetworkAcl', 
        'New-EC2NetworkAclEntry', 
        'New-EC2NetworkInsightsAccessScope', 
        'New-EC2NetworkInsightsPath', 
        'New-EC2NetworkInterface', 
        'New-EC2NetworkInterfacePermission', 
        'New-EC2PlacementGroup', 
        'New-EC2PublicIpv4Pool', 
        'New-EC2ReplaceRootVolumeTask', 
        'New-EC2ReservedInstance', 
        'New-EC2ReservedInstancesListing', 
        'New-EC2RestoreImageTask', 
        'New-EC2Route', 
        'New-EC2RouteTable', 
        'New-EC2ScheduledInstance', 
        'New-EC2ScheduledInstancePurchase', 
        'New-EC2SecurityGroup', 
        'New-EC2Snapshot', 
        'New-EC2SnapshotBatch', 
        'New-EC2SpotDatafeedSubscription', 
        'New-EC2StoreImageTask', 
        'New-EC2Subnet', 
        'New-EC2SubnetCidrReservation', 
        'New-EC2Tag', 
        'New-EC2TrafficMirrorFilter', 
        'New-EC2TrafficMirrorFilterRule', 
        'New-EC2TrafficMirrorSession', 
        'New-EC2TrafficMirrorTarget', 
        'New-EC2TransitGateway', 
        'New-EC2TransitGatewayConnect', 
        'New-EC2TransitGatewayConnectPeer', 
        'New-EC2TransitGatewayMulticastDomain', 
        'New-EC2TransitGatewayPeeringAttachment', 
        'New-EC2TransitGatewayPolicyTable', 
        'New-EC2TransitGatewayPrefixListReference', 
        'New-EC2TransitGatewayRoute', 
        'New-EC2TransitGatewayRouteTable', 
        'New-EC2TransitGatewayRouteTableAnnouncement', 
        'New-EC2TransitGatewayVpcAttachment', 
        'New-EC2VerifiedAccessEndpoint', 
        'New-EC2VerifiedAccessGroup', 
        'New-EC2VerifiedAccessInstance', 
        'New-EC2VerifiedAccessTrustProvider', 
        'New-EC2Volume', 
        'New-EC2Vpc', 
        'New-EC2VpcEndpoint', 
        'New-EC2VpcEndpointConnectionNotification', 
        'New-EC2VpcEndpointServiceConfiguration', 
        'New-EC2VpcPeeringConnection', 
        'New-EC2VpnConnection', 
        'New-EC2VpnConnectionRoute', 
        'New-EC2VpnGateway', 
        'Register-EC2Address', 
        'Register-EC2ByoipCidr', 
        'Register-EC2ClientVpnTargetNetwork', 
        'Register-EC2DhcpOption', 
        'Register-EC2EnclaveCertificateIamRole', 
        'Register-EC2IamInstanceProfile', 
        'Register-EC2Image', 
        'Register-EC2InstanceEventNotificationAttribute', 
        'Register-EC2InstanceEventWindow', 
        'Register-EC2IpamPoolCidr', 
        'Register-EC2IpamResourceDiscovery', 
        'Register-EC2Ipv6AddressList', 
        'Register-EC2NatGatewayAddress', 
        'Register-EC2PrivateIpAddress', 
        'Register-EC2PrivateNatGatewayAddress', 
        'Register-EC2PublicIpv4PoolCidr', 
        'Register-EC2RouteTable', 
        'Register-EC2SubnetCidrBlock', 
        'Register-EC2TransitGatewayMulticastDomain', 
        'Register-EC2TransitGatewayMulticastGroupMember', 
        'Register-EC2TransitGatewayMulticastGroupSource', 
        'Register-EC2TransitGatewayPolicyTable', 
        'Register-EC2TransitGatewayRouteTable', 
        'Register-EC2TrunkInterface', 
        'Register-EC2VpcCidrBlock', 
        'Remove-EC2Address', 
        'Remove-EC2CapacityReservation', 
        'Remove-EC2CarrierGateway', 
        'Remove-EC2ClientVpnEndpoint', 
        'Remove-EC2ClientVpnRoute', 
        'Remove-EC2CoipCidr', 
        'Remove-EC2CoipPool', 
        'Remove-EC2CustomerGateway', 
        'Remove-EC2DhcpOption', 
        'Remove-EC2EgressOnlyInternetGateway', 
        'Remove-EC2EndpointConnectionNotification', 
        'Remove-EC2EndpointServiceConfiguration', 
        'Remove-EC2Fleet', 
        'Remove-EC2FlowLog', 
        'Remove-EC2FpgaImage', 
        'Remove-EC2Host', 
        'Remove-EC2Instance', 
        'Remove-EC2InstanceConnectEndpoint', 
        'Remove-EC2InstanceEventWindow', 
        'Remove-EC2InternetGateway', 
        'Remove-EC2Ipam', 
        'Remove-EC2IpamPool', 
        'Remove-EC2IpamPoolAllocation', 
        'Remove-EC2IpamResourceDiscovery', 
        'Remove-EC2IpamScope', 
        'Remove-EC2KeyPair', 
        'Remove-EC2LaunchTemplate', 
        'Remove-EC2LocalGatewayRoute', 
        'Remove-EC2LocalGatewayRouteTable', 
        'Remove-EC2LocalGatewayRouteTableVirtualInterfaceGroupAssociation', 
        'Remove-EC2LocalGatewayRouteTableVpcAssociation', 
        'Remove-EC2ManagedPrefixList', 
        'Remove-EC2NatGateway', 
        'Remove-EC2NetworkAcl', 
        'Remove-EC2NetworkAclEntry', 
        'Remove-EC2NetworkInsightsAccessScope', 
        'Remove-EC2NetworkInsightsAccessScopeAnalysis', 
        'Remove-EC2NetworkInsightsAnalysis', 
        'Remove-EC2NetworkInsightsPath', 
        'Remove-EC2NetworkInterface', 
        'Remove-EC2NetworkInterfacePermission', 
        'Remove-EC2PlacementGroup', 
        'Remove-EC2PublicIpv4Pool', 
        'Remove-EC2QueuedReservedInstance', 
        'Remove-EC2Route', 
        'Remove-EC2RouteTable', 
        'Remove-EC2SecurityGroup', 
        'Remove-EC2Snapshot', 
        'Remove-EC2SpotDatafeedSubscription', 
        'Remove-EC2Subnet', 
        'Remove-EC2SubnetCidrReservation', 
        'Remove-EC2Tag', 
        'Remove-EC2TemplateVersion', 
        'Remove-EC2TrafficMirrorFilter', 
        'Remove-EC2TrafficMirrorFilterRule', 
        'Remove-EC2TrafficMirrorSession', 
        'Remove-EC2TrafficMirrorTarget', 
        'Remove-EC2TransitGateway', 
        'Remove-EC2TransitGatewayConnect', 
        'Remove-EC2TransitGatewayConnectPeer', 
        'Remove-EC2TransitGatewayMulticastDomain', 
        'Remove-EC2TransitGatewayPeeringAttachment', 
        'Remove-EC2TransitGatewayPolicyTable', 
        'Remove-EC2TransitGatewayPrefixListReference', 
        'Remove-EC2TransitGatewayRoute', 
        'Remove-EC2TransitGatewayRouteTable', 
        'Remove-EC2TransitGatewayRouteTableAnnouncement', 
        'Remove-EC2TransitGatewayVpcAttachment', 
        'Remove-EC2VerifiedAccessEndpoint', 
        'Remove-EC2VerifiedAccessGroup', 
        'Remove-EC2VerifiedAccessInstance', 
        'Remove-EC2VerifiedAccessTrustProvider', 
        'Remove-EC2Volume', 
        'Remove-EC2Vpc', 
        'Remove-EC2VpcEndpoint', 
        'Remove-EC2VpcPeeringConnection', 
        'Remove-EC2VpnConnection', 
        'Remove-EC2VpnConnectionRoute', 
        'Remove-EC2VpnGateway', 
        'Request-EC2SpotFleet', 
        'Request-EC2SpotInstance', 
        'Reset-EC2AddressAttribute', 
        'Reset-EC2EbsDefaultKmsKeyId', 
        'Reset-EC2FpgaImageAttribute', 
        'Reset-EC2ImageAttribute', 
        'Reset-EC2InstanceAttribute', 
        'Reset-EC2NetworkInterfaceAttribute', 
        'Reset-EC2SnapshotAttribute', 
        'Restart-EC2Instance', 
        'Restore-EC2AddressToClassic', 
        'Restore-EC2ImageFromRecycleBin', 
        'Restore-EC2ManagedPrefixListVersion', 
        'Restore-EC2SnapshotFromRecycleBin', 
        'Restore-EC2SnapshotTier', 
        'Revoke-EC2ClientVpnIngress', 
        'Revoke-EC2SecurityGroupEgress', 
        'Revoke-EC2SecurityGroupIngress', 
        'Search-EC2LocalGatewayRoute', 
        'Search-EC2TransitGatewayMulticastGroup', 
        'Search-EC2TransitGatewayRoute', 
        'Send-EC2DiagnosticInterrupt', 
        'Send-EC2InstanceStatus', 
        'Set-EC2IamInstanceProfileAssociation', 
        'Set-EC2NetworkAclAssociation', 
        'Set-EC2NetworkAclEntry', 
        'Set-EC2Route', 
        'Set-EC2RouteTableAssociation', 
        'Set-EC2TransitGatewayRoute', 
        'Set-EC2VpnTunnel', 
        'Start-EC2ByoipCidrAdvertisement', 
        'Start-EC2Instance', 
        'Start-EC2InstanceMonitoring', 
        'Start-EC2NetworkInsightsAccessScopeAnalysis', 
        'Start-EC2NetworkInsightsAnalysis', 
        'Start-EC2VpcEndpointServicePrivateDnsVerification', 
        'Stop-EC2BundleTask', 
        'Stop-EC2ByoipCidrAdvertisement', 
        'Stop-EC2CapacityReservationFleet', 
        'Stop-EC2ClientVpnConnection', 
        'Stop-EC2ExportTask', 
        'Stop-EC2ImageLaunchPermission', 
        'Stop-EC2ImportTask', 
        'Stop-EC2Instance', 
        'Stop-EC2InstanceMonitoring', 
        'Stop-EC2ReservedInstancesListing', 
        'Stop-EC2SpotFleetRequest', 
        'Stop-EC2SpotInstanceRequest', 
        'Unregister-EC2Address', 
        'Unregister-EC2ByoipCidr', 
        'Unregister-EC2ClientVpnTargetNetwork', 
        'Unregister-EC2EnclaveCertificateIamRole', 
        'Unregister-EC2IamInstanceProfile', 
        'Unregister-EC2Image', 
        'Unregister-EC2InstanceEventNotificationAttribute', 
        'Unregister-EC2InstanceEventWindow', 
        'Unregister-EC2IpamPoolCidr', 
        'Unregister-EC2IpamResourceDiscovery', 
        'Unregister-EC2Ipv6AddressList', 
        'Unregister-EC2NatGatewayAddress', 
        'Unregister-EC2PrivateIpAddress', 
        'Unregister-EC2PrivateNatGatewayAddress', 
        'Unregister-EC2PublicIpv4PoolCidr', 
        'Unregister-EC2RouteTable', 
        'Unregister-EC2SubnetCidrBlock', 
        'Unregister-EC2TransitGatewayMulticastDomain', 
        'Unregister-EC2TransitGatewayMulticastGroupMember', 
        'Unregister-EC2TransitGatewayMulticastGroupSource', 
        'Unregister-EC2TransitGatewayPolicyTable', 
        'Unregister-EC2TransitGatewayRouteTable', 
        'Unregister-EC2TrunkInterface', 
        'Unregister-EC2VpcCidrBlock', 
        'Update-EC2SecurityGroupRuleEgressDescription', 
        'Update-EC2SecurityGroupRuleIngressDescription')

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module
    AliasesToExport = @(
        'Confirm-EC2ReservedInstancesExchangeQuote', 
        'Confirm-EC2TransitGatewayPeeringAttachment', 
        'Confirm-EC2TransitGatewayVpcAttachment', 
        'Confirm-EC2EndpointConnection', 
        'Confirm-EC2VpcPeeringConnection', 
        'New-EC2Hosts', 
        'New-EC2FlowLogs', 
        'Remove-EC2FlowLogs', 
        'Get-EC2AccountAttributes', 
        'Get-EC2ExportTasks', 
        'Get-EC2FlowLogs', 
        'Get-EC2Hosts', 
        'Get-EC2ReservedInstancesModifications', 
        'Get-EC2Snapshots', 
        'Get-EC2VpcPeeringConnections', 
        'Edit-EC2Hosts', 
        'ReleaseHosts')

    # List of all modules packaged with this module
    ModuleList = @()

    # List of all files packaged with this module
    FileList = @(
        'AWS.Tools.EC2.dll-Help.xml'
    )

    # Private data to pass to the module specified in ModuleToProcess
    PrivateData = @{

        PSData = @{
            Tags = @('AWS', 'cloud', 'Windows', 'PSEdition_Desktop', 'PSEdition_Core', 'Linux', 'MacOS', 'Mac')
            LicenseUri = 'https://aws.amazon.com/apache-2-0/'
            ProjectUri = 'https://github.com/aws/aws-tools-for-powershell'
            IconUri = 'https://sdk-for-net.amazonwebservices.com/images/AWSLogo128x128.png'
            ReleaseNotes = 'https://github.com/aws/aws-tools-for-powershell/blob/master/CHANGELOG.md'
        }
    }
}

# SIG # Begin signature block
# MIIusAYJKoZIhvcNAQcCoIIuoTCCLp0CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDoUW5FlMOYyxPk
# tUEHYL8bbRoUG1ytsI2+SHdcA/fXvKCCFB0wggXAMIIEqKADAgECAhAP0bvKeWvX
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
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIEh2
# T03X9a3gvy12Sz46N3EjeGGZO0W3p61WnXKBnJh+MA0GCSqGSIb3DQEBAQUABIIB
# gF8osbnNROdbU97uvPpmhucVPLoiaL3DocBM6Yd+wSeMimSm1TcBtxzmRYtysK6i
# Ik0Uo8m49RZZJ1wbTXQmlUzMWk9/4TUUOaM6njh2tWcQaCxDBE3qDX1HIaDYazqR
# BhDQadHWQG64omsvwTDhNO8Y/5NOTthbTjz54VqDWazUx3zPp3RlXHHFGUqUrjQs
# sW0Nbt23PQnJv4W0NuESaYa6Ap0Zuz3+FSQKbmRe4qyTX1XvTEd/rcydvgN7e7qn
# uZSiCngANqG2HGMPULGHF1zKe69XUMxgoIYPvkV0RGsdVxsNEmgPqObhSA9/DVZk
# 4oeWiNH0R+RQ/q3IX6XwheFm6boLUT+QEOFLyVhewAu8ciI5Gepk05bKDJPS5VV8
# HomOhUk3Wg7TXAd6kt8oINm6fluzJj6ruAjPxXJm7YHPNtD/a9o6ciIkJOZC5ea4
# qXqiONGhkyuSSk1HjEsqoDym3U/deOcz5TiNRkQfOpjjna7b2nrwMrt10gcVjelC
# LKGCFz8wghc7BgorBgEEAYI3AwMBMYIXKzCCFycGCSqGSIb3DQEHAqCCFxgwghcU
# AgEDMQ8wDQYJYIZIAWUDBAIBBQAwdwYLKoZIhvcNAQkQAQSgaARmMGQCAQEGCWCG
# SAGG/WwHATAxMA0GCWCGSAFlAwQCAQUABCARiyp36LlUcvIQDjMeGtgt4TCe9Wpb
# 13jq2zabxgtkTAIQPsCVlTjGk9oGMdxDaEtzAhgPMjAyMzA5MTUyMjM0MTBaoIIT
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
# CyqGSIb3DQEJEAEEMBwGCSqGSIb3DQEJBTEPFw0yMzA5MTUyMjM0MTBaMCsGCyqG
# SIb3DQEJEAIMMRwwGjAYMBYEFGbwKzLCwskPgl3OqorJxk8ZnM9AMC8GCSqGSIb3
# DQEJBDEiBCDnhTdltjX1YgWWuOUIu5oGVIVwNknh6N6lJbO2ogQtIjA3BgsqhkiG
# 9w0BCRACLzEoMCYwJDAiBCDS9uRt7XQizNHUQFdoQTZvgoraVZquMxavTRqa1Ax4
# KDANBgkqhkiG9w0BAQEFAASCAgCM5FKHC9oegg7rhonq+3EqzOONCFMi816GrieV
# HVGsJ6IYyO2RyFJxP9wUEaPEJVSOajIsJidL1SdyTNsl0AgHKq4PcYjRZaViilRS
# zOHUsWwdRgU0vXDoZki69lfvcHwLoFbqvmhosfQK9ZUSYUy+rz07bX0iBbX+ChQl
# UXbtaT8qM7Gk5ydcJg40+LOIQipehRyV5G+VaGrt9urWOcXvo1KfSJ8VSUc2fNzS
# V7MiZQOJoxwGDrWb0XOp76yzsaLs7FT/LUKi+S0CkI4hMSaf7gZZekSQOpM05kXL
# ezNHGmg2IPGQhEJjKVMZWAnwBeiT7wg8D9+ESZzEDWS8TeaznCEbKMV5E+8mYJLs
# EaJHKftsLxdDjTQMRxsqJQvNAoR8V+CfElmr699fcgAHXH+cT1BeCLAZTMEdDt2W
# TE90cnUcF17D/gT5Y0LYxkCWEbZGJJOAgfB+XVFas8Pgah7EgUU78U4x+NHUMIT0
# Tcmj/s0Vj8dnYp+5bO6g984iUQ5zljwUhIJbQkEYesw4X8eqnqS1FNr0bSPl2bP0
# xYUlp/uFleSVeMLF51YLgEUI7AXeWDKH6fIKf6LegmBtMQH8xp9vXpT7a1fnuuRQ
# e5hKxWfSRJrarsWaynSKyw0dEclhCstXFJmqDvcGh/20b39g+TFak4+cFImQpHnt
# OnQRqA==
# SIG # End signature block
