
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Apple push notification certificate.
.Description
Apple push notification certificate.

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApplePushNotificationCertificate1
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementapplepushnotificationcertificate
#>
function Get-MgDeviceManagementApplePushNotificationCertificate {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApplePushNotificationCertificate1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementApplePushNotificationCertificate_Get1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Compliance Management Partners configured by the tenant.
.Description
The list of Compliance Management Partners configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartner
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementcompliancemanagementpartner
#>
function Get-MgDeviceManagementComplianceManagementPartner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartner])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of complianceManagementPartner
    ${ComplianceManagementPartnerId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementComplianceManagementPartner_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementComplianceManagementPartner_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementComplianceManagementPartner_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Exchange Connectors configured by the tenant.
.Description
The list of Exchange Connectors configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExchangeConnector
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementexchangeconnector
#>
function Get-MgDeviceManagementExchangeConnector {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExchangeConnector])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementExchangeConnector
    ${DeviceManagementExchangeConnectorId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementExchangeConnector_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementExchangeConnector_GetViaIdentity';
            List = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementExchangeConnector_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The IOS software update installation statuses for this account.
.Description
The IOS software update installation statuses for this account.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIosUpdateDeviceStatus
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementioupdatestatuses
#>
function Get-MgDeviceManagementIoUpdateStatuses {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIosUpdateDeviceStatus])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of iosUpdateDeviceStatus
    ${IosUpdateDeviceStatusId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementIoUpdateStatuses_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementIoUpdateStatuses_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementIoUpdateStatuses_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Mobile threat Defense connectors configured by the tenant.
.Description
The list of Mobile threat Defense connectors configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMobileThreatDefenseConnector
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementmobilethreatdefenseconnector
#>
function Get-MgDeviceManagementMobileThreatDefenseConnector {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMobileThreatDefenseConnector])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mobileThreatDefenseConnector
    ${MobileThreatDefenseConnectorId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementMobileThreatDefenseConnector_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementMobileThreatDefenseConnector_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementMobileThreatDefenseConnector_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Device Management Partners configured by the tenant.
.Description
The list of Device Management Partners configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementPartner
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementpartner
#>
function Get-MgDeviceManagementPartner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementPartner])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementPartner
    ${DeviceManagementPartnerId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementPartner_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementPartner_GetViaIdentity';
            List = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementPartner_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The remote assist partners.
.Description
The remote assist partners.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRemoteAssistancePartner
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementremoteassistancepartner
#>
function Get-MgDeviceManagementRemoteAssistancePartner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRemoteAssistancePartner])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of remoteAssistancePartner
    ${RemoteAssistancePartnerId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRemoteAssistancePartner_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRemoteAssistancePartner_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRemoteAssistancePartner_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Resource Operations.
.Description
The Resource Operations.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResourceOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementresourceoperation
#>
function Get-MgDeviceManagementResourceOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResourceOperation])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of resourceOperation
    ${ResourceOperationId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementResourceOperation_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementResourceOperation_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementResourceOperation_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Role Assignments.
.Description
The Role Assignments.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementRoleAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementroleassignment
#>
function Get-MgDeviceManagementRoleAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementRoleAssignment])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceAndAppManagementRoleAssignment
    ${DeviceAndAppManagementRoleAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleAssignment_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleAssignment_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleAssignment_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Role definition this assignment is part of.
.Description
Role definition this assignment is part of.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementroledefinitionroleassignmentroledefinitionbyref
#>
function Get-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleAssignment
    ${RoleAssignmentId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Role definition this assignment is part of.
.Description
Role definition this assignment is part of.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementroledefinitionroleassignmentroledefinition
#>
function Get-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinition {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleAssignment
    ${RoleAssignmentId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinition_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinition_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
List of Role assignments for this role definition.
.Description
List of Role assignments for this role definition.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleAssignment1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementroledefinitionroleassignment
#>
function Get-MgDeviceManagementRoleDefinitionRoleAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleAssignment1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleAssignment
    ${RoleAssignmentId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleDefinitionRoleAssignment_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleDefinitionRoleAssignment_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleDefinitionRoleAssignment_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Role Definitions.
.Description
The Role Definitions.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementroledefinition
#>
function Get-MgDeviceManagementRoleDefinition {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleDefinition_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleDefinition_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementRoleDefinition_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The telecom expense management partners.
.Description
The telecom expense management partners.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTelecomExpenseManagementPartner
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementtelecomexpensemanagementpartner
#>
function Get-MgDeviceManagementTelecomExpenseManagementPartner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTelecomExpenseManagementPartner])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of telecomExpenseManagementPartner
    ${TelecomExpenseManagementPartnerId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTelecomExpenseManagementPartner_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTelecomExpenseManagementPartner_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTelecomExpenseManagementPartner_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Navigation link to the terms and conditions that are assigned.
.Description
Navigation link to the terms and conditions that are assigned.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementtermandconditionacceptancestatusestermandconditionbyref
#>
function Get-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditionsAcceptanceStatus
    ${TermsAndConditionsAcceptanceStatusId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Navigation link to the terms and conditions that are assigned.
.Description
Navigation link to the terms and conditions that are assigned.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementtermandconditionacceptancestatusestermandcondition
#>
function Get-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndCondition {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditionsAcceptanceStatus
    ${TermsAndConditionsAcceptanceStatusId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndCondition_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndCondition_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of acceptance statuses for this T&C policy.
.Description
The list of acceptance statuses for this T&C policy.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAcceptanceStatus
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementtermandconditionacceptancestatuses
#>
function Get-MgDeviceManagementTermAndConditionAcceptanceStatuses {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAcceptanceStatus])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditionsAcceptanceStatus
    ${TermsAndConditionsAcceptanceStatusId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndConditionAcceptanceStatuses_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndConditionAcceptanceStatuses_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndConditionAcceptanceStatuses_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of assignments for this T&C policy.
.Description
The list of assignments for this T&C policy.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementtermandconditionassignment
#>
function Get-MgDeviceManagementTermAndConditionAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAssignment])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditionsAssignment
    ${TermsAndConditionsAssignmentId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndConditionAssignment_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndConditionAssignment_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndConditionAssignment_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The terms and conditions associated with device management of the company.
.Description
The terms and conditions associated with device management of the company.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/get-mgdevicemanagementtermandcondition
#>
function Get-MgDeviceManagementTermAndCondition {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndCondition_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndCondition_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Get-MgDeviceManagementTermAndCondition_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Compliance Management Partners configured by the tenant.
.Description
The list of Compliance Management Partners configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartner
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartner
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ANDROIDENROLLMENTASSIGNMENTS <IMicrosoftGraphComplianceManagementPartnerAssignment[]>: User groups which enroll Android devices through partner.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

BODYPARAMETER <IMicrosoftGraphComplianceManagementPartner>: Compliance management partner for all platforms
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AndroidEnrollmentAssignments <IMicrosoftGraphComplianceManagementPartnerAssignment[]>]: User groups which enroll Android devices through partner.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.
  [AndroidOnboarded <Boolean?>]: Partner onboarded for Android devices.
  [DisplayName <String>]: Partner display name
  [IosEnrollmentAssignments <IMicrosoftGraphComplianceManagementPartnerAssignment[]>]: User groups which enroll ios devices through partner.
  [IosOnboarded <Boolean?>]: Partner onboarded for ios devices.
  [LastHeartbeatDateTime <DateTime?>]: Timestamp of last heartbeat after admin onboarded to the compliance management partner
  [MacOSEnrollmentAssignments <IMicrosoftGraphComplianceManagementPartnerAssignment[]>]: User groups which enroll Mac devices through partner.
  [MacOSOnboarded <Boolean?>]: Partner onboarded for Mac devices.
  [PartnerState <String>]: Partner state of this tenant.

IOSENROLLMENTASSIGNMENTS <IMicrosoftGraphComplianceManagementPartnerAssignment[]>: User groups which enroll ios devices through partner.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

MACOSENROLLMENTASSIGNMENTS <IMicrosoftGraphComplianceManagementPartnerAssignment[]>: User groups which enroll Mac devices through partner.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementcompliancemanagementpartner
#>
function New-MgDeviceManagementComplianceManagementPartner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartner])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartner]
    # Compliance management partner for all platforms
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartnerAssignment[]]
    # User groups which enroll Android devices through partner.
    # To construct, see NOTES section for ANDROIDENROLLMENTASSIGNMENTS properties and create a hash table.
    ${AndroidEnrollmentAssignments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Partner onboarded for Android devices.
    ${AndroidOnboarded},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner display name
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartnerAssignment[]]
    # User groups which enroll ios devices through partner.
    # To construct, see NOTES section for IOSENROLLMENTASSIGNMENTS properties and create a hash table.
    ${IosEnrollmentAssignments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Partner onboarded for ios devices.
    ${IosOnboarded},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp of last heartbeat after admin onboarded to the compliance management partner
    ${LastHeartbeatDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartnerAssignment[]]
    # User groups which enroll Mac devices through partner.
    # To construct, see NOTES section for MACOSENROLLMENTASSIGNMENTS properties and create a hash table.
    ${MacOSEnrollmentAssignments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Partner onboarded for Mac devices.
    ${MacOSOnboarded},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner state of this tenant.
    ${PartnerState},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementComplianceManagementPartner_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementComplianceManagementPartner_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Exchange Connectors configured by the tenant.
.Description
The list of Exchange Connectors configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExchangeConnector
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExchangeConnector
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphDeviceManagementExchangeConnector>: Entity which represents a connection to an Exchange environment.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ConnectorServerName <String>]: The name of the server hosting the Exchange Connector.
  [ExchangeAlias <String>]: An alias assigned to the Exchange server
  [ExchangeConnectorType <String>]: The type of Exchange Connector.
  [ExchangeOrganization <String>]: Exchange Organization to the Exchange server
  [LastSyncDateTime <DateTime?>]: Last sync time for the Exchange Connector
  [PrimarySmtpAddress <String>]: Email address used to configure the Service To Service Exchange Connector.
  [ServerName <String>]: The name of the Exchange server.
  [Status <String>]: The current status of the Exchange Connector.
  [Version <String>]: The version of the ExchangeConnectorAgent
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementexchangeconnector
#>
function New-MgDeviceManagementExchangeConnector {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExchangeConnector])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExchangeConnector]
    # Entity which represents a connection to an Exchange environment.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The name of the server hosting the Exchange Connector.
    ${ConnectorServerName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # An alias assigned to the Exchange server
    ${ExchangeAlias},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The type of Exchange Connector.
    ${ExchangeConnectorType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Exchange Organization to the Exchange server
    ${ExchangeOrganization},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last sync time for the Exchange Connector
    ${LastSyncDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email address used to configure the Service To Service Exchange Connector.
    ${PrimarySmtpAddress},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The name of the Exchange server.
    ${ServerName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The current status of the Exchange Connector.
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The version of the ExchangeConnectorAgent
    ${Version},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementExchangeConnector_Create';
            CreateExpanded = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementExchangeConnector_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The IOS software update installation statuses for this account.
.Description
The IOS software update installation statuses for this account.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIosUpdateDeviceStatus
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIosUpdateDeviceStatus
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphIosUpdateDeviceStatus>: iosUpdateDeviceStatus
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ComplianceGracePeriodExpirationDateTime <DateTime?>]: The DateTime when device compliance grace period expires
  [DeviceDisplayName <String>]: Device name of the DevicePolicyStatus.
  [DeviceId <String>]: The device id that is being reported.
  [DeviceModel <String>]: The device model that is being reported
  [InstallStatus <String>]: 
  [LastReportedDateTime <DateTime?>]: Last modified date time of the policy report.
  [OSVersion <String>]: The device version that is being reported.
  [Status <String>]: complianceStatus
  [UserId <String>]: The User id that is being reported.
  [UserName <String>]: The User Name that is being reported
  [UserPrincipalName <String>]: UserPrincipalName.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementioupdatestatuses
#>
function New-MgDeviceManagementIoUpdateStatuses {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIosUpdateDeviceStatus])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIosUpdateDeviceStatus]
    # iosUpdateDeviceStatus
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The DateTime when device compliance grace period expires
    ${ComplianceGracePeriodExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Device name of the DevicePolicyStatus.
    ${DeviceDisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The device id that is being reported.
    ${DeviceId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The device model that is being reported
    ${DeviceModel},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${InstallStatus},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last modified date time of the policy report.
    ${LastReportedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The device version that is being reported.
    ${OSVersion},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # complianceStatus
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The User id that is being reported.
    ${UserId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The User Name that is being reported
    ${UserName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # UserPrincipalName.
    ${UserPrincipalName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementIoUpdateStatuses_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementIoUpdateStatuses_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Mobile threat Defense connectors configured by the tenant.
.Description
The list of Mobile threat Defense connectors configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMobileThreatDefenseConnector
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMobileThreatDefenseConnector
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMobileThreatDefenseConnector>: Entity which represents a connection to Mobile threat defense partner.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AndroidDeviceBlockedOnMissingPartnerData <Boolean?>]: For Android, set whether Intune must receive data from the data sync partner prior to marking a device compliant
  [AndroidEnabled <Boolean?>]: For Android, set whether data from the data sync partner should be used during compliance evaluations
  [IosDeviceBlockedOnMissingPartnerData <Boolean?>]: For IOS, set whether Intune must receive data from the data sync partner prior to marking a device compliant
  [IosEnabled <Boolean?>]: For IOS, get or set whether data from the data sync partner should be used during compliance evaluations
  [LastHeartbeatDateTime <DateTime?>]: DateTime of last Heartbeat recieved from the Data Sync Partner
  [PartnerState <String>]: Partner state of this tenant.
  [PartnerUnresponsivenessThresholdInDays <Int32?>]: Get or Set days the per tenant tolerance to unresponsiveness for this partner integration
  [PartnerUnsupportedOSVersionBlocked <Boolean?>]: Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Data Sync Partner
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementmobilethreatdefenseconnector
#>
function New-MgDeviceManagementMobileThreatDefenseConnector {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMobileThreatDefenseConnector])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMobileThreatDefenseConnector]
    # Entity which represents a connection to Mobile threat defense partner.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # For Android, set whether Intune must receive data from the data sync partner prior to marking a device compliant
    ${AndroidDeviceBlockedOnMissingPartnerData},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # For Android, set whether data from the data sync partner should be used during compliance evaluations
    ${AndroidEnabled},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # For IOS, set whether Intune must receive data from the data sync partner prior to marking a device compliant
    ${IosDeviceBlockedOnMissingPartnerData},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # For IOS, get or set whether data from the data sync partner should be used during compliance evaluations
    ${IosEnabled},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime of last Heartbeat recieved from the Data Sync Partner
    ${LastHeartbeatDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner state of this tenant.
    ${PartnerState},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Get or Set days the per tenant tolerance to unresponsiveness for this partner integration
    ${PartnerUnresponsivenessThresholdInDays},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Data Sync Partner
    ${PartnerUnsupportedOSVersionBlocked},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementMobileThreatDefenseConnector_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementMobileThreatDefenseConnector_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Device Management Partners configured by the tenant.
.Description
The list of Device Management Partners configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementPartner
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementPartner
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphDeviceManagementPartner>: Entity which represents a connection to device management partner.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DisplayName <String>]: Partner display name
  [IsConfigured <Boolean?>]: Whether device management partner is configured or not
  [LastHeartbeatDateTime <DateTime?>]: Timestamp of last heartbeat after admin enabled option Connect to Device management Partner
  [PartnerAppType <String>]: Partner App Type.
  [PartnerState <String>]: Partner state of this tenant.
  [SingleTenantAppId <String>]: Partner Single tenant App id
  [WhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime <DateTime?>]: DateTime in UTC when PartnerDevices will be marked as NonCompliant
  [WhenPartnerDevicesWillBeRemovedDateTime <DateTime?>]: DateTime in UTC when PartnerDevices will be removed
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementpartner
#>
function New-MgDeviceManagementPartner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementPartner])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementPartner]
    # Entity which represents a connection to device management partner.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner display name
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Whether device management partner is configured or not
    ${IsConfigured},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp of last heartbeat after admin enabled option Connect to Device management Partner
    ${LastHeartbeatDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner App Type.
    ${PartnerAppType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner state of this tenant.
    ${PartnerState},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner Single tenant App id
    ${SingleTenantAppId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime in UTC when PartnerDevices will be marked as NonCompliant
    ${WhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime in UTC when PartnerDevices will be removed
    ${WhenPartnerDevicesWillBeRemovedDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementPartner_Create';
            CreateExpanded = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementPartner_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The remote assist partners.
.Description
The remote assist partners.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRemoteAssistancePartner
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRemoteAssistancePartner
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphRemoteAssistancePartner>: RemoteAssistPartner resources represent the metadata and status of a given Remote Assistance partner service.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DisplayName <String>]: Display name of the partner.
  [LastConnectionDateTime <DateTime?>]: Timestamp of the last request sent to Intune by the TEM partner.
  [OnboardingStatus <String>]: The current TeamViewer connector status
  [OnboardingUrl <String>]: URL of the partner's onboarding portal, where an administrator can configure their Remote Assistance service.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementremoteassistancepartner
#>
function New-MgDeviceManagementRemoteAssistancePartner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRemoteAssistancePartner])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRemoteAssistancePartner]
    # RemoteAssistPartner resources represent the metadata and status of a given Remote Assistance partner service.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the partner.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp of the last request sent to Intune by the TEM partner.
    ${LastConnectionDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The current TeamViewer connector status
    ${OnboardingStatus},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # URL of the partner's onboarding portal, where an administrator can configure their Remote Assistance service.
    ${OnboardingUrl},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementRemoteAssistancePartner_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementRemoteAssistancePartner_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Resource Operations.
.Description
The Resource Operations.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResourceOperation
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResourceOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphResourceOperation>: Describes the resourceOperation resource (entity) of the Microsoft Graph API (REST), which supports Intune workflows related to role-based access control (RBAC).
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActionName <String>]: Type of action this operation is going to perform. The actionName should be concise and limited to as few words as possible.
  [Description <String>]: Description of the resource operation. The description is used in mouse-over text for the operation when shown in the Azure Portal.
  [ResourceName <String>]: Name of the Resource this operation is performed on.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementresourceoperation
#>
function New-MgDeviceManagementResourceOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResourceOperation])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResourceOperation]
    # Describes the resourceOperation resource (entity) of the Microsoft Graph API (REST), which supports Intune workflows related to role-based access control (RBAC).
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Type of action this operation is going to perform.
    # The actionName should be concise and limited to as few words as possible.
    ${ActionName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the resource operation.
    # The description is used in mouse-over text for the operation when shown in the Azure Portal.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name of the Resource this operation is performed on.
    ${ResourceName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementResourceOperation_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementResourceOperation_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Role Assignments.
.Description
The Role Assignments.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementRoleAssignment
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementRoleAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphDeviceAndAppManagementRoleAssignment>: The Role Assignment resource. Role assignments tie together a role definition with members and scopes. There can be one or more role assignments per role. This applies to custom and built-in roles.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the Role Assignment.
  [DisplayName <String>]: The display or friendly name of the role Assignment.
  [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
  [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role definition.
    [DisplayName <String>]: Display Name of the Role definition.
    [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
    [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
      [Id <String>]: Read-only.
      [Description <String>]: Description of the Role Assignment.
      [DisplayName <String>]: The display or friendly name of the role Assignment.
      [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
      [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
      [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
        [AllowedResourceActions <String[]>]: Allowed Actions
        [NotAllowedResourceActions <String[]>]: Not Allowed Actions.
  [Id <String>]: Read-only.
  [Members <String[]>]: The list of ids of role member security groups. These are IDs from Azure Active Directory.

ROLEDEFINITION <IMicrosoftGraphRoleDefinition>: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: Description of the Role definition.
  [DisplayName <String>]: Display Name of the Role definition.
  [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
  [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role Assignment.
    [DisplayName <String>]: The display or friendly name of the role Assignment.
    [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
    [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
    [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
      [AllowedResourceActions <String[]>]: Allowed Actions
      [NotAllowedResourceActions <String[]>]: Not Allowed Actions.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementroleassignment
#>
function New-MgDeviceManagementRoleAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementRoleAssignment])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementRoleAssignment]
    # The Role Assignment resource.
    # Role assignments tie together a role definition with members and scopes.
    # There can be one or more role assignments per role.
    # This applies to custom and built-in roles.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the Role Assignment.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display or friendly name of the role Assignment.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The list of ids of role member security groups.
    # These are IDs from Azure Active Directory.
    ${Members},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of ids of role scope member security groups.
    # These are IDs from Azure Active Directory.
    ${ResourceScopes},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition]
    # The Role Definition resource.
    # The role definition is the foundation of role based access in Intune.
    # The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource.
    # There are two types of roles, built-in and custom.
    # Built-in roles cannot be modified.
    # Both built-in roles and custom roles must have assignments to be enforced.
    # Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    # To construct, see NOTES section for ROLEDEFINITION properties and create a hash table.
    ${RoleDefinition},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementRoleAssignment_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementRoleAssignment_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
List of Role assignments for this role definition.
.Description
List of Role assignments for this role definition.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleAssignment1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleAssignment1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphRoleAssignment1>: The Role Assignment resource. Role assignments tie together a role definition with members and scopes. There can be one or more role assignments per role. This applies to custom and built-in roles.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: Description of the Role Assignment.
  [DisplayName <String>]: The display or friendly name of the role Assignment.
  [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
  [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role definition.
    [DisplayName <String>]: Display Name of the Role definition.
    [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
    [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
    [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
      [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
        [AllowedResourceActions <String[]>]: Allowed Actions
        [NotAllowedResourceActions <String[]>]: Not Allowed Actions.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate

ROLEDEFINITION <IMicrosoftGraphRoleDefinition>: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: Description of the Role definition.
  [DisplayName <String>]: Display Name of the Role definition.
  [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
  [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role Assignment.
    [DisplayName <String>]: The display or friendly name of the role Assignment.
    [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
    [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
    [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
      [AllowedResourceActions <String[]>]: Allowed Actions
      [NotAllowedResourceActions <String[]>]: Not Allowed Actions.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementroledefinitionroleassignment
#>
function New-MgDeviceManagementRoleDefinitionRoleAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleAssignment1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleAssignment1]
    # The Role Assignment resource.
    # Role assignments tie together a role definition with members and scopes.
    # There can be one or more role assignments per role.
    # This applies to custom and built-in roles.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the Role Assignment.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display or friendly name of the role Assignment.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of ids of role scope member security groups.
    # These are IDs from Azure Active Directory.
    ${ResourceScopes},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition]
    # The Role Definition resource.
    # The role definition is the foundation of role based access in Intune.
    # The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource.
    # There are two types of roles, built-in and custom.
    # Built-in roles cannot be modified.
    # Both built-in roles and custom roles must have assignments to be enforced.
    # Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    # To construct, see NOTES section for ROLEDEFINITION properties and create a hash table.
    ${RoleDefinition},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementRoleDefinitionRoleAssignment_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementRoleDefinitionRoleAssignment_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementRoleDefinitionRoleAssignment_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementRoleDefinitionRoleAssignment_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Role Definitions.
.Description
The Role Definitions.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphRoleDefinition>: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: Description of the Role definition.
  [DisplayName <String>]: Display Name of the Role definition.
  [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
  [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role Assignment.
    [DisplayName <String>]: The display or friendly name of the role Assignment.
    [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
    [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
    [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
      [AllowedResourceActions <String[]>]: Allowed Actions
      [NotAllowedResourceActions <String[]>]: Not Allowed Actions.

ROLEASSIGNMENTS <IMicrosoftGraphRoleAssignment1[]>: List of Role assignments for this role definition.
  [Id <String>]: Read-only.
  [Description <String>]: Description of the Role Assignment.
  [DisplayName <String>]: The display or friendly name of the role Assignment.
  [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
  [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role definition.
    [DisplayName <String>]: Display Name of the Role definition.
    [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
    [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
    [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
      [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
        [AllowedResourceActions <String[]>]: Allowed Actions
        [NotAllowedResourceActions <String[]>]: Not Allowed Actions.

ROLEPERMISSIONS <IMicrosoftGraphRolePermission[]>: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
  [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
    [AllowedResourceActions <String[]>]: Allowed Actions
    [NotAllowedResourceActions <String[]>]: Not Allowed Actions.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementroledefinition
#>
function New-MgDeviceManagementRoleDefinition {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition]
    # The Role Definition resource.
    # The role definition is the foundation of role based access in Intune.
    # The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource.
    # There are two types of roles, built-in and custom.
    # Built-in roles cannot be modified.
    # Both built-in roles and custom roles must have assignments to be enforced.
    # Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the Role definition.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display Name of the Role definition.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Type of Role.
    # Set to True if it is built-in, or set to False if it is a custom role definition.
    ${IsBuiltIn},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleAssignment1[]]
    # List of Role assignments for this role definition.
    # To construct, see NOTES section for ROLEASSIGNMENTS properties and create a hash table.
    ${RoleAssignments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRolePermission[]]
    # List of Role Permissions this role is allowed to perform.
    # These must match the actionName that is defined as part of the rolePermission.
    # To construct, see NOTES section for ROLEPERMISSIONS properties and create a hash table.
    ${RolePermissions},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementRoleDefinition_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementRoleDefinition_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The telecom expense management partners.
.Description
The telecom expense management partners.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTelecomExpenseManagementPartner
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTelecomExpenseManagementPartner
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphTelecomExpenseManagementPartner>: telecomExpenseManagementPartner resources represent the metadata and status of a given TEM service. Once your organization has onboarded with a partner, the partner can be enabled or disabled to switch TEM functionality on or off.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AppAuthorized <Boolean?>]: Whether the partner's AAD app has been authorized to access Intune.
  [DisplayName <String>]: Display name of the TEM partner.
  [Enabled <Boolean?>]: Whether Intune's connection to the TEM service is currently enabled or disabled.
  [LastConnectionDateTime <DateTime?>]: Timestamp of the last request sent to Intune by the TEM partner.
  [Url <String>]: URL of the TEM partner's administrative control panel, where an administrator can configure their TEM service.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementtelecomexpensemanagementpartner
#>
function New-MgDeviceManagementTelecomExpenseManagementPartner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTelecomExpenseManagementPartner])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTelecomExpenseManagementPartner]
    # telecomExpenseManagementPartner resources represent the metadata and status of a given TEM service.
    # Once your organization has onboarded with a partner, the partner can be enabled or disabled to switch TEM functionality on or off.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Whether the partner's AAD app has been authorized to access Intune.
    ${AppAuthorized},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the TEM partner.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Whether Intune's connection to the TEM service is currently enabled or disabled.
    ${Enabled},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp of the last request sent to Intune by the TEM partner.
    ${LastConnectionDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # URL of the TEM partner's administrative control panel, where an administrator can configure their TEM service.
    ${Url},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTelecomExpenseManagementPartner_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTelecomExpenseManagementPartner_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of acceptance statuses for this T&C policy.
.Description
The list of acceptance statuses for this T&C policy.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAcceptanceStatus
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAcceptanceStatus
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphTermsAndConditionsAcceptanceStatus>: A termsAndConditionsAcceptanceStatus entity represents the acceptance status of a given Terms and Conditions (T&C) policy by a given user. Users must accept the most up-to-date version of the terms in order to retain access to the Company Portal.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AcceptedDateTime <DateTime?>]: DateTime when the terms were last accepted by the user.
  [AcceptedVersion <Int32?>]: Most recent version number of the T&C accepted by the user.
  [TermsAndConditions <IMicrosoftGraphTermsAndConditions1>]: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AcceptanceStatement <String>]: Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
    [AcceptanceStatuses <IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]>]: The list of acceptance statuses for this T&C policy.
    [Assignments <IMicrosoftGraphTermsAndConditionsAssignment[]>]: The list of assignments for this T&C policy.
      [Id <String>]: Read-only.
      [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
        [(Any) <Object>]: This indicates any property can be added to this object.
    [BodyText <String>]: Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
    [CreatedDateTime <DateTime?>]: DateTime the object was created.
    [Description <String>]: Administrator-supplied description of the T&C policy.
    [DisplayName <String>]: Administrator-supplied name for the T&C policy.
    [LastModifiedDateTime <DateTime?>]: DateTime the object was last modified.
    [Title <String>]: Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
    [Version <Int32?>]: Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
  [UserDisplayName <String>]: Display name of the user whose acceptance the entity represents.
  [UserPrincipalName <String>]: The userPrincipalName of the User that accepted the term.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate

TERMSANDCONDITIONS <IMicrosoftGraphTermsAndConditions1>: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AcceptanceStatement <String>]: Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
  [AcceptanceStatuses <IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]>]: The list of acceptance statuses for this T&C policy.
    [Id <String>]: Read-only.
    [AcceptedDateTime <DateTime?>]: DateTime when the terms were last accepted by the user.
    [AcceptedVersion <Int32?>]: Most recent version number of the T&C accepted by the user.
    [TermsAndConditions <IMicrosoftGraphTermsAndConditions1>]: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    [UserDisplayName <String>]: Display name of the user whose acceptance the entity represents.
    [UserPrincipalName <String>]: The userPrincipalName of the User that accepted the term.
  [Assignments <IMicrosoftGraphTermsAndConditionsAssignment[]>]: The list of assignments for this T&C policy.
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.
  [BodyText <String>]: Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
  [CreatedDateTime <DateTime?>]: DateTime the object was created.
  [Description <String>]: Administrator-supplied description of the T&C policy.
  [DisplayName <String>]: Administrator-supplied name for the T&C policy.
  [LastModifiedDateTime <DateTime?>]: DateTime the object was last modified.
  [Title <String>]: Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
  [Version <Int32?>]: Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementtermandconditionacceptancestatuses
#>
function New-MgDeviceManagementTermAndConditionAcceptanceStatuses {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAcceptanceStatus])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAcceptanceStatus]
    # A termsAndConditionsAcceptanceStatus entity represents the acceptance status of a given Terms and Conditions (T&C) policy by a given user.
    # Users must accept the most up-to-date version of the terms in order to retain access to the Company Portal.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime when the terms were last accepted by the user.
    ${AcceptedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Most recent version number of the T&C accepted by the user.
    ${AcceptedVersion},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1]
    # A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy.
    # T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance.
    # They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    # To construct, see NOTES section for TERMSANDCONDITIONS properties and create a hash table.
    ${TermsAndConditions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the user whose acceptance the entity represents.
    ${UserDisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The userPrincipalName of the User that accepted the term.
    ${UserPrincipalName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTermAndConditionAcceptanceStatuses_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTermAndConditionAcceptanceStatuses_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTermAndConditionAcceptanceStatuses_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTermAndConditionAcceptanceStatuses_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of assignments for this T&C policy.
.Description
The list of assignments for this T&C policy.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAssignment
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphTermsAndConditionsAssignment>: A termsAndConditionsAssignment entity represents the assignment of a given Terms and Conditions (T&C) policy to a given group. Users in the group will be required to accept the terms in order to have devices enrolled into Intune.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementtermandconditionassignment
#>
function New-MgDeviceManagementTermAndConditionAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAssignment])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAssignment]
    # A termsAndConditionsAssignment entity represents the assignment of a given Terms and Conditions (T&C) policy to a given group.
    # Users in the group will be required to accept the terms in order to have devices enrolled into Intune.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementAssignmentTarget]))]
    [System.Collections.Hashtable]
    # Base type for assignment targets.
    ${Target},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTermAndConditionAssignment_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTermAndConditionAssignment_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTermAndConditionAssignment_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTermAndConditionAssignment_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The terms and conditions associated with device management of the company.
.Description
The terms and conditions associated with device management of the company.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACCEPTANCESTATUSES <IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]>: The list of acceptance statuses for this T&C policy.
  [Id <String>]: Read-only.
  [AcceptedDateTime <DateTime?>]: DateTime when the terms were last accepted by the user.
  [AcceptedVersion <Int32?>]: Most recent version number of the T&C accepted by the user.
  [TermsAndConditions <IMicrosoftGraphTermsAndConditions1>]: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AcceptanceStatement <String>]: Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
    [AcceptanceStatuses <IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]>]: The list of acceptance statuses for this T&C policy.
    [Assignments <IMicrosoftGraphTermsAndConditionsAssignment[]>]: The list of assignments for this T&C policy.
      [Id <String>]: Read-only.
      [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
        [(Any) <Object>]: This indicates any property can be added to this object.
    [BodyText <String>]: Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
    [CreatedDateTime <DateTime?>]: DateTime the object was created.
    [Description <String>]: Administrator-supplied description of the T&C policy.
    [DisplayName <String>]: Administrator-supplied name for the T&C policy.
    [LastModifiedDateTime <DateTime?>]: DateTime the object was last modified.
    [Title <String>]: Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
    [Version <Int32?>]: Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
  [UserDisplayName <String>]: Display name of the user whose acceptance the entity represents.
  [UserPrincipalName <String>]: The userPrincipalName of the User that accepted the term.

ASSIGNMENTS <IMicrosoftGraphTermsAndConditionsAssignment[]>: The list of assignments for this T&C policy.
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

BODYPARAMETER <IMicrosoftGraphTermsAndConditions1>: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AcceptanceStatement <String>]: Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
  [AcceptanceStatuses <IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]>]: The list of acceptance statuses for this T&C policy.
    [Id <String>]: Read-only.
    [AcceptedDateTime <DateTime?>]: DateTime when the terms were last accepted by the user.
    [AcceptedVersion <Int32?>]: Most recent version number of the T&C accepted by the user.
    [TermsAndConditions <IMicrosoftGraphTermsAndConditions1>]: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    [UserDisplayName <String>]: Display name of the user whose acceptance the entity represents.
    [UserPrincipalName <String>]: The userPrincipalName of the User that accepted the term.
  [Assignments <IMicrosoftGraphTermsAndConditionsAssignment[]>]: The list of assignments for this T&C policy.
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.
  [BodyText <String>]: Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
  [CreatedDateTime <DateTime?>]: DateTime the object was created.
  [Description <String>]: Administrator-supplied description of the T&C policy.
  [DisplayName <String>]: Administrator-supplied name for the T&C policy.
  [LastModifiedDateTime <DateTime?>]: DateTime the object was last modified.
  [Title <String>]: Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
  [Version <Int32?>]: Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/new-mgdevicemanagementtermandcondition
#>
function New-MgDeviceManagementTermAndCondition {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1]
    # A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy.
    # T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance.
    # They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy.
    # This is shown to the user on prompts to accept the T&C policy.
    ${AcceptanceStatement},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]]
    # The list of acceptance statuses for this T&C policy.
    # To construct, see NOTES section for ACCEPTANCESTATUSES properties and create a hash table.
    ${AcceptanceStatuses},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAssignment[]]
    # The list of assignments for this T&C policy.
    # To construct, see NOTES section for ASSIGNMENTS properties and create a hash table.
    ${Assignments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Administrator-supplied body text of the terms and conditions, typically the terms themselves.
    # This is shown to the user on prompts to accept the T&C policy.
    ${BodyText},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime the object was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Administrator-supplied description of the T&C policy.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Administrator-supplied name for the T&C policy.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime the object was last modified.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Administrator-supplied title of the terms and conditions.
    # This is shown to the user on prompts to accept the T&C policy.
    ${Title},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Integer indicating the current version of the terms.
    # Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
    ${Version},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTermAndCondition_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\New-MgDeviceManagementTermAndCondition_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Apple push notification certificate.
.Description
Apple push notification certificate.

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementapplepushnotificationcertificate
#>
function Remove-MgDeviceManagementApplePushNotificationCertificate {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementApplePushNotificationCertificate_Delete1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Compliance Management Partners configured by the tenant.
.Description
The list of Compliance Management Partners configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementcompliancemanagementpartner
#>
function Remove-MgDeviceManagementComplianceManagementPartner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of complianceManagementPartner
    ${ComplianceManagementPartnerId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementComplianceManagementPartner_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementComplianceManagementPartner_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Exchange Connectors configured by the tenant.
.Description
The list of Exchange Connectors configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementexchangeconnector
#>
function Remove-MgDeviceManagementExchangeConnector {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementExchangeConnector
    ${DeviceManagementExchangeConnectorId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementExchangeConnector_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementExchangeConnector_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The IOS software update installation statuses for this account.
.Description
The IOS software update installation statuses for this account.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementioupdatestatuses
#>
function Remove-MgDeviceManagementIoUpdateStatuses {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of iosUpdateDeviceStatus
    ${IosUpdateDeviceStatusId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementIoUpdateStatuses_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementIoUpdateStatuses_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Mobile threat Defense connectors configured by the tenant.
.Description
The list of Mobile threat Defense connectors configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementmobilethreatdefenseconnector
#>
function Remove-MgDeviceManagementMobileThreatDefenseConnector {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mobileThreatDefenseConnector
    ${MobileThreatDefenseConnectorId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementMobileThreatDefenseConnector_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementMobileThreatDefenseConnector_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Device Management Partners configured by the tenant.
.Description
The list of Device Management Partners configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementpartner
#>
function Remove-MgDeviceManagementPartner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementPartner
    ${DeviceManagementPartnerId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementPartner_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementPartner_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The remote assist partners.
.Description
The remote assist partners.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementremoteassistancepartner
#>
function Remove-MgDeviceManagementRemoteAssistancePartner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of remoteAssistancePartner
    ${RemoteAssistancePartnerId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementRemoteAssistancePartner_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementRemoteAssistancePartner_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Resource Operations.
.Description
The Resource Operations.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementresourceoperation
#>
function Remove-MgDeviceManagementResourceOperation {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of resourceOperation
    ${ResourceOperationId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementResourceOperation_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementResourceOperation_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Role Assignments.
.Description
The Role Assignments.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementroleassignment
#>
function Remove-MgDeviceManagementRoleAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceAndAppManagementRoleAssignment
    ${DeviceAndAppManagementRoleAssignmentId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementRoleAssignment_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementRoleAssignment_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Role definition this assignment is part of.
.Description
Role definition this assignment is part of.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementroledefinitionroleassignmentroledefinitionbyref
#>
function Remove-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleAssignment
    ${RoleAssignmentId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
List of Role assignments for this role definition.
.Description
List of Role assignments for this role definition.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementroledefinitionroleassignment
#>
function Remove-MgDeviceManagementRoleDefinitionRoleAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleAssignment
    ${RoleAssignmentId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementRoleDefinitionRoleAssignment_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementRoleDefinitionRoleAssignment_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Role Definitions.
.Description
The Role Definitions.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementroledefinition
#>
function Remove-MgDeviceManagementRoleDefinition {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementRoleDefinition_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementRoleDefinition_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The telecom expense management partners.
.Description
The telecom expense management partners.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementtelecomexpensemanagementpartner
#>
function Remove-MgDeviceManagementTelecomExpenseManagementPartner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of telecomExpenseManagementPartner
    ${TelecomExpenseManagementPartnerId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementTelecomExpenseManagementPartner_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementTelecomExpenseManagementPartner_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Navigation link to the terms and conditions that are assigned.
.Description
Navigation link to the terms and conditions that are assigned.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementtermandconditionacceptancestatusestermandconditionbyref
#>
function Remove-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditionsAcceptanceStatus
    ${TermsAndConditionsAcceptanceStatusId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of acceptance statuses for this T&C policy.
.Description
The list of acceptance statuses for this T&C policy.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementtermandconditionacceptancestatuses
#>
function Remove-MgDeviceManagementTermAndConditionAcceptanceStatuses {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditionsAcceptanceStatus
    ${TermsAndConditionsAcceptanceStatusId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementTermAndConditionAcceptanceStatuses_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementTermAndConditionAcceptanceStatuses_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of assignments for this T&C policy.
.Description
The list of assignments for this T&C policy.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementtermandconditionassignment
#>
function Remove-MgDeviceManagementTermAndConditionAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditionsAssignment
    ${TermsAndConditionsAssignmentId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementTermAndConditionAssignment_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementTermAndConditionAssignment_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The terms and conditions associated with device management of the company.
.Description
The terms and conditions associated with device management of the company.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/remove-mgdevicemanagementtermandcondition
#>
function Remove-MgDeviceManagementTermAndCondition {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementTermAndCondition_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Remove-MgDeviceManagementTermAndCondition_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Role definition this assignment is part of.
.Description
Role definition this assignment is part of.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/set-mgdevicemanagementroledefinitionroleassignmentroledefinitionbyref
#>
function Set-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleAssignment
    ${RoleAssignmentId},

    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IPaths1Aqc8O2DevicemanagementRoledefinitionsRoledefinitionIdRoleassignmentsRoleassignmentIdRoledefinitionRefPutRequestbodyContentApplicationJsonSchema]))]
    [System.Collections.Hashtable]
    # .
    ${BodyParameter},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Set1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Set-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef_Set1';
            SetExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Set-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef_SetExpanded1';
            SetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Set-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef_SetViaIdentity1';
            SetViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Set-MgDeviceManagementRoleDefinitionRoleAssignmentRoleDefinitionByRef_SetViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Navigation link to the terms and conditions that are assigned.
.Description
Navigation link to the terms and conditions that are assigned.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/set-mgdevicemanagementtermandconditionacceptancestatusestermandconditionbyref
#>
function Set-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditionsAcceptanceStatus
    ${TermsAndConditionsAcceptanceStatusId},

    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IPaths18U0Lg2DevicemanagementTermsandconditionsIdAcceptancestatusesTermsandconditionsacceptancestatusIdTermsandconditionsRefPutRequestbodyContentApplicationJsonSchema]))]
    [System.Collections.Hashtable]
    # .
    ${BodyParameter},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Set1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Set-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef_Set1';
            SetExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Set-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef_SetExpanded1';
            SetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Set-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef_SetViaIdentity1';
            SetViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Set-MgDeviceManagementTermAndConditionAcceptanceStatusesTermAndConditionByRef_SetViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Apple push notification certificate.
.Description
Apple push notification certificate.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApplePushNotificationCertificate1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphApplePushNotificationCertificate1>: Apple push notification certificate.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AppleIdentifier <String>]: Apple Id of the account used to create the MDM push certificate.
  [Certificate <String>]: Not yet documented
  [CertificateSerialNumber <String>]: Certificate serial number. This property is read-only.
  [ExpirationDateTime <DateTime?>]: The expiration date and time for Apple push notification certificate.
  [LastModifiedDateTime <DateTime?>]: Last modified date and time for Apple push notification certificate.
  [TopicIdentifier <String>]: Topic Id.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementapplepushnotificationcertificate
#>
function Update-MgDeviceManagementApplePushNotificationCertificate {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApplePushNotificationCertificate1]
    # Apple push notification certificate.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Apple Id of the account used to create the MDM push certificate.
    ${AppleIdentifier},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Not yet documented
    ${Certificate},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Certificate serial number.
    # This property is read-only.
    ${CertificateSerialNumber},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The expiration date and time for Apple push notification certificate.
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last modified date and time for Apple push notification certificate.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Topic Id.
    ${TopicIdentifier},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementApplePushNotificationCertificate_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementApplePushNotificationCertificate_UpdateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Compliance Management Partners configured by the tenant.
.Description
The list of Compliance Management Partners configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartner
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ANDROIDENROLLMENTASSIGNMENTS <IMicrosoftGraphComplianceManagementPartnerAssignment[]>: User groups which enroll Android devices through partner.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

BODYPARAMETER <IMicrosoftGraphComplianceManagementPartner>: Compliance management partner for all platforms
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AndroidEnrollmentAssignments <IMicrosoftGraphComplianceManagementPartnerAssignment[]>]: User groups which enroll Android devices through partner.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.
  [AndroidOnboarded <Boolean?>]: Partner onboarded for Android devices.
  [DisplayName <String>]: Partner display name
  [IosEnrollmentAssignments <IMicrosoftGraphComplianceManagementPartnerAssignment[]>]: User groups which enroll ios devices through partner.
  [IosOnboarded <Boolean?>]: Partner onboarded for ios devices.
  [LastHeartbeatDateTime <DateTime?>]: Timestamp of last heartbeat after admin onboarded to the compliance management partner
  [MacOSEnrollmentAssignments <IMicrosoftGraphComplianceManagementPartnerAssignment[]>]: User groups which enroll Mac devices through partner.
  [MacOSOnboarded <Boolean?>]: Partner onboarded for Mac devices.
  [PartnerState <String>]: Partner state of this tenant.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate

IOSENROLLMENTASSIGNMENTS <IMicrosoftGraphComplianceManagementPartnerAssignment[]>: User groups which enroll ios devices through partner.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

MACOSENROLLMENTASSIGNMENTS <IMicrosoftGraphComplianceManagementPartnerAssignment[]>: User groups which enroll Mac devices through partner.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementcompliancemanagementpartner
#>
function Update-MgDeviceManagementComplianceManagementPartner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of complianceManagementPartner
    ${ComplianceManagementPartnerId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartner]
    # Compliance management partner for all platforms
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartnerAssignment[]]
    # User groups which enroll Android devices through partner.
    # To construct, see NOTES section for ANDROIDENROLLMENTASSIGNMENTS properties and create a hash table.
    ${AndroidEnrollmentAssignments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Partner onboarded for Android devices.
    ${AndroidOnboarded},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner display name
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartnerAssignment[]]
    # User groups which enroll ios devices through partner.
    # To construct, see NOTES section for IOSENROLLMENTASSIGNMENTS properties and create a hash table.
    ${IosEnrollmentAssignments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Partner onboarded for ios devices.
    ${IosOnboarded},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp of last heartbeat after admin onboarded to the compliance management partner
    ${LastHeartbeatDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceManagementPartnerAssignment[]]
    # User groups which enroll Mac devices through partner.
    # To construct, see NOTES section for MACOSENROLLMENTASSIGNMENTS properties and create a hash table.
    ${MacOSEnrollmentAssignments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Partner onboarded for Mac devices.
    ${MacOSOnboarded},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner state of this tenant.
    ${PartnerState},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementComplianceManagementPartner_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementComplianceManagementPartner_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementComplianceManagementPartner_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementComplianceManagementPartner_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Exchange Connectors configured by the tenant.
.Description
The list of Exchange Connectors configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExchangeConnector
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphDeviceManagementExchangeConnector>: Entity which represents a connection to an Exchange environment.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ConnectorServerName <String>]: The name of the server hosting the Exchange Connector.
  [ExchangeAlias <String>]: An alias assigned to the Exchange server
  [ExchangeConnectorType <String>]: The type of Exchange Connector.
  [ExchangeOrganization <String>]: Exchange Organization to the Exchange server
  [LastSyncDateTime <DateTime?>]: Last sync time for the Exchange Connector
  [PrimarySmtpAddress <String>]: Email address used to configure the Service To Service Exchange Connector.
  [ServerName <String>]: The name of the Exchange server.
  [Status <String>]: The current status of the Exchange Connector.
  [Version <String>]: The version of the ExchangeConnectorAgent

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementexchangeconnector
#>
function Update-MgDeviceManagementExchangeConnector {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementExchangeConnector
    ${DeviceManagementExchangeConnectorId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExchangeConnector]
    # Entity which represents a connection to an Exchange environment.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The name of the server hosting the Exchange Connector.
    ${ConnectorServerName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # An alias assigned to the Exchange server
    ${ExchangeAlias},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The type of Exchange Connector.
    ${ExchangeConnectorType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Exchange Organization to the Exchange server
    ${ExchangeOrganization},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last sync time for the Exchange Connector
    ${LastSyncDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email address used to configure the Service To Service Exchange Connector.
    ${PrimarySmtpAddress},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The name of the Exchange server.
    ${ServerName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The current status of the Exchange Connector.
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The version of the ExchangeConnectorAgent
    ${Version},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementExchangeConnector_Update';
            UpdateExpanded = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementExchangeConnector_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementExchangeConnector_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementExchangeConnector_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The IOS software update installation statuses for this account.
.Description
The IOS software update installation statuses for this account.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIosUpdateDeviceStatus
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphIosUpdateDeviceStatus>: iosUpdateDeviceStatus
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ComplianceGracePeriodExpirationDateTime <DateTime?>]: The DateTime when device compliance grace period expires
  [DeviceDisplayName <String>]: Device name of the DevicePolicyStatus.
  [DeviceId <String>]: The device id that is being reported.
  [DeviceModel <String>]: The device model that is being reported
  [InstallStatus <String>]: 
  [LastReportedDateTime <DateTime?>]: Last modified date time of the policy report.
  [OSVersion <String>]: The device version that is being reported.
  [Status <String>]: complianceStatus
  [UserId <String>]: The User id that is being reported.
  [UserName <String>]: The User Name that is being reported
  [UserPrincipalName <String>]: UserPrincipalName.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementioupdatestatuses
#>
function Update-MgDeviceManagementIoUpdateStatuses {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of iosUpdateDeviceStatus
    ${IosUpdateDeviceStatusId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIosUpdateDeviceStatus]
    # iosUpdateDeviceStatus
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The DateTime when device compliance grace period expires
    ${ComplianceGracePeriodExpirationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Device name of the DevicePolicyStatus.
    ${DeviceDisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The device id that is being reported.
    ${DeviceId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The device model that is being reported
    ${DeviceModel},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${InstallStatus},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last modified date time of the policy report.
    ${LastReportedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The device version that is being reported.
    ${OSVersion},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # complianceStatus
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The User id that is being reported.
    ${UserId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The User Name that is being reported
    ${UserName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # UserPrincipalName.
    ${UserPrincipalName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementIoUpdateStatuses_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementIoUpdateStatuses_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementIoUpdateStatuses_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementIoUpdateStatuses_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Mobile threat Defense connectors configured by the tenant.
.Description
The list of Mobile threat Defense connectors configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMobileThreatDefenseConnector
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMobileThreatDefenseConnector>: Entity which represents a connection to Mobile threat defense partner.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AndroidDeviceBlockedOnMissingPartnerData <Boolean?>]: For Android, set whether Intune must receive data from the data sync partner prior to marking a device compliant
  [AndroidEnabled <Boolean?>]: For Android, set whether data from the data sync partner should be used during compliance evaluations
  [IosDeviceBlockedOnMissingPartnerData <Boolean?>]: For IOS, set whether Intune must receive data from the data sync partner prior to marking a device compliant
  [IosEnabled <Boolean?>]: For IOS, get or set whether data from the data sync partner should be used during compliance evaluations
  [LastHeartbeatDateTime <DateTime?>]: DateTime of last Heartbeat recieved from the Data Sync Partner
  [PartnerState <String>]: Partner state of this tenant.
  [PartnerUnresponsivenessThresholdInDays <Int32?>]: Get or Set days the per tenant tolerance to unresponsiveness for this partner integration
  [PartnerUnsupportedOSVersionBlocked <Boolean?>]: Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Data Sync Partner

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementmobilethreatdefenseconnector
#>
function Update-MgDeviceManagementMobileThreatDefenseConnector {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mobileThreatDefenseConnector
    ${MobileThreatDefenseConnectorId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMobileThreatDefenseConnector]
    # Entity which represents a connection to Mobile threat defense partner.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # For Android, set whether Intune must receive data from the data sync partner prior to marking a device compliant
    ${AndroidDeviceBlockedOnMissingPartnerData},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # For Android, set whether data from the data sync partner should be used during compliance evaluations
    ${AndroidEnabled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # For IOS, set whether Intune must receive data from the data sync partner prior to marking a device compliant
    ${IosDeviceBlockedOnMissingPartnerData},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # For IOS, get or set whether data from the data sync partner should be used during compliance evaluations
    ${IosEnabled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime of last Heartbeat recieved from the Data Sync Partner
    ${LastHeartbeatDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner state of this tenant.
    ${PartnerState},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Get or Set days the per tenant tolerance to unresponsiveness for this partner integration
    ${PartnerUnresponsivenessThresholdInDays},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Data Sync Partner
    ${PartnerUnsupportedOSVersionBlocked},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementMobileThreatDefenseConnector_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementMobileThreatDefenseConnector_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementMobileThreatDefenseConnector_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementMobileThreatDefenseConnector_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of Device Management Partners configured by the tenant.
.Description
The list of Device Management Partners configured by the tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementPartner
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphDeviceManagementPartner>: Entity which represents a connection to device management partner.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DisplayName <String>]: Partner display name
  [IsConfigured <Boolean?>]: Whether device management partner is configured or not
  [LastHeartbeatDateTime <DateTime?>]: Timestamp of last heartbeat after admin enabled option Connect to Device management Partner
  [PartnerAppType <String>]: Partner App Type.
  [PartnerState <String>]: Partner state of this tenant.
  [SingleTenantAppId <String>]: Partner Single tenant App id
  [WhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime <DateTime?>]: DateTime in UTC when PartnerDevices will be marked as NonCompliant
  [WhenPartnerDevicesWillBeRemovedDateTime <DateTime?>]: DateTime in UTC when PartnerDevices will be removed

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementpartner
#>
function Update-MgDeviceManagementPartner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementPartner
    ${DeviceManagementPartnerId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementPartner]
    # Entity which represents a connection to device management partner.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner display name
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Whether device management partner is configured or not
    ${IsConfigured},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp of last heartbeat after admin enabled option Connect to Device management Partner
    ${LastHeartbeatDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner App Type.
    ${PartnerAppType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner state of this tenant.
    ${PartnerState},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Partner Single tenant App id
    ${SingleTenantAppId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime in UTC when PartnerDevices will be marked as NonCompliant
    ${WhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime in UTC when PartnerDevices will be removed
    ${WhenPartnerDevicesWillBeRemovedDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementPartner_Update';
            UpdateExpanded = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementPartner_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementPartner_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementPartner_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The remote assist partners.
.Description
The remote assist partners.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRemoteAssistancePartner
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphRemoteAssistancePartner>: RemoteAssistPartner resources represent the metadata and status of a given Remote Assistance partner service.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DisplayName <String>]: Display name of the partner.
  [LastConnectionDateTime <DateTime?>]: Timestamp of the last request sent to Intune by the TEM partner.
  [OnboardingStatus <String>]: The current TeamViewer connector status
  [OnboardingUrl <String>]: URL of the partner's onboarding portal, where an administrator can configure their Remote Assistance service.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementremoteassistancepartner
#>
function Update-MgDeviceManagementRemoteAssistancePartner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of remoteAssistancePartner
    ${RemoteAssistancePartnerId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRemoteAssistancePartner]
    # RemoteAssistPartner resources represent the metadata and status of a given Remote Assistance partner service.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the partner.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp of the last request sent to Intune by the TEM partner.
    ${LastConnectionDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The current TeamViewer connector status
    ${OnboardingStatus},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # URL of the partner's onboarding portal, where an administrator can configure their Remote Assistance service.
    ${OnboardingUrl},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRemoteAssistancePartner_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRemoteAssistancePartner_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRemoteAssistancePartner_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRemoteAssistancePartner_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Resource Operations.
.Description
The Resource Operations.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResourceOperation
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphResourceOperation>: Describes the resourceOperation resource (entity) of the Microsoft Graph API (REST), which supports Intune workflows related to role-based access control (RBAC).
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActionName <String>]: Type of action this operation is going to perform. The actionName should be concise and limited to as few words as possible.
  [Description <String>]: Description of the resource operation. The description is used in mouse-over text for the operation when shown in the Azure Portal.
  [ResourceName <String>]: Name of the Resource this operation is performed on.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementresourceoperation
#>
function Update-MgDeviceManagementResourceOperation {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of resourceOperation
    ${ResourceOperationId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResourceOperation]
    # Describes the resourceOperation resource (entity) of the Microsoft Graph API (REST), which supports Intune workflows related to role-based access control (RBAC).
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Type of action this operation is going to perform.
    # The actionName should be concise and limited to as few words as possible.
    ${ActionName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the resource operation.
    # The description is used in mouse-over text for the operation when shown in the Azure Portal.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name of the Resource this operation is performed on.
    ${ResourceName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementResourceOperation_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementResourceOperation_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementResourceOperation_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementResourceOperation_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Role Assignments.
.Description
The Role Assignments.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementRoleAssignment
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphDeviceAndAppManagementRoleAssignment>: The Role Assignment resource. Role assignments tie together a role definition with members and scopes. There can be one or more role assignments per role. This applies to custom and built-in roles.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the Role Assignment.
  [DisplayName <String>]: The display or friendly name of the role Assignment.
  [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
  [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role definition.
    [DisplayName <String>]: Display Name of the Role definition.
    [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
    [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
      [Id <String>]: Read-only.
      [Description <String>]: Description of the Role Assignment.
      [DisplayName <String>]: The display or friendly name of the role Assignment.
      [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
      [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
      [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
        [AllowedResourceActions <String[]>]: Allowed Actions
        [NotAllowedResourceActions <String[]>]: Not Allowed Actions.
  [Id <String>]: Read-only.
  [Members <String[]>]: The list of ids of role member security groups. These are IDs from Azure Active Directory.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate

ROLEDEFINITION <IMicrosoftGraphRoleDefinition>: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: Description of the Role definition.
  [DisplayName <String>]: Display Name of the Role definition.
  [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
  [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role Assignment.
    [DisplayName <String>]: The display or friendly name of the role Assignment.
    [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
    [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
    [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
      [AllowedResourceActions <String[]>]: Allowed Actions
      [NotAllowedResourceActions <String[]>]: Not Allowed Actions.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementroleassignment
#>
function Update-MgDeviceManagementRoleAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceAndAppManagementRoleAssignment
    ${DeviceAndAppManagementRoleAssignmentId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementRoleAssignment]
    # The Role Assignment resource.
    # Role assignments tie together a role definition with members and scopes.
    # There can be one or more role assignments per role.
    # This applies to custom and built-in roles.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the Role Assignment.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display or friendly name of the role Assignment.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The list of ids of role member security groups.
    # These are IDs from Azure Active Directory.
    ${Members},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of ids of role scope member security groups.
    # These are IDs from Azure Active Directory.
    ${ResourceScopes},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition]
    # The Role Definition resource.
    # The role definition is the foundation of role based access in Intune.
    # The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource.
    # There are two types of roles, built-in and custom.
    # Built-in roles cannot be modified.
    # Both built-in roles and custom roles must have assignments to be enforced.
    # Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    # To construct, see NOTES section for ROLEDEFINITION properties and create a hash table.
    ${RoleDefinition},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleAssignment_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleAssignment_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleAssignment_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleAssignment_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
List of Role assignments for this role definition.
.Description
List of Role assignments for this role definition.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleAssignment1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphRoleAssignment1>: The Role Assignment resource. Role assignments tie together a role definition with members and scopes. There can be one or more role assignments per role. This applies to custom and built-in roles.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: Description of the Role Assignment.
  [DisplayName <String>]: The display or friendly name of the role Assignment.
  [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
  [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role definition.
    [DisplayName <String>]: Display Name of the Role definition.
    [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
    [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
    [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
      [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
        [AllowedResourceActions <String[]>]: Allowed Actions
        [NotAllowedResourceActions <String[]>]: Not Allowed Actions.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate

ROLEDEFINITION <IMicrosoftGraphRoleDefinition>: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: Description of the Role definition.
  [DisplayName <String>]: Display Name of the Role definition.
  [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
  [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role Assignment.
    [DisplayName <String>]: The display or friendly name of the role Assignment.
    [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
    [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
    [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
      [AllowedResourceActions <String[]>]: Allowed Actions
      [NotAllowedResourceActions <String[]>]: Not Allowed Actions.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementroledefinitionroleassignment
#>
function Update-MgDeviceManagementRoleDefinitionRoleAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleAssignment
    ${RoleAssignmentId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleAssignment1]
    # The Role Assignment resource.
    # Role assignments tie together a role definition with members and scopes.
    # There can be one or more role assignments per role.
    # This applies to custom and built-in roles.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the Role Assignment.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display or friendly name of the role Assignment.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of ids of role scope member security groups.
    # These are IDs from Azure Active Directory.
    ${ResourceScopes},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition]
    # The Role Definition resource.
    # The role definition is the foundation of role based access in Intune.
    # The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource.
    # There are two types of roles, built-in and custom.
    # Built-in roles cannot be modified.
    # Both built-in roles and custom roles must have assignments to be enforced.
    # Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    # To construct, see NOTES section for ROLEDEFINITION properties and create a hash table.
    ${RoleDefinition},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleDefinitionRoleAssignment_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleDefinitionRoleAssignment_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleDefinitionRoleAssignment_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleDefinitionRoleAssignment_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Role Definitions.
.Description
The Role Definitions.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphRoleDefinition>: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: Description of the Role definition.
  [DisplayName <String>]: Display Name of the Role definition.
  [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
  [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role Assignment.
    [DisplayName <String>]: The display or friendly name of the role Assignment.
    [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
    [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
  [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
    [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
      [AllowedResourceActions <String[]>]: Allowed Actions
      [NotAllowedResourceActions <String[]>]: Not Allowed Actions.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate

ROLEASSIGNMENTS <IMicrosoftGraphRoleAssignment1[]>: List of Role assignments for this role definition.
  [Id <String>]: Read-only.
  [Description <String>]: Description of the Role Assignment.
  [DisplayName <String>]: The display or friendly name of the role Assignment.
  [ResourceScopes <String[]>]: List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
  [RoleDefinition <IMicrosoftGraphRoleDefinition>]: The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Description <String>]: Description of the Role definition.
    [DisplayName <String>]: Display Name of the Role definition.
    [IsBuiltIn <Boolean?>]: Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
    [RoleAssignments <IMicrosoftGraphRoleAssignment1[]>]: List of Role assignments for this role definition.
    [RolePermissions <IMicrosoftGraphRolePermission[]>]: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
      [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
        [AllowedResourceActions <String[]>]: Allowed Actions
        [NotAllowedResourceActions <String[]>]: Not Allowed Actions.

ROLEPERMISSIONS <IMicrosoftGraphRolePermission[]>: List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
  [ResourceActions <IMicrosoftGraphResourceAction[]>]: Resource Actions each containing a set of allowed and not allowed permissions.
    [AllowedResourceActions <String[]>]: Allowed Actions
    [NotAllowedResourceActions <String[]>]: Not Allowed Actions.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementroledefinition
#>
function Update-MgDeviceManagementRoleDefinition {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of roleDefinition
    ${RoleDefinitionId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleDefinition]
    # The Role Definition resource.
    # The role definition is the foundation of role based access in Intune.
    # The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource.
    # There are two types of roles, built-in and custom.
    # Built-in roles cannot be modified.
    # Both built-in roles and custom roles must have assignments to be enforced.
    # Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the Role definition.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display Name of the Role definition.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Type of Role.
    # Set to True if it is built-in, or set to False if it is a custom role definition.
    ${IsBuiltIn},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleAssignment1[]]
    # List of Role assignments for this role definition.
    # To construct, see NOTES section for ROLEASSIGNMENTS properties and create a hash table.
    ${RoleAssignments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRolePermission[]]
    # List of Role Permissions this role is allowed to perform.
    # These must match the actionName that is defined as part of the rolePermission.
    # To construct, see NOTES section for ROLEPERMISSIONS properties and create a hash table.
    ${RolePermissions},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleDefinition_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleDefinition_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleDefinition_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementRoleDefinition_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The telecom expense management partners.
.Description
The telecom expense management partners.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTelecomExpenseManagementPartner
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphTelecomExpenseManagementPartner>: telecomExpenseManagementPartner resources represent the metadata and status of a given TEM service. Once your organization has onboarded with a partner, the partner can be enabled or disabled to switch TEM functionality on or off.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AppAuthorized <Boolean?>]: Whether the partner's AAD app has been authorized to access Intune.
  [DisplayName <String>]: Display name of the TEM partner.
  [Enabled <Boolean?>]: Whether Intune's connection to the TEM service is currently enabled or disabled.
  [LastConnectionDateTime <DateTime?>]: Timestamp of the last request sent to Intune by the TEM partner.
  [Url <String>]: URL of the TEM partner's administrative control panel, where an administrator can configure their TEM service.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementtelecomexpensemanagementpartner
#>
function Update-MgDeviceManagementTelecomExpenseManagementPartner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of telecomExpenseManagementPartner
    ${TelecomExpenseManagementPartnerId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTelecomExpenseManagementPartner]
    # telecomExpenseManagementPartner resources represent the metadata and status of a given TEM service.
    # Once your organization has onboarded with a partner, the partner can be enabled or disabled to switch TEM functionality on or off.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Whether the partner's AAD app has been authorized to access Intune.
    ${AppAuthorized},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the TEM partner.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Whether Intune's connection to the TEM service is currently enabled or disabled.
    ${Enabled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp of the last request sent to Intune by the TEM partner.
    ${LastConnectionDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # URL of the TEM partner's administrative control panel, where an administrator can configure their TEM service.
    ${Url},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTelecomExpenseManagementPartner_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTelecomExpenseManagementPartner_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTelecomExpenseManagementPartner_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTelecomExpenseManagementPartner_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of acceptance statuses for this T&C policy.
.Description
The list of acceptance statuses for this T&C policy.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAcceptanceStatus
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphTermsAndConditionsAcceptanceStatus>: A termsAndConditionsAcceptanceStatus entity represents the acceptance status of a given Terms and Conditions (T&C) policy by a given user. Users must accept the most up-to-date version of the terms in order to retain access to the Company Portal.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AcceptedDateTime <DateTime?>]: DateTime when the terms were last accepted by the user.
  [AcceptedVersion <Int32?>]: Most recent version number of the T&C accepted by the user.
  [TermsAndConditions <IMicrosoftGraphTermsAndConditions1>]: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AcceptanceStatement <String>]: Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
    [AcceptanceStatuses <IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]>]: The list of acceptance statuses for this T&C policy.
    [Assignments <IMicrosoftGraphTermsAndConditionsAssignment[]>]: The list of assignments for this T&C policy.
      [Id <String>]: Read-only.
      [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
        [(Any) <Object>]: This indicates any property can be added to this object.
    [BodyText <String>]: Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
    [CreatedDateTime <DateTime?>]: DateTime the object was created.
    [Description <String>]: Administrator-supplied description of the T&C policy.
    [DisplayName <String>]: Administrator-supplied name for the T&C policy.
    [LastModifiedDateTime <DateTime?>]: DateTime the object was last modified.
    [Title <String>]: Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
    [Version <Int32?>]: Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
  [UserDisplayName <String>]: Display name of the user whose acceptance the entity represents.
  [UserPrincipalName <String>]: The userPrincipalName of the User that accepted the term.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate

TERMSANDCONDITIONS <IMicrosoftGraphTermsAndConditions1>: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AcceptanceStatement <String>]: Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
  [AcceptanceStatuses <IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]>]: The list of acceptance statuses for this T&C policy.
    [Id <String>]: Read-only.
    [AcceptedDateTime <DateTime?>]: DateTime when the terms were last accepted by the user.
    [AcceptedVersion <Int32?>]: Most recent version number of the T&C accepted by the user.
    [TermsAndConditions <IMicrosoftGraphTermsAndConditions1>]: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    [UserDisplayName <String>]: Display name of the user whose acceptance the entity represents.
    [UserPrincipalName <String>]: The userPrincipalName of the User that accepted the term.
  [Assignments <IMicrosoftGraphTermsAndConditionsAssignment[]>]: The list of assignments for this T&C policy.
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.
  [BodyText <String>]: Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
  [CreatedDateTime <DateTime?>]: DateTime the object was created.
  [Description <String>]: Administrator-supplied description of the T&C policy.
  [DisplayName <String>]: Administrator-supplied name for the T&C policy.
  [LastModifiedDateTime <DateTime?>]: DateTime the object was last modified.
  [Title <String>]: Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
  [Version <Int32?>]: Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementtermandconditionacceptancestatuses
#>
function Update-MgDeviceManagementTermAndConditionAcceptanceStatuses {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditionsAcceptanceStatus
    ${TermsAndConditionsAcceptanceStatusId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAcceptanceStatus]
    # A termsAndConditionsAcceptanceStatus entity represents the acceptance status of a given Terms and Conditions (T&C) policy by a given user.
    # Users must accept the most up-to-date version of the terms in order to retain access to the Company Portal.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime when the terms were last accepted by the user.
    ${AcceptedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Most recent version number of the T&C accepted by the user.
    ${AcceptedVersion},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1]
    # A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy.
    # T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance.
    # They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    # To construct, see NOTES section for TERMSANDCONDITIONS properties and create a hash table.
    ${TermsAndConditions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the user whose acceptance the entity represents.
    ${UserDisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The userPrincipalName of the User that accepted the term.
    ${UserPrincipalName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndConditionAcceptanceStatuses_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndConditionAcceptanceStatuses_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndConditionAcceptanceStatuses_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndConditionAcceptanceStatuses_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of assignments for this T&C policy.
.Description
The list of assignments for this T&C policy.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAssignment
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphTermsAndConditionsAssignment>: A termsAndConditionsAssignment entity represents the assignment of a given Terms and Conditions (T&C) policy to a given group. Users in the group will be required to accept the terms in order to have devices enrolled into Intune.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementtermandconditionassignment
#>
function Update-MgDeviceManagementTermAndConditionAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditionsAssignment
    ${TermsAndConditionsAssignmentId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAssignment]
    # A termsAndConditionsAssignment entity represents the assignment of a given Terms and Conditions (T&C) policy to a given group.
    # Users in the group will be required to accept the terms in order to have devices enrolled into Intune.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementAssignmentTarget]))]
    [System.Collections.Hashtable]
    # Base type for assignment targets.
    ${Target},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndConditionAssignment_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndConditionAssignment_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndConditionAssignment_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndConditionAssignment_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The terms and conditions associated with device management of the company.
.Description
The terms and conditions associated with device management of the company.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACCEPTANCESTATUSES <IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]>: The list of acceptance statuses for this T&C policy.
  [Id <String>]: Read-only.
  [AcceptedDateTime <DateTime?>]: DateTime when the terms were last accepted by the user.
  [AcceptedVersion <Int32?>]: Most recent version number of the T&C accepted by the user.
  [TermsAndConditions <IMicrosoftGraphTermsAndConditions1>]: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AcceptanceStatement <String>]: Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
    [AcceptanceStatuses <IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]>]: The list of acceptance statuses for this T&C policy.
    [Assignments <IMicrosoftGraphTermsAndConditionsAssignment[]>]: The list of assignments for this T&C policy.
      [Id <String>]: Read-only.
      [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
        [(Any) <Object>]: This indicates any property can be added to this object.
    [BodyText <String>]: Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
    [CreatedDateTime <DateTime?>]: DateTime the object was created.
    [Description <String>]: Administrator-supplied description of the T&C policy.
    [DisplayName <String>]: Administrator-supplied name for the T&C policy.
    [LastModifiedDateTime <DateTime?>]: DateTime the object was last modified.
    [Title <String>]: Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
    [Version <Int32?>]: Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
  [UserDisplayName <String>]: Display name of the user whose acceptance the entity represents.
  [UserPrincipalName <String>]: The userPrincipalName of the User that accepted the term.

ASSIGNMENTS <IMicrosoftGraphTermsAndConditionsAssignment[]>: The list of assignments for this T&C policy.
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

BODYPARAMETER <IMicrosoftGraphTermsAndConditions1>: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AcceptanceStatement <String>]: Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
  [AcceptanceStatuses <IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]>]: The list of acceptance statuses for this T&C policy.
    [Id <String>]: Read-only.
    [AcceptedDateTime <DateTime?>]: DateTime when the terms were last accepted by the user.
    [AcceptedVersion <Int32?>]: Most recent version number of the T&C accepted by the user.
    [TermsAndConditions <IMicrosoftGraphTermsAndConditions1>]: A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    [UserDisplayName <String>]: Display name of the user whose acceptance the entity represents.
    [UserPrincipalName <String>]: The userPrincipalName of the User that accepted the term.
  [Assignments <IMicrosoftGraphTermsAndConditionsAssignment[]>]: The list of assignments for this T&C policy.
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.
  [BodyText <String>]: Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
  [CreatedDateTime <DateTime?>]: DateTime the object was created.
  [Description <String>]: Administrator-supplied description of the T&C policy.
  [DisplayName <String>]: Administrator-supplied name for the T&C policy.
  [LastModifiedDateTime <DateTime?>]: DateTime the object was last modified.
  [Title <String>]: Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
  [Version <Int32?>]: Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.

INPUTOBJECT <IDeviceManagementAdministrationIdentity>: Identity Parameter
  [AuditEventId <String>]: key: id of auditEvent
  [CartToClassAssociationId <String>]: key: id of cartToClassAssociation
  [CloudPcAuditEventId <String>]: key: id of cloudPcAuditEvent
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcGalleryImageId <String>]: key: id of cloudPcGalleryImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyAssignmentId <String>]: key: id of cloudPcProvisioningPolicyAssignment
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcServicePlanId <String>]: key: id of cloudPcServicePlan
  [CloudPcSupportedRegionId <String>]: key: id of cloudPcSupportedRegion
  [CloudPcUserSettingAssignmentId <String>]: key: id of cloudPcUserSettingAssignment
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [ComanagementEligibleDeviceId <String>]: key: id of comanagementEligibleDevice
  [ComplianceManagementPartnerId <String>]: key: id of complianceManagementPartner
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceManagementDomainJoinConnectorId <String>]: key: id of deviceManagementDomainJoinConnector
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementExchangeOnPremisesPolicyId <String>]: key: id of deviceManagementExchangeOnPremisesPolicy
  [DeviceManagementPartnerId <String>]: key: id of deviceManagementPartner
  [GroupPolicyCategoryId <String>]: key: id of groupPolicyCategory
  [GroupPolicyDefinitionFileId <String>]: key: id of groupPolicyDefinitionFile
  [GroupPolicyDefinitionId <String>]: key: id of groupPolicyDefinition
  [GroupPolicyMigrationReportId <String>]: key: id of groupPolicyMigrationReport
  [GroupPolicyObjectFileId <String>]: key: id of groupPolicyObjectFile
  [GroupPolicyOperationId <String>]: key: id of groupPolicyOperation
  [GroupPolicyPresentationId <String>]: key: id of groupPolicyPresentation
  [GroupPolicySettingMappingId <String>]: key: id of groupPolicySettingMapping
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileAssignmentId <String>]: key: id of intuneBrandingProfileAssignment
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [IosUpdateDeviceStatusId <String>]: key: id of iosUpdateDeviceStatus
  [ManagedAllDeviceCertificateStateId <String>]: key: id of managedAllDeviceCertificateState
  [MobileThreatDefenseConnectorId <String>]: key: id of mobileThreatDefenseConnector
  [NdesConnectorId <String>]: key: id of ndesConnector
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [ResourceOperationId <String>]: key: id of resourceOperation
  [RestrictedAppsViolationId <String>]: key: id of restrictedAppsViolation
  [RoleAssignmentId <String>]: key: id of roleAssignment
  [RoleDefinitionId <String>]: key: id of roleDefinition
  [RoleScopeTagAutoAssignmentId <String>]: key: id of roleScopeTagAutoAssignment
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [TelecomExpenseManagementPartnerId <String>]: key: id of telecomExpenseManagementPartner
  [TermsAndConditionsAcceptanceStatusId <String>]: key: id of termsAndConditionsAcceptanceStatus
  [TermsAndConditionsAssignmentId <String>]: key: id of termsAndConditionsAssignment
  [TermsAndConditionsGroupAssignmentId <String>]: key: id of termsAndConditionsGroupAssignment
  [TermsAndConditionsId <String>]: key: id of termsAndConditions
  [UnsupportedGroupPolicyExtensionId <String>]: key: id of unsupportedGroupPolicyExtension
  [UserPfxCertificateId <String>]: key: id of userPFXCertificate
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.administration/update-mgdevicemanagementtermandcondition
#>
function Update-MgDeviceManagementTermAndCondition {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of termsAndConditions
    ${TermsAndConditionsId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementAdministrationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditions1]
    # A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy.
    # T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance.
    # They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy.
    # This is shown to the user on prompts to accept the T&C policy.
    ${AcceptanceStatement},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAcceptanceStatus[]]
    # The list of acceptance statuses for this T&C policy.
    # To construct, see NOTES section for ACCEPTANCESTATUSES properties and create a hash table.
    ${AcceptanceStatuses},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsAndConditionsAssignment[]]
    # The list of assignments for this T&C policy.
    # To construct, see NOTES section for ASSIGNMENTS properties and create a hash table.
    ${Assignments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Administrator-supplied body text of the terms and conditions, typically the terms themselves.
    # This is shown to the user on prompts to accept the T&C policy.
    ${BodyText},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime the object was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Administrator-supplied description of the T&C policy.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Administrator-supplied name for the T&C policy.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime the object was last modified.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Administrator-supplied title of the terms and conditions.
    # This is shown to the user on prompts to accept the T&C policy.
    ${Title},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Integer indicating the current version of the terms.
    # Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
    ${Version},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndCondition_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndCondition_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndCondition_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Administration.private\Update-MgDeviceManagementTermAndCondition_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# SIG # Begin signature block
# MIIjnwYJKoZIhvcNAQcCoIIjkDCCI4wCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDvQXZl/YoPr/nq
# RTYI+40WqRammseh1QmT0tcJrfuwFKCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
# LpKnSrTQAAAAAAHfMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjAxMjE1MjEzMTQ1WhcNMjExMjAyMjEzMTQ1WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQC2uxlZEACjqfHkuFyoCwfL25ofI9DZWKt4wEj3JBQ48GPt1UsDv834CcoUUPMn
# s/6CtPoaQ4Thy/kbOOg/zJAnrJeiMQqRe2Lsdb/NSI2gXXX9lad1/yPUDOXo4GNw
# PjXq1JZi+HZV91bUr6ZjzePj1g+bepsqd/HC1XScj0fT3aAxLRykJSzExEBmU9eS
# yuOwUuq+CriudQtWGMdJU650v/KmzfM46Y6lo/MCnnpvz3zEL7PMdUdwqj/nYhGG
# 3UVILxX7tAdMbz7LN+6WOIpT1A41rwaoOVnv+8Ua94HwhjZmu1S73yeV7RZZNxoh
# EegJi9YYssXa7UZUUkCCA+KnAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUOPbML8IdkNGtCfMmVPtvI6VZ8+Mw
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDYzMDA5MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAnnqH
# tDyYUFaVAkvAK0eqq6nhoL95SZQu3RnpZ7tdQ89QR3++7A+4hrr7V4xxmkB5BObS
# 0YK+MALE02atjwWgPdpYQ68WdLGroJZHkbZdgERG+7tETFl3aKF4KpoSaGOskZXp
# TPnCaMo2PXoAMVMGpsQEQswimZq3IQ3nRQfBlJ0PoMMcN/+Pks8ZTL1BoPYsJpok
# t6cql59q6CypZYIwgyJ892HpttybHKg1ZtQLUlSXccRMlugPgEcNZJagPEgPYni4
# b11snjRAgf0dyQ0zI9aLXqTxWUU5pCIFiPT0b2wsxzRqCtyGqpkGM8P9GazO8eao
# mVItCYBcJSByBx/pS0cSYwBBHAZxJODUqxSXoSGDvmTfqUJXntnWkL4okok1FiCD
# Z4jpyXOQunb6egIXvkgQ7jb2uO26Ow0m8RwleDvhOMrnHsupiOPbozKroSa6paFt
# VSh89abUSooR8QdZciemmoFhcWkEwFg4spzvYNP4nIs193261WyTaRMZoceGun7G
# CT2Rl653uUj+F+g94c63AhzSq4khdL4HlFIP2ePv29smfUnHtGq6yYFDLnT0q/Y+
# Di3jwloF8EWkkHRtSuXlFUbTmwr/lDDgbpZiKhLS7CBTDj32I0L5i532+uHczw82
# oZDmYmYmIUSMbZOgS65h797rj5JJ6OkeEUJoAVwwggd6MIIFYqADAgECAgphDpDS
# AAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMTAeFw0xMTA3MDgyMDU5MDlaFw0yNjA3MDgyMTA5MDla
# MH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMT
# H01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCr8PpyEBwurdhuqoIQTTS68rZYIZ9CGypr6VpQqrgG
# OBoESbp/wwwe3TdrxhLYC/A4wpkGsMg51QEUMULTiQ15ZId+lGAkbK+eSZzpaF7S
# 35tTsgosw6/ZqSuuegmv15ZZymAaBelmdugyUiYSL+erCFDPs0S3XdjELgN1q2jz
# y23zOlyhFvRGuuA4ZKxuZDV4pqBjDy3TQJP4494HDdVceaVJKecNvqATd76UPe/7
# 4ytaEB9NViiienLgEjq3SV7Y7e1DkYPZe7J7hhvZPrGMXeiJT4Qa8qEvWeSQOy2u
# M1jFtz7+MtOzAz2xsq+SOH7SnYAs9U5WkSE1JcM5bmR/U7qcD60ZI4TL9LoDho33
# X/DQUr+MlIe8wCF0JV8YKLbMJyg4JZg5SjbPfLGSrhwjp6lm7GEfauEoSZ1fiOIl
# XdMhSz5SxLVXPyQD8NF6Wy/VI+NwXQ9RRnez+ADhvKwCgl/bwBWzvRvUVUvnOaEP
# 6SNJvBi4RHxF5MHDcnrgcuck379GmcXvwhxX24ON7E1JMKerjt/sW5+v/N2wZuLB
# l4F77dbtS+dJKacTKKanfWeA5opieF+yL4TXV5xcv3coKPHtbcMojyyPQDdPweGF
# RInECUzF1KVDL3SV9274eCBYLBNdYJWaPk8zhNqwiBfenk70lrC8RqBsmNLg1oiM
# CwIDAQABo4IB7TCCAekwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFEhuZOVQ
# BdOCqhc3NyK1bajKdQKVMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1Ud
# DwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFHItOgIxkEO5FAVO
# 4eqnxzHRI4k0MFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcmwwXgYIKwYBBQUHAQEEUjBQME4GCCsGAQUFBzAChkJodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcnQwgZ8GA1UdIASBlzCBlDCBkQYJKwYBBAGCNy4DMIGDMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2RvY3MvcHJpbWFyeWNw
# cy5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AcABvAGwAaQBjAHkA
# XwBzAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAGfyhqWY
# 4FR5Gi7T2HRnIpsLlhHhY5KZQpZ90nkMkMFlXy4sPvjDctFtg/6+P+gKyju/R6mj
# 82nbY78iNaWXXWWEkH2LRlBV2AySfNIaSxzzPEKLUtCw/WvjPgcuKZvmPRul1LUd
# d5Q54ulkyUQ9eHoj8xN9ppB0g430yyYCRirCihC7pKkFDJvtaPpoLpWgKj8qa1hJ
# Yx8JaW5amJbkg/TAj/NGK978O9C9Ne9uJa7lryft0N3zDq+ZKJeYTQ49C/IIidYf
# wzIY4vDFLc5bnrRJOQrGCsLGra7lstnbFYhRRVg4MnEnGn+x9Cf43iw6IGmYslmJ
# aG5vp7d0w0AFBqYBKig+gj8TTWYLwLNN9eGPfxxvFX1Fp3blQCplo8NdUmKGwx1j
# NpeG39rz+PIWoZon4c2ll9DuXWNB41sHnIc+BncG0QaxdR8UvmFhtfDcxhsEvt9B
# xw4o7t5lL+yX9qFcltgA1qFGvVnzl6UJS0gQmYAf0AApxbGbpT9Fdx41xtKiop96
# eiL6SJUfq/tHI4D1nvi/a7dLl+LrdXga7Oo3mXkYS//WsyNodeav+vyL6wuA6mk7
# r/ww7QRMjt/fdW1jkT3RnVZOT7+AVyKheBEyIXrvQQqxP/uozKRdwaGIm1dxVk5I
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIVdDCCFXACAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAd9r8C6Sp0q00AAAAAAB3zAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgFn/r1Itq
# G8Z1wHte9aGlRag/TUk1PtpXEWanoKP5iP4wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBocY8AvOXWhEJ0frO8lj9AV3SwKcox8v4+Jg9mVZan
# aA4Ve1wNMHjkBcuKM/zln483lzYzzlCOXcSWAnReoGqERBgRotylZNitDHxdU8gS
# 23Cs62skQ7ctvtLxoHha82Iz4ccCE02ZBEF08QL53jlqop5anlgWeMegmHQRZBKX
# +0UaNsjXiBrQn4QRGgZZGHNuCwTw9N6fCjLJPa+nv9FVqzCu5D7+FzSIJ6xl7UD8
# tqlstU5AESIy77hcud+SijInQt/p6cTTRJORf8UGG5DZocP9Cy/yb+hlPmrDKmVk
# H14ptPrGwMe/OZZxzKbList8YbdYQNDAqMwmPHxtJtJGoYIS/jCCEvoGCisGAQQB
# gjcDAwExghLqMIIS5gYJKoZIhvcNAQcCoIIS1zCCEtMCAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIHXUdlxkEo1Yn2nsIPKWsUHyS4j2/zft2Cm0eL4A
# CJBCAgZhcIeMkUUYEzIwMjExMDI3MDcxMTIzLjg0NVowBIACAfSggdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046OEQ0MS00QkY3LUIzQjcxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2Wggg5NMIIE+TCCA+GgAwIBAgITMwAAATqNjTH3d0lJ
# wgAAAAABOjANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMDAeFw0yMDEwMTUxNzI4MjJaFw0yMjAxMTIxNzI4MjJaMIHSMQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQg
# SXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOjhENDEtNEJGNy1CM0I3MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzl8k518P
# lz8JTIXYn/O9OakqcWqdJ8ZXJhAks9hyLB8+ANW7Zngb1t7iw7TmgeooOwMnbhCQ
# QH14UwWd8hQFWexKqVpcIFnY3b15+PYmgVeQ4XKfWJ3PPMjTiXu73epXHj9XX7mh
# S2IVqwEvDOudOI3yQL8D8OOG24b+10zDDEyN5wvZ5A1Wcvl2eQhCG61GeHNaXvXO
# loTQblVFbMWOmGviHvgRlRhRjgNmuv1J2y6fQFtiEw0pdXKCQG68xQlBhcu4Ln+b
# YL4HoeT2mrtkpHEyDZ+frr+Ka/zUDP3BscHkKdkNGOODfvJdWHaV0Wzr1wnPuUgt
# ObfnBO0oSjIpBQIDAQABo4IBGzCCARcwHQYDVR0OBBYEFBRWoJ8WXxJrpslvHHWs
# rQmFRfPLMB8GA1UdIwQYMBaAFNVjOlyKMZDzQ3t8RhvFM2hahW1VMFYGA1UdHwRP
# ME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1
# Y3RzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNybDBaBggrBgEFBQcBAQROMEww
# SgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMv
# TWljVGltU3RhUENBXzIwMTAtMDctMDEuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0l
# BAwwCgYIKwYBBQUHAwgwDQYJKoZIhvcNAQELBQADggEBAF435D6kAS2jeAJ8BG1K
# Tm5Az0jpbdjpqSvMLt7fOVraAEHldgk04BKcTmhzjbTXsjwgCMMCS+jX4Toqi0cn
# zcSoD2LphZA98DXeH6lRH7qQdXbHgx0/vbq0YyVkltSTMv1jzzI75Z5dhpvc4Uwn
# 4Fb6CCaF2/+r7Rr0j+2DGCwl8aWqvQqzhCJ/o7cNoYUfJ4WSCHs1OsjgMmWTmglu
# PIxt3kV8iLZl2IZgyr5cNOiNiTraFDq7hxI16oDsoW0EQKCV84nV1wWSWe1SiAKI
# wr5BtqYwJ+hlocPw5qehWbBiTLntcLrwKdAbwthFr1DHf3RYwFoDzyNtKSB/TJsB
# 2bMwggZxMIIEWaADAgECAgphCYEqAAAAAAACMA0GCSqGSIb3DQEBCwUAMIGIMQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNy
# b3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0xMDA3MDEy
# MTM2NTVaFw0yNTA3MDEyMTQ2NTVaMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpX
# YXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQg
# Q29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAy
# MDEwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqR0NvHcRijog7PwT
# l/X6f2mUa3RUENWlCgCChfvtfGhLLF/Fw+Vhwna3PmYrW/AVUycEMR9BGxqVHc4J
# E458YTBZsTBED/FgiIRUQwzXTbg4CLNC3ZOs1nMwVyaCo0UN0Or1R4HNvyRgMlhg
# RvJYR4YyhB50YWeRX4FUsc+TTJLBxKZd0WETbijGGvmGgLvfYfxGwScdJGcSchoh
# iq9LZIlQYrFd/XcfPfBXday9ikJNQFHRD5wGPmd/9WbAA5ZEfu/QS/1u5ZrKsajy
# eioKMfDaTgaRtogINeh4HLDpmc085y9Euqf03GS9pAHBIAmTeM38vMDJRF1eFpwB
# BU8iTQIDAQABo4IB5jCCAeIwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFNVj
# OlyKMZDzQ3t8RhvFM2hahW1VMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsG
# A1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJc
# YmjRPZSQW9fOmhjEMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9z
# b2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIz
# LmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWlj
# cm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0
# MIGgBgNVHSABAf8EgZUwgZIwgY8GCSsGAQQBgjcuAzCBgTA9BggrBgEFBQcCARYx
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL1BLSS9kb2NzL0NQUy9kZWZhdWx0Lmh0
# bTBABggrBgEFBQcCAjA0HjIgHQBMAGUAZwBhAGwAXwBQAG8AbABpAGMAeQBfAFMA
# dABhAHQAZQBtAGUAbgB0AC4gHTANBgkqhkiG9w0BAQsFAAOCAgEAB+aIUQ3ixuCY
# P4FxAz2do6Ehb7Prpsz1Mb7PBeKp/vpXbRkws8LFZslq3/Xn8Hi9x6ieJeP5vO1r
# VFcIK1GCRBL7uVOMzPRgEop2zEBAQZvcXBf/XPleFzWYJFZLdO9CEMivv3/Gf/I3
# fVo/HPKZeUqRUgCvOA8X9S95gWXZqbVr5MfO9sp6AG9LMEQkIjzP7QOllo9ZKby2
# /QThcJ8ySif9Va8v/rbljjO7Yl+a21dA6fHOmWaQjP9qYn/dxUoLkSbiOewZSnFj
# nXshbcOco6I8+n99lmqQeKZt0uGc+R38ONiU9MalCpaGpL2eGq4EQoO4tYCbIjgg
# tSXlZOz39L9+Y1klD3ouOVd2onGqBooPiRa6YacRy5rYDkeagMXQzafQ732D8OE7
# cQnfXXSYIghh2rBQHm+98eEA3+cxB6STOvdlR3jo+KhIq/fecn5ha293qYHLpwms
# ObvsxsvYgrRyzR30uIUBHoD7G4kqVDmyW9rIDVWZeodzOwjmmC3qjeAzLhIp9cAv
# VCch98isTtoouLGp25ayp0Kiyc8ZQU3ghvkqmqMRZjDTu3QyS99je/WZii8bxyGv
# WbWu3EQ8l1Bx16HSxVXjad5XwdHeMMD9zOZN+w2/XU/pnR4ZOC+8z1gFLu8NoFA1
# 2u8JJxzVs341Hgi62jbb01+P3nSISRKhggLXMIICQAIBATCCAQChgdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046OEQ0MS00QkY3LUIzQjcxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAAclkdn1j1gXgdyvYj41
# B8rkNZ4IoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwDQYJ
# KoZIhvcNAQEFBQACBQDlIu65MCIYDzIwMjExMDI3MDUxNjQxWhgPMjAyMTEwMjgw
# NTE2NDFaMHcwPQYKKwYBBAGEWQoEATEvMC0wCgIFAOUi7rkCAQAwCgIBAAICFCQC
# Af8wBwIBAAICETowCgIFAOUkQDkCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYB
# BAGEWQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUFAAOB
# gQAGyZQ5W+VcLsAlqkL5ySM6MF7EMJiKkxxGwZ9tEqeG+8S4Ydii8uIgae9GulYD
# zYsZj3Og4fpdmkNjFRk53gIz6FNe5Ushu0la8gAGlK7KvkIFM5Nt3Tr3gSXbX9om
# sErjKmml6Hj4EkVGKNFAXSGp6XulNgx5UXGRfpjd8dBazjGCAw0wggMJAgEBMIGT
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABOo2NMfd3SUnCAAAA
# AAE6MA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQ
# AQQwLwYJKoZIhvcNAQkEMSIEIDh73616TFAfttzm6yewuUWaxnIqEhlbvtgtw5Ma
# PorsMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgn6/QhAepLF/7Bdsvfu8G
# OT+ihL9c4cgo5Nf1aUN8tG0wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAATqNjTH3d0lJwgAAAAABOjAiBCCad1sT4fODZN4IPSh9v6at
# bbtTBV3axXkL6x81mXZBgDANBgkqhkiG9w0BAQsFAASCAQAKcfCmvqLFGXUhETUI
# 6nYnngOX8XzaMuh/5ZN+5FWFYK46CH30Iz/meuUkCAgLY/ZSQ7eaJi96RV5wuVo2
# nluZuAxkpjr+fjQVc0YX/TV8iINFAqtOMPWnsLm4HegYP+U3+6T6lr5PXroh6gRy
# 1ySk0/xmxUPkYY3OI31EMXaImiGeMcWa4hgtqIJjPGsRhjCLd5OzyVMoKGOuMy/q
# vd2SzALEKxXu1c6Qrtni7kiddPyIeRqXr3jH+OckHW6js2BdVHgguXzZOB18Wybn
# PgaZxWKbJ1vWEgKFP+GSYAPdt1WF4esIv/KBFUUqLEDCU/CADwdcsfJfrYMW+UQl
# CZvk
# SIG # End signature block
