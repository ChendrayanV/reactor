#
# Module manifest for module 'Microsoft.Graph.Applications'
#
# Generated by: Microsoft Corporation
#
# Generated on: 10/27/2021
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Applications.psm1'

# Version number of this module.
ModuleVersion = '1.8.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '1fee8610-c9fb-475a-b068-c13630ead2fc'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Graph PowerShell Cmdlets'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Microsoft.Graph.Authentication'; ModuleVersion = '1.8.0'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = './bin/Microsoft.Graph.Applications.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Applications.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Add-MgApplicationKey', 'Add-MgApplicationPassword', 
               'Add-MgServicePrincipalKey', 'Add-MgServicePrincipalPassword', 
               'Add-MgServicePrincipalTokenSigningCertificate', 
               'Clear-MgApplicationVerifiedPublisher', 
               'Confirm-MgApplicationMemberGroup', 
               'Confirm-MgApplicationMemberObject', 
               'Confirm-MgServicePrincipalMemberGroup', 
               'Confirm-MgServicePrincipalMemberObject', 
               'Find-MgApplicationSynchronizationJobSchemaDirectory', 
               'Find-MgApplicationSynchronizationTemplateSchemaDirectory', 
               'Find-MgServicePrincipalSynchronizationJobSchemaDirectory', 
               'Find-MgServicePrincipalSynchronizationTemplateSchemaDirectory', 
               'Get-MgApplication', 'Get-MgApplicationAppManagementPolicy', 
               'Get-MgApplicationAppManagementPolicyByRef', 
               'Get-MgApplicationById', 'Get-MgApplicationConnectorGroup', 
               'Get-MgApplicationConnectorGroupByRef', 
               'Get-MgApplicationCreatedOnBehalfOf', 
               'Get-MgApplicationCreatedOnBehalfOfByRef', 'Get-MgApplicationDelta', 
               'Get-MgApplicationExtensionProperty', 
               'Get-MgApplicationFederatedIdentityCredential', 
               'Get-MgApplicationHomeRealmDiscoveryPolicy', 
               'Get-MgApplicationHomeRealmDiscoveryPolicyByRef', 
               'Get-MgApplicationLogo', 'Get-MgApplicationMemberGroup', 
               'Get-MgApplicationMemberObject', 'Get-MgApplicationOwner', 
               'Get-MgApplicationOwnerByRef', 'Get-MgApplicationSynchronization', 
               'Get-MgApplicationSynchronizationAccessToken', 
               'Get-MgApplicationSynchronizationJob', 
               'Get-MgApplicationSynchronizationJobSchema', 
               'Get-MgApplicationSynchronizationJobSchemaDirectory', 
               'Get-MgApplicationSynchronizationTemplate', 
               'Get-MgApplicationSynchronizationTemplateSchema', 
               'Get-MgApplicationSynchronizationTemplateSchemaDirectory', 
               'Get-MgApplicationTemplate', 'Get-MgApplicationTokenIssuancePolicy', 
               'Get-MgApplicationTokenIssuancePolicyByRef', 
               'Get-MgApplicationTokenLifetimePolicy', 
               'Get-MgApplicationTokenLifetimePolicyByRef', 
               'Get-MgApplicationUserOwnedObject', 'Get-MgGroupAppRoleAssignment', 
               'Get-MgOnPremisePublishingProfile', 
               'Get-MgOnPremisePublishingProfileAgent', 
               'Get-MgOnPremisePublishingProfileAgentGroup', 
               'Get-MgOnPremisePublishingProfileAgentGroupAgent', 
               'Get-MgOnPremisePublishingProfileAgentGroupPublishedResource', 
               'Get-MgOnPremisePublishingProfileAgentGroupPublishedResourceAgentGroup', 
               'Get-MgOnPremisePublishingProfileConnector', 
               'Get-MgOnPremisePublishingProfileConnectorGroup', 
               'Get-MgOnPremisePublishingProfileConnectorGroupApplication', 
               'Get-MgOnPremisePublishingProfileConnectorGroupApplicationByRef', 
               'Get-MgOnPremisePublishingProfileConnectorGroupMember', 
               'Get-MgOnPremisePublishingProfileConnectorMemberOf', 
               'Get-MgOnPremisePublishingProfilePublishedResource', 
               'Get-MgOnPremisePublishingProfilePublishedResourceAgentGroup', 
               'Get-MgOnPremisePublishingProfilePublishedResourceAgentGroupAgent', 
               'Get-MgOnPremisePublishingProfilePublishedResourceAgentGroupPublishedResource', 
               'Get-MgServicePrincipal', 
               'Get-MgServicePrincipalAppManagementPolicy', 
               'Get-MgServicePrincipalAppManagementPolicyByRef', 
               'Get-MgServicePrincipalAppRoleAssignedTo', 
               'Get-MgServicePrincipalAppRoleAssignment', 
               'Get-MgServicePrincipalById', 
               'Get-MgServicePrincipalClaimMappingPolicy', 
               'Get-MgServicePrincipalClaimMappingPolicyByRef', 
               'Get-MgServicePrincipalCreatedObject', 
               'Get-MgServicePrincipalCreatedObjectByRef', 
               'Get-MgServicePrincipalDelegatedPermissionClassification', 
               'Get-MgServicePrincipalDelta', 'Get-MgServicePrincipalEndpoint', 
               'Get-MgServicePrincipalFederatedIdentityCredential', 
               'Get-MgServicePrincipalHomeRealmDiscoveryPolicy', 
               'Get-MgServicePrincipalHomeRealmDiscoveryPolicyByRef', 
               'Get-MgServicePrincipalLicenseDetail', 
               'Get-MgServicePrincipalMemberGroup', 
               'Get-MgServicePrincipalMemberObject', 
               'Get-MgServicePrincipalMemberOf', 
               'Get-MgServicePrincipalMemberOfByRef', 
               'Get-MgServicePrincipalOauth2PermissionGrant', 
               'Get-MgServicePrincipalOauth2PermissionGrantByRef', 
               'Get-MgServicePrincipalOwnedObject', 
               'Get-MgServicePrincipalOwnedObjectByRef', 
               'Get-MgServicePrincipalOwner', 'Get-MgServicePrincipalOwnerByRef', 
               'Get-MgServicePrincipalPasswordSingleSignOnCredentials', 
               'Get-MgServicePrincipalSynchronization', 
               'Get-MgServicePrincipalSynchronizationAccessToken', 
               'Get-MgServicePrincipalSynchronizationJob', 
               'Get-MgServicePrincipalSynchronizationJobSchema', 
               'Get-MgServicePrincipalSynchronizationJobSchemaDirectory', 
               'Get-MgServicePrincipalSynchronizationTemplate', 
               'Get-MgServicePrincipalSynchronizationTemplateSchema', 
               'Get-MgServicePrincipalSynchronizationTemplateSchemaDirectory', 
               'Get-MgServicePrincipalTokenIssuancePolicy', 
               'Get-MgServicePrincipalTokenIssuancePolicyByRef', 
               'Get-MgServicePrincipalTokenLifetimePolicy', 
               'Get-MgServicePrincipalTokenLifetimePolicyByRef', 
               'Get-MgServicePrincipalTransitiveMemberOf', 
               'Get-MgServicePrincipalTransitiveMemberOfByRef', 
               'Get-MgServicePrincipalUserOwnedObject', 
               'Get-MgUserAppRoleAssignment', 
               'Invoke-MgFilterApplicationSynchronizationJobSchemaOperator', 
               'Invoke-MgFilterApplicationSynchronizationTemplateSchemaOperator', 
               'Invoke-MgFilterServicePrincipalSynchronizationJobSchemaOperator', 
               'Invoke-MgFilterServicePrincipalSynchronizationTemplateSchemaOperator', 
               'Invoke-MgFunctionApplicationSynchronizationJobSchema', 
               'Invoke-MgFunctionApplicationSynchronizationTemplateSchema', 
               'Invoke-MgFunctionServicePrincipalSynchronizationJobSchema', 
               'Invoke-MgFunctionServicePrincipalSynchronizationTemplateSchema', 
               'Invoke-MgInstantiateApplicationTemplate', 
               'Invoke-MgParseApplicationSynchronizationJobSchemaExpression', 
               'Invoke-MgParseApplicationSynchronizationTemplateSchemaExpression', 
               'Invoke-MgParseServicePrincipalSynchronizationJobSchemaExpression', 
               'Invoke-MgParseServicePrincipalSynchronizationTemplateSchemaExpression', 
               'New-MgApplication', 'New-MgApplicationAppManagementPolicyByRef', 
               'New-MgApplicationExtensionProperty', 
               'New-MgApplicationFederatedIdentityCredential', 
               'New-MgApplicationHomeRealmDiscoveryPolicyByRef', 
               'New-MgApplicationOwnerByRef', 
               'New-MgApplicationSynchronizationJob', 
               'New-MgApplicationSynchronizationJobOnDemand', 
               'New-MgApplicationSynchronizationJobSchemaDirectory', 
               'New-MgApplicationSynchronizationTemplate', 
               'New-MgApplicationSynchronizationTemplateSchemaDirectory', 
               'New-MgApplicationTemplate', 
               'New-MgApplicationTokenIssuancePolicyByRef', 
               'New-MgApplicationTokenLifetimePolicyByRef', 
               'New-MgGroupAppRoleAssignment', 'New-MgOnPremisePublishingProfile', 
               'New-MgOnPremisePublishingProfileAgent', 
               'New-MgOnPremisePublishingProfileAgentGroup', 
               'New-MgOnPremisePublishingProfileAgentGroupAgent', 
               'New-MgOnPremisePublishingProfileAgentGroupPublishedResource', 
               'New-MgOnPremisePublishingProfileAgentGroupPublishedResourceAgentGroup', 
               'New-MgOnPremisePublishingProfileConnector', 
               'New-MgOnPremisePublishingProfileConnectorGroup', 
               'New-MgOnPremisePublishingProfileConnectorGroupApplicationByRef', 
               'New-MgOnPremisePublishingProfileConnectorMemberOf', 
               'New-MgOnPremisePublishingProfilePublishedResource', 
               'New-MgOnPremisePublishingProfilePublishedResourceAgentGroup', 
               'New-MgOnPremisePublishingProfilePublishedResourceAgentGroupAgent', 
               'New-MgOnPremisePublishingProfilePublishedResourceAgentGroupPublishedResource', 
               'New-MgServicePrincipal', 
               'New-MgServicePrincipalAppManagementPolicyByRef', 
               'New-MgServicePrincipalAppRoleAssignedTo', 
               'New-MgServicePrincipalAppRoleAssignment', 
               'New-MgServicePrincipalClaimMappingPolicyByRef', 
               'New-MgServicePrincipalCreatedObjectByRef', 
               'New-MgServicePrincipalDelegatedPermissionClassification', 
               'New-MgServicePrincipalEndpoint', 
               'New-MgServicePrincipalFederatedIdentityCredential', 
               'New-MgServicePrincipalHomeRealmDiscoveryPolicyByRef', 
               'New-MgServicePrincipalLicenseDetail', 
               'New-MgServicePrincipalMemberOfByRef', 
               'New-MgServicePrincipalOauth2PermissionGrantByRef', 
               'New-MgServicePrincipalOwnedObjectByRef', 
               'New-MgServicePrincipalOwnerByRef', 
               'New-MgServicePrincipalPasswordSingleSignOnCredentials', 
               'New-MgServicePrincipalSynchronizationJob', 
               'New-MgServicePrincipalSynchronizationJobOnDemand', 
               'New-MgServicePrincipalSynchronizationJobSchemaDirectory', 
               'New-MgServicePrincipalSynchronizationTemplate', 
               'New-MgServicePrincipalSynchronizationTemplateSchemaDirectory', 
               'New-MgServicePrincipalTokenIssuancePolicyByRef', 
               'New-MgServicePrincipalTokenLifetimePolicyByRef', 
               'New-MgServicePrincipalTransitiveMemberOfByRef', 
               'New-MgUserAppRoleAssignment', 'Ping-MgApplicationsSynchronization', 
               'Ping-MgServicePrincipalsSynchronization', 'Remove-MgApplication', 
               'Remove-MgApplicationConnectorGroupByRef', 
               'Remove-MgApplicationCreatedOnBehalfOfByRef', 
               'Remove-MgApplicationExtensionProperty', 
               'Remove-MgApplicationFederatedIdentityCredential', 
               'Remove-MgApplicationKey', 'Remove-MgApplicationPassword', 
               'Remove-MgApplicationSynchronization', 
               'Remove-MgApplicationSynchronizationJob', 
               'Remove-MgApplicationSynchronizationJobSchema', 
               'Remove-MgApplicationSynchronizationJobSchemaDirectory', 
               'Remove-MgApplicationSynchronizationTemplate', 
               'Remove-MgApplicationSynchronizationTemplateSchema', 
               'Remove-MgApplicationSynchronizationTemplateSchemaDirectory', 
               'Remove-MgApplicationTemplate', 'Remove-MgGroupAppRoleAssignment', 
               'Remove-MgOnPremisePublishingProfile', 
               'Remove-MgOnPremisePublishingProfileAgent', 
               'Remove-MgOnPremisePublishingProfileAgentGroup', 
               'Remove-MgOnPremisePublishingProfileAgentGroupAgent', 
               'Remove-MgOnPremisePublishingProfileAgentGroupPublishedResource', 
               'Remove-MgOnPremisePublishingProfileAgentGroupPublishedResourceAgentGroup', 
               'Remove-MgOnPremisePublishingProfileConnector', 
               'Remove-MgOnPremisePublishingProfileConnectorGroup', 
               'Remove-MgOnPremisePublishingProfileConnectorMemberOf', 
               'Remove-MgOnPremisePublishingProfilePublishedResource', 
               'Remove-MgOnPremisePublishingProfilePublishedResourceAgentGroup', 
               'Remove-MgOnPremisePublishingProfilePublishedResourceAgentGroupAgent', 
               'Remove-MgOnPremisePublishingProfilePublishedResourceAgentGroupPublishedResource', 
               'Remove-MgServicePrincipal', 
               'Remove-MgServicePrincipalAppRoleAssignedTo', 
               'Remove-MgServicePrincipalAppRoleAssignment', 
               'Remove-MgServicePrincipalDelegatedPermissionClassification', 
               'Remove-MgServicePrincipalEndpoint', 
               'Remove-MgServicePrincipalFederatedIdentityCredential', 
               'Remove-MgServicePrincipalKey', 
               'Remove-MgServicePrincipalLicenseDetail', 
               'Remove-MgServicePrincipalPassword', 
               'Remove-MgServicePrincipalPasswordSingleSignOnCredentials', 
               'Remove-MgServicePrincipalSynchronization', 
               'Remove-MgServicePrincipalSynchronizationJob', 
               'Remove-MgServicePrincipalSynchronizationJobSchema', 
               'Remove-MgServicePrincipalSynchronizationJobSchemaDirectory', 
               'Remove-MgServicePrincipalSynchronizationTemplate', 
               'Remove-MgServicePrincipalSynchronizationTemplateSchema', 
               'Remove-MgServicePrincipalSynchronizationTemplateSchemaDirectory', 
               'Remove-MgUserAppRoleAssignment', 
               'Restart-MgApplicationSynchronizationJob', 
               'Restart-MgServicePrincipalSynchronizationJob', 
               'Restore-MgApplication', 'Restore-MgServicePrincipal', 
               'Set-MgApplicationConnectorGroupByRef', 
               'Set-MgApplicationCreatedOnBehalfOfByRef', 'Set-MgApplicationLogo', 
               'Set-MgApplicationVerifiedPublisher', 
               'Start-MgApplicationSynchronizationJob', 
               'Start-MgServicePrincipalSynchronizationJob', 
               'Stop-MgApplicationSynchronizationJob', 
               'Stop-MgServicePrincipalSynchronizationJob', 
               'Suspend-MgApplicationSynchronizationJob', 
               'Suspend-MgServicePrincipalSynchronizationJob', 
               'Test-MgApplicationProperty', 
               'Test-MgApplicationSynchronizationJobCredentials', 
               'Test-MgServicePrincipalProperty', 
               'Test-MgServicePrincipalSynchronizationJobCredentials', 
               'Update-MgApplication', 'Update-MgApplicationExtensionProperty', 
               'Update-MgApplicationFederatedIdentityCredential', 
               'Update-MgApplicationSynchronization', 
               'Update-MgApplicationSynchronizationJob', 
               'Update-MgApplicationSynchronizationJobSchema', 
               'Update-MgApplicationSynchronizationJobSchemaDirectory', 
               'Update-MgApplicationSynchronizationTemplate', 
               'Update-MgApplicationSynchronizationTemplateSchema', 
               'Update-MgApplicationSynchronizationTemplateSchemaDirectory', 
               'Update-MgApplicationTemplate', 'Update-MgGroupAppRoleAssignment', 
               'Update-MgOnPremisePublishingProfile', 
               'Update-MgOnPremisePublishingProfileAgent', 
               'Update-MgOnPremisePublishingProfileAgentGroup', 
               'Update-MgOnPremisePublishingProfileAgentGroupAgent', 
               'Update-MgOnPremisePublishingProfileAgentGroupPublishedResource', 
               'Update-MgOnPremisePublishingProfileAgentGroupPublishedResourceAgentGroup', 
               'Update-MgOnPremisePublishingProfileConnector', 
               'Update-MgOnPremisePublishingProfileConnectorGroup', 
               'Update-MgOnPremisePublishingProfileConnectorMemberOf', 
               'Update-MgOnPremisePublishingProfilePublishedResource', 
               'Update-MgOnPremisePublishingProfilePublishedResourceAgentGroup', 
               'Update-MgOnPremisePublishingProfilePublishedResourceAgentGroupAgent', 
               'Update-MgOnPremisePublishingProfilePublishedResourceAgentGroupPublishedResource', 
               'Update-MgServicePrincipal', 
               'Update-MgServicePrincipalAppRoleAssignedTo', 
               'Update-MgServicePrincipalAppRoleAssignment', 
               'Update-MgServicePrincipalDelegatedPermissionClassification', 
               'Update-MgServicePrincipalEndpoint', 
               'Update-MgServicePrincipalFederatedIdentityCredential', 
               'Update-MgServicePrincipalLicenseDetail', 
               'Update-MgServicePrincipalPasswordSingleSignOnCredentials', 
               'Update-MgServicePrincipalSynchronization', 
               'Update-MgServicePrincipalSynchronizationJob', 
               'Update-MgServicePrincipalSynchronizationJobSchema', 
               'Update-MgServicePrincipalSynchronizationJobSchemaDirectory', 
               'Update-MgServicePrincipalSynchronizationTemplate', 
               'Update-MgServicePrincipalSynchronizationTemplateSchema', 
               'Update-MgServicePrincipalSynchronizationTemplateSchemaDirectory', 
               'Update-MgUserAppRoleAssignment'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Get-MgApplicationCreatedOnBehalf', 
               'Get-MgApplicationCreatedOnBehalfByRef', 
               'Get-MgServicePrincipalMember', 'Get-MgServicePrincipalMemberByRef', 
               'Get-MgServicePrincipalTransitiveMember', 
               'Get-MgServicePrincipalTransitiveMemberByRef', 
               'New-MgServicePrincipalMemberByRef', 
               'New-MgServicePrincipalTransitiveMemberByRef', 
               'Remove-MgApplicationCreatedOnBehalfByRef', 
               'Set-MgApplicationCreatedOnBehalfByRef'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    #Profiles of this module
    Profiles =  @('v1.0','v1.0-beta')

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Microsoft','Office365','Graph','PowerShell'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/devservicesagreement'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/microsoftgraph/msgraph-sdk-powershell'

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/microsoftgraph/msgraph-sdk-powershell/master/documentation/images/graph_color256.png'

        # ReleaseNotes of this module
        ReleaseNotes = 'See https://aka.ms/GraphPowerShell-Release.'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

