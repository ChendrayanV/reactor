
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
Wipe a device
.Description
Wipe a device

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths9Mjyr1DevicemanagementManageddevicesManageddeviceIdMicrosoftGraphWipePostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths9Mjyr1DevicemanagementManageddevicesManageddeviceIdMicrosoftGraphWipePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [KeepEnrollmentData <Boolean?>]: 
  [KeepUserData <Boolean?>]: 
  [MacOSUnlockCode <String>]: 
  [PersistEsimDataPlan <Boolean?>]: 

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/clear-mgdevicemanagementmanageddevice
#>
function Clear-MgDeviceManagementManagedDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='WipeExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Wipe1', Mandatory)]
    [Parameter(ParameterSetName='WipeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='WipeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Wipe1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='WipeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths9Mjyr1DevicemanagementManageddevicesManageddeviceIdMicrosoftGraphWipePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='WipeExpanded1')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='WipeExpanded1')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${KeepEnrollmentData},

    [Parameter(ParameterSetName='WipeExpanded1')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${KeepUserData},

    [Parameter(ParameterSetName='WipeExpanded1')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${MacOSUnlockCode},

    [Parameter(ParameterSetName='WipeExpanded1')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${PersistEsimDataPlan},

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
            Wipe1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Clear-MgDeviceManagementManagedDevice_Wipe1';
            WipeExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Clear-MgDeviceManagementManagedDevice_WipeExpanded1';
            WipeViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Clear-MgDeviceManagementManagedDevice_WipeViaIdentity1';
            WipeViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Clear-MgDeviceManagementManagedDevice_WipeViaIdentityExpanded1';
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
Disable lost mode
.Description
Disable lost mode

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/disable-mgdevicemanagementmanageddevicelostmode
#>
function Disable-MgDeviceManagementManagedDeviceLostMode {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Disable1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Disable1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='DisableViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Disable1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Disable-MgDeviceManagementManagedDeviceLostMode_Disable1';
            DisableViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Disable-MgDeviceManagementManagedDeviceLostMode_DisableViaIdentity1';
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
A request to remove the active TeamViewer connector
.Description
A request to remove the active TeamViewer connector

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/disconnect-mgdevicemanagementremoteassistancepartner
#>
function Disconnect-MgDeviceManagementRemoteAssistancePartner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Disconnect1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Disconnect1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of remoteAssistancePartner
    ${RemoteAssistancePartnerId},

    [Parameter(ParameterSetName='DisconnectViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Disconnect1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Disconnect-MgDeviceManagementRemoteAssistancePartner_Disconnect1';
            DisconnectViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Disconnect-MgDeviceManagementRemoteAssistancePartner_DisconnectViaIdentity1';
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
Locate a device
.Description
Locate a device

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/find-mgdevicemanagementmanageddevice
#>
function Find-MgDeviceManagementManagedDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Locate1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Locate1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='LocateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Locate1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Find-MgDeviceManagementManagedDevice_Locate1';
            LocateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Find-MgDeviceManagementManagedDevice_LocateViaIdentity1';
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
Invoke action getCachedReport
.Description
Invoke action getCachedReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1C8L63KDevicemanagementReportsMicrosoftGraphGetcachedreportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1C8L63KDevicemanagementReportsMicrosoftGraphGetcachedreportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [GroupBy <String[]>]: 
  [Id <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportcachedreport
#>
function Get-MgDeviceManagementReportCachedReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1C8L63KDevicemanagementReportsMicrosoftGraphGetcachedreportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportCachedReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportCachedReport_GetExpanded1';
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
Invoke action getCompliancePolicyNonComplianceReport
.Description
Invoke action getCompliancePolicyNonComplianceReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Pvn7TwDevicemanagementReportsMicrosoftGraphGetcompliancepolicynoncompliancereportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Pvn7TwDevicemanagementReportsMicrosoftGraphGetcompliancepolicynoncompliancereportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportcompliancepolicynoncompliancereport
#>
function Get-MgDeviceManagementReportCompliancePolicyNonComplianceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Pvn7TwDevicemanagementReportsMicrosoftGraphGetcompliancepolicynoncompliancereportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportCompliancePolicyNonComplianceReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportCompliancePolicyNonComplianceReport_GetExpanded1';
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
Invoke action getCompliancePolicyNonComplianceSummaryReport
.Description
Invoke action getCompliancePolicyNonComplianceSummaryReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths6K2Wa1DevicemanagementReportsMicrosoftGraphGetcompliancepolicynoncompliancesummaryreportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths6K2Wa1DevicemanagementReportsMicrosoftGraphGetcompliancepolicynoncompliancesummaryreportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportcompliancepolicynoncompliancesummaryreport
#>
function Get-MgDeviceManagementReportCompliancePolicyNonComplianceSummaryReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths6K2Wa1DevicemanagementReportsMicrosoftGraphGetcompliancepolicynoncompliancesummaryreportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportCompliancePolicyNonComplianceSummaryReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportCompliancePolicyNonComplianceSummaryReport_GetExpanded1';
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
Invoke action getComplianceSettingNonComplianceReport
.Description
Invoke action getComplianceSettingNonComplianceReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1QqqzoyDevicemanagementReportsMicrosoftGraphGetcompliancesettingnoncompliancereportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1QqqzoyDevicemanagementReportsMicrosoftGraphGetcompliancesettingnoncompliancereportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportcompliancesettingnoncompliancereport
#>
function Get-MgDeviceManagementReportComplianceSettingNonComplianceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1QqqzoyDevicemanagementReportsMicrosoftGraphGetcompliancesettingnoncompliancereportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportComplianceSettingNonComplianceReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportComplianceSettingNonComplianceReport_GetExpanded1';
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
Invoke action getConfigurationPolicyNonComplianceReport
.Description
Invoke action getConfigurationPolicyNonComplianceReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Hds8UqDevicemanagementReportsMicrosoftGraphGetconfigurationpolicynoncompliancereportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Hds8UqDevicemanagementReportsMicrosoftGraphGetconfigurationpolicynoncompliancereportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportconfigurationpolicynoncompliancereport
#>
function Get-MgDeviceManagementReportConfigurationPolicyNonComplianceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Hds8UqDevicemanagementReportsMicrosoftGraphGetconfigurationpolicynoncompliancereportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportConfigurationPolicyNonComplianceReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportConfigurationPolicyNonComplianceReport_GetExpanded1';
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
Invoke action getConfigurationPolicyNonComplianceSummaryReport
.Description
Invoke action getConfigurationPolicyNonComplianceSummaryReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsHd8Wo9DevicemanagementReportsMicrosoftGraphGetconfigurationpolicynoncompliancesummaryreportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsHd8Wo9DevicemanagementReportsMicrosoftGraphGetconfigurationpolicynoncompliancesummaryreportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportconfigurationpolicynoncompliancesummaryreport
#>
function Get-MgDeviceManagementReportConfigurationPolicyNonComplianceSummaryReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsHd8Wo9DevicemanagementReportsMicrosoftGraphGetconfigurationpolicynoncompliancesummaryreportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportConfigurationPolicyNonComplianceSummaryReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportConfigurationPolicyNonComplianceSummaryReport_GetExpanded1';
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
Invoke action getConfigurationSettingNonComplianceReport
.Description
Invoke action getConfigurationSettingNonComplianceReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths19DnnqbDevicemanagementReportsMicrosoftGraphGetconfigurationsettingnoncompliancereportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths19DnnqbDevicemanagementReportsMicrosoftGraphGetconfigurationsettingnoncompliancereportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportconfigurationsettingnoncompliancereport
#>
function Get-MgDeviceManagementReportConfigurationSettingNonComplianceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths19DnnqbDevicemanagementReportsMicrosoftGraphGetconfigurationsettingnoncompliancereportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportConfigurationSettingNonComplianceReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportConfigurationSettingNonComplianceReport_GetExpanded1';
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
Invoke action getDeviceManagementIntentPerSettingContributingProfiles
.Description
Invoke action getDeviceManagementIntentPerSettingContributingProfiles

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Sa3Fr9DevicemanagementReportsMicrosoftGraphGetdevicemanagementintentpersettingcontributingprofilesPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Sa3Fr9DevicemanagementReportsMicrosoftGraphGetdevicemanagementintentpersettingcontributingprofilesPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportdevicemanagementintentpersettingcontributingprofile
#>
function Get-MgDeviceManagementReportDeviceManagementIntentPerSettingContributingProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Sa3Fr9DevicemanagementReportsMicrosoftGraphGetdevicemanagementintentpersettingcontributingprofilesPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportDeviceManagementIntentPerSettingContributingProfile_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportDeviceManagementIntentPerSettingContributingProfile_GetExpanded1';
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
Invoke action getDeviceManagementIntentSettingsReport
.Description
Invoke action getDeviceManagementIntentSettingsReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsTbh0H2DevicemanagementReportsMicrosoftGraphGetdevicemanagementintentsettingsreportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsTbh0H2DevicemanagementReportsMicrosoftGraphGetdevicemanagementintentsettingsreportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportdevicemanagementintentsettingreport
#>
function Get-MgDeviceManagementReportDeviceManagementIntentSettingReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsTbh0H2DevicemanagementReportsMicrosoftGraphGetdevicemanagementintentsettingsreportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportDeviceManagementIntentSettingReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportDeviceManagementIntentSettingReport_GetExpanded1';
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
Invoke action getDeviceNonComplianceReport
.Description
Invoke action getDeviceNonComplianceReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsOl9O0RDevicemanagementReportsMicrosoftGraphGetdevicenoncompliancereportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsOl9O0RDevicemanagementReportsMicrosoftGraphGetdevicenoncompliancereportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportdevicenoncompliancereport
#>
function Get-MgDeviceManagementReportDeviceNonComplianceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsOl9O0RDevicemanagementReportsMicrosoftGraphGetdevicenoncompliancereportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportDeviceNonComplianceReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportDeviceNonComplianceReport_GetExpanded1';
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
Invoke action getReportFilters
.Description
Invoke action getReportFilters

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1J4Do9UDevicemanagementReportsMicrosoftGraphGetreportfiltersPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1J4Do9UDevicemanagementReportsMicrosoftGraphGetreportfiltersPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportfilter
#>
function Get-MgDeviceManagementReportFilter {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1J4Do9UDevicemanagementReportsMicrosoftGraphGetreportfiltersPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportFilter_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportFilter_GetExpanded1';
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
Invoke action getHistoricalReport
.Description
Invoke action getHistoricalReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Mia7W1DevicemanagementReportsMicrosoftGraphGethistoricalreportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Mia7W1DevicemanagementReportsMicrosoftGraphGethistoricalreportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreporthistoricalreport
#>
function Get-MgDeviceManagementReportHistoricalReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Mia7W1DevicemanagementReportsMicrosoftGraphGethistoricalreportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportHistoricalReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportHistoricalReport_GetExpanded1';
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
Invoke action getPolicyNonComplianceMetadata
.Description
Invoke action getPolicyNonComplianceMetadata

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths108Pcs6DevicemanagementReportsMicrosoftGraphGetpolicynoncompliancemetadataPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths108Pcs6DevicemanagementReportsMicrosoftGraphGetpolicynoncompliancemetadataPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportpolicynoncompliancemetadata
#>
function Get-MgDeviceManagementReportPolicyNonComplianceMetadata {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths108Pcs6DevicemanagementReportsMicrosoftGraphGetpolicynoncompliancemetadataPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportPolicyNonComplianceMetadata_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportPolicyNonComplianceMetadata_GetExpanded1';
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
Invoke action getPolicyNonComplianceReport
.Description
Invoke action getPolicyNonComplianceReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1KwwldyDevicemanagementReportsMicrosoftGraphGetpolicynoncompliancereportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1KwwldyDevicemanagementReportsMicrosoftGraphGetpolicynoncompliancereportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportpolicynoncompliancereport
#>
function Get-MgDeviceManagementReportPolicyNonComplianceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1KwwldyDevicemanagementReportsMicrosoftGraphGetpolicynoncompliancereportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportPolicyNonComplianceReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportPolicyNonComplianceReport_GetExpanded1';
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
Invoke action getPolicyNonComplianceSummaryReport
.Description
Invoke action getPolicyNonComplianceSummaryReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsJ8K6OfDevicemanagementReportsMicrosoftGraphGetpolicynoncompliancesummaryreportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsJ8K6OfDevicemanagementReportsMicrosoftGraphGetpolicynoncompliancesummaryreportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportpolicynoncompliancesummaryreport
#>
function Get-MgDeviceManagementReportPolicyNonComplianceSummaryReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsJ8K6OfDevicemanagementReportsMicrosoftGraphGetpolicynoncompliancesummaryreportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportPolicyNonComplianceSummaryReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportPolicyNonComplianceSummaryReport_GetExpanded1';
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
Invoke action getSettingNonComplianceReport
.Description
Invoke action getSettingNonComplianceReport

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths19Wsha2DevicemanagementReportsMicrosoftGraphGetsettingnoncompliancereportPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths19Wsha2DevicemanagementReportsMicrosoftGraphGetsettingnoncompliancereportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Filter <String>]: 
  [GroupBy <String[]>]: 
  [Name <String>]: 
  [OrderBy <String[]>]: 
  [Search <String>]: 
  [Select <String[]>]: 
  [SessionId <String>]: 
  [Skip <Int32?>]: 
  [Top <Int32?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/get-mgdevicemanagementreportsettingnoncompliancereport
#>
function Get-MgDeviceManagementReportSettingNonComplianceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths19Wsha2DevicemanagementReportsMicrosoftGraphGetsettingnoncompliancereportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Filter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupBy},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Property},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Search},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Skip},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Sort},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportSettingNonComplianceReport_Get1';
            GetExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Get-MgDeviceManagementReportSettingNonComplianceReport_GetExpanded1';
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
Invoke action import
.Description
Invoke action import

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Jc0WclDevicemanagementImportedwindowsautopilotdeviceidentitiesMicrosoftGraphImportPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Jc0WclDevicemanagementImportedwindowsautopilotdeviceidentitiesMicrosoftGraphImportPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ImportedWindowsAutopilotDeviceIdentities <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity[]>]: 
    [Id <String>]: Read-only.
    [AssignedUserPrincipalName <String>]: UPN of the user the device will be assigned
    [GroupTag <String>]: Group Tag of the Windows autopilot device.
    [HardwareIdentifier <Byte[]>]: Hardware Blob of the Windows autopilot device.
    [ImportId <String>]: The Import Id of the Windows autopilot device.
    [ProductKey <String>]: Product Key of the Windows autopilot device.
    [SerialNumber <String>]: Serial number of the Windows autopilot device.
    [State <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState>]: importedWindowsAutopilotDeviceIdentityState
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DeviceErrorCode <Int32?>]: Device error code reported by Device Directory Service(DDS).
      [DeviceErrorName <String>]: Device error name reported by Device Directory Service(DDS).
      [DeviceImportStatus <String>]: importedWindowsAutopilotDeviceIdentityImportStatus
      [DeviceRegistrationId <String>]: Device Registration ID for successfully added device reported by Device Directory Service(DDS).

IMPORTEDWINDOWSAUTOPILOTDEVICEIDENTITIES <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity[]>: .
  [Id <String>]: Read-only.
  [AssignedUserPrincipalName <String>]: UPN of the user the device will be assigned
  [GroupTag <String>]: Group Tag of the Windows autopilot device.
  [HardwareIdentifier <Byte[]>]: Hardware Blob of the Windows autopilot device.
  [ImportId <String>]: The Import Id of the Windows autopilot device.
  [ProductKey <String>]: Product Key of the Windows autopilot device.
  [SerialNumber <String>]: Serial number of the Windows autopilot device.
  [State <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState>]: importedWindowsAutopilotDeviceIdentityState
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DeviceErrorCode <Int32?>]: Device error code reported by Device Directory Service(DDS).
    [DeviceErrorName <String>]: Device error name reported by Device Directory Service(DDS).
    [DeviceImportStatus <String>]: importedWindowsAutopilotDeviceIdentityImportStatus
    [DeviceRegistrationId <String>]: Device Registration ID for successfully added device reported by Device Directory Service(DDS).
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/import-mgdevicemanagementimportedwindowautopilotdeviceidentity
#>
function Import-MgDeviceManagementImportedWindowAutopilotDeviceIdentity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity])]
[CmdletBinding(DefaultParameterSetName='ImportExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Import1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Jc0WclDevicemanagementImportedwindowsautopilotdeviceidentitiesMicrosoftGraphImportPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ImportExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ImportExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity[]]
    # .
    # To construct, see NOTES section for IMPORTEDWINDOWSAUTOPILOTDEVICEIDENTITIES properties and create a hash table.
    ${ImportedWindowsAutopilotDeviceIdentities},

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
            Import1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Import-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_Import1';
            ImportExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Import-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_ImportExpanded1';
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
A request to start onboarding.
Must be coupled with the appropriate TeamViewer account information
.Description
A request to start onboarding.
Must be coupled with the appropriate TeamViewer account information

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/invoke-mgbegindevicemanagementremoteassistancepartneronboarding
#>
function Invoke-MgBeginDeviceManagementRemoteAssistancePartnerOnboarding {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Begin1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Begin1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of remoteAssistancePartner
    ${RemoteAssistancePartnerId},

    [Parameter(ParameterSetName='BeginViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Begin1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgBeginDeviceManagementRemoteAssistancePartnerOnboarding_Begin1';
            BeginViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgBeginDeviceManagementRemoteAssistancePartnerOnboarding_BeginViaIdentity1';
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
Clean Windows device
.Description
Clean Windows device

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Ll2DrbDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphCleanwindowsdevicePostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Ll2DrbDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphCleanwindowsdevicePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [KeepUserData <Boolean?>]: 

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/invoke-mgcleandevicemanagementmanageddevicewindowdevice
#>
function Invoke-MgCleanDeviceManagementManagedDeviceWindowDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='CleanExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Clean1', Mandatory)]
    [Parameter(ParameterSetName='CleanExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='CleanViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CleanViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Clean1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CleanViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ll2DrbDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphCleanwindowsdevicePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CleanExpanded1')]
    [Parameter(ParameterSetName='CleanViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CleanExpanded1')]
    [Parameter(ParameterSetName='CleanViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${KeepUserData},

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
            Clean1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgCleanDeviceManagementManagedDeviceWindowDevice_Clean1';
            CleanExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgCleanDeviceManagementManagedDeviceWindowDevice_CleanExpanded1';
            CleanViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgCleanDeviceManagementManagedDeviceWindowDevice_CleanViaIdentity1';
            CleanViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgCleanDeviceManagementManagedDeviceWindowDevice_CleanViaIdentityExpanded1';
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
Shut down device
.Description
Shut down device

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/invoke-mgdowndevicemanagementmanageddeviceshut
#>
function Invoke-MgDownDeviceManagementManagedDeviceShut {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Down1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Down1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='DownViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Down1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgDownDeviceManagementManagedDeviceShut_Down1';
            DownViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgDownDeviceManagementManagedDeviceShut_DownViaIdentity1';
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
Logout shared Apple device active user
.Description
Logout shared Apple device active user

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/invoke-mglogoutdevicemanagementmanageddevicesharedappledeviceactiveuser
#>
function Invoke-MgLogoutDeviceManagementManagedDeviceSharedAppleDeviceActiveUser {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Logout1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Logout1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='LogoutViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Logout1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgLogoutDeviceManagementManagedDeviceSharedAppleDeviceActiveUser_Logout1';
            LogoutViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgLogoutDeviceManagementManagedDeviceSharedAppleDeviceActiveUser_LogoutViaIdentity1';
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
Retire a device
.Description
Retire a device

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/invoke-mgretiredevicemanagementmanageddevice
#>
function Invoke-MgRetireDeviceManagementManagedDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Retire1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Retire1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='RetireViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Retire1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgRetireDeviceManagementManagedDevice_Retire1';
            RetireViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgRetireDeviceManagementManagedDevice_RetireViaIdentity1';
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
Invoke action windowsDefenderScan
.Description
Invoke action windowsDefenderScan

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsByrzneDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphWindowsdefenderscanPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsByrzneDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphWindowsdefenderscanPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [QuickScan <Boolean?>]: 

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/invoke-mgscandevicemanagementmanageddevicewindowdefender
#>
function Invoke-MgScanDeviceManagementManagedDeviceWindowDefender {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ScanExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Scan1', Mandatory)]
    [Parameter(ParameterSetName='ScanExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='ScanViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ScanViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Scan1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ScanViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsByrzneDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphWindowsdefenderscanPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ScanExpanded1')]
    [Parameter(ParameterSetName='ScanViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ScanExpanded1')]
    [Parameter(ParameterSetName='ScanViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${QuickScan},

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
            Scan1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgScanDeviceManagementManagedDeviceWindowDefender_Scan1';
            ScanExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgScanDeviceManagementManagedDeviceWindowDefender_ScanExpanded1';
            ScanViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgScanDeviceManagementManagedDeviceWindowDefender_ScanViaIdentity1';
            ScanViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgScanDeviceManagementManagedDeviceWindowDefender_ScanViaIdentityExpanded1';
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
Invoke action scheduleActionsForRules
.Description
Invoke action scheduleActionsForRules

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsY039HhDevicemanagementDevicecompliancepoliciesDevicecompliancepolicyIdMicrosoftGraphScheduleactionsforrulesPostRequestbodyContentApplicationJsonSchema1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsY039HhDevicemanagementDevicecompliancepoliciesDevicecompliancepolicyIdMicrosoftGraphScheduleactionsforrulesPostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DeviceComplianceScheduledActionForRules <IMicrosoftGraphDeviceComplianceScheduledActionForRule[]>]: 
    [Id <String>]: Read-only.
    [RuleName <String>]: Name of the rule which this scheduled action applies to. Currently scheduled actions are created per policy instead of per rule, thus RuleName is always set to default value PasswordRequired.
    [ScheduledActionConfigurations <IMicrosoftGraphDeviceComplianceActionItem[]>]: The list of scheduled action configurations for this compliance policy. Compliance policy must have one and only one block scheduled action.
      [Id <String>]: Read-only.
      [ActionType <String>]: Scheduled Action Type Enum
      [GracePeriodHours <Int32?>]: Number of hours to wait till the action will be enforced. Valid values 0 to 8760
      [NotificationMessageCcList <String[]>]: A list of group IDs to speicify who to CC this notification message to.
      [NotificationTemplateId <String>]: What notification Message template to use

DEVICECOMPLIANCESCHEDULEDACTIONFORRULES <IMicrosoftGraphDeviceComplianceScheduledActionForRule[]>: .
  [Id <String>]: Read-only.
  [RuleName <String>]: Name of the rule which this scheduled action applies to. Currently scheduled actions are created per policy instead of per rule, thus RuleName is always set to default value PasswordRequired.
  [ScheduledActionConfigurations <IMicrosoftGraphDeviceComplianceActionItem[]>]: The list of scheduled action configurations for this compliance policy. Compliance policy must have one and only one block scheduled action.
    [Id <String>]: Read-only.
    [ActionType <String>]: Scheduled Action Type Enum
    [GracePeriodHours <Int32?>]: Number of hours to wait till the action will be enforced. Valid values 0 to 8760
    [NotificationMessageCcList <String[]>]: A list of group IDs to speicify who to CC this notification message to.
    [NotificationTemplateId <String>]: What notification Message template to use

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/invoke-mgscheduledevicemanagementdevicecompliancepolicyaction
#>
function Invoke-MgScheduleDeviceManagementDeviceCompliancePolicyAction {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ScheduleExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Schedule', Mandatory)]
    [Parameter(ParameterSetName='ScheduleExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceCompliancePolicy
    ${DeviceCompliancePolicyId},

    [Parameter(ParameterSetName='ScheduleViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ScheduleViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Schedule', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ScheduleViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsY039HhDevicemanagementDevicecompliancepoliciesDevicecompliancepolicyIdMicrosoftGraphScheduleactionsforrulesPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ScheduleExpanded')]
    [Parameter(ParameterSetName='ScheduleViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ScheduleExpanded')]
    [Parameter(ParameterSetName='ScheduleViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceComplianceScheduledActionForRule[]]
    # .
    # To construct, see NOTES section for DEVICECOMPLIANCESCHEDULEDACTIONFORRULES properties and create a hash table.
    ${DeviceComplianceScheduledActionForRules},

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
            Schedule = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgScheduleDeviceManagementDeviceCompliancePolicyAction_Schedule';
            ScheduleExpanded = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgScheduleDeviceManagementDeviceCompliancePolicyAction_ScheduleExpanded';
            ScheduleViaIdentity = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgScheduleDeviceManagementDeviceCompliancePolicyAction_ScheduleViaIdentity';
            ScheduleViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgScheduleDeviceManagementDeviceCompliancePolicyAction_ScheduleViaIdentityExpanded';
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
Unassigns the user from an Autopilot device.
.Description
Unassigns the user from an Autopilot device.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/invoke-mgunassigndevicemanagementwindowautopilotdeviceidentityuserfromdevice
#>
function Invoke-MgUnassignDeviceManagementWindowAutopilotDeviceIdentityUserFromDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Unassign1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Unassign1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsAutopilotDeviceIdentity
    ${WindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='UnassignViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Unassign1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgUnassignDeviceManagementWindowAutopilotDeviceIdentityUserFromDevice_Unassign1';
            UnassignViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Invoke-MgUnassignDeviceManagementWindowAutopilotDeviceIdentityUserFromDevice_UnassignViaIdentity1';
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
Remote lock
.Description
Remote lock

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/lock-mgdevicemanagementmanageddeviceremote
#>
function Lock-MgDeviceManagementManagedDeviceRemote {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Lock1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Lock1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='LockViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Lock1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Lock-MgDeviceManagementManagedDeviceRemote_Lock1';
            LockViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Lock-MgDeviceManagementManagedDeviceRemote_LockViaIdentity1';
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
Invoke action windowsDefenderUpdateSignatures
.Description
Invoke action windowsDefenderUpdateSignatures

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/new-mgdevicemanagementmanageddevicewindowsdefenderupdatesignature
#>
function New-MgDeviceManagementManagedDeviceWindowsDefenderUpdateSignature {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Update1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Update1 = 'Microsoft.Graph.DeviceManagement.Actions.private\New-MgDeviceManagementManagedDeviceWindowsDefenderUpdateSignature_Update1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\New-MgDeviceManagementManagedDeviceWindowsDefenderUpdateSignature_UpdateViaIdentity1';
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
Delete user from shared Apple device
.Description
Delete user from shared Apple device

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths5C9DebDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphDeleteuserfromsharedappledevicePostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths5C9DebDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphDeleteuserfromsharedappledevicePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [UserPrincipalName <String>]: 

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/remove-mgdevicemanagementmanageddeviceuserfromsharedappledevice
#>
function Remove-MgDeviceManagementManagedDeviceUserFromSharedAppleDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='DeleteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Parameter(ParameterSetName='DeleteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeleteViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Delete1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths5C9DebDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphDeleteuserfromsharedappledevicePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='DeleteExpanded1')]
    [Parameter(ParameterSetName='DeleteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='DeleteExpanded1')]
    [Parameter(ParameterSetName='DeleteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Remove-MgDeviceManagementManagedDeviceUserFromSharedAppleDevice_Delete1';
            DeleteExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Remove-MgDeviceManagementManagedDeviceUserFromSharedAppleDevice_DeleteExpanded1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Remove-MgDeviceManagementManagedDeviceUserFromSharedAppleDevice_DeleteViaIdentity1';
            DeleteViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Remove-MgDeviceManagementManagedDeviceUserFromSharedAppleDevice_DeleteViaIdentityExpanded1';
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
Request remote assistance
.Description
Request remote assistance

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/request-mgdevicemanagementmanageddeviceremoteassistance
#>
function Request-MgDeviceManagementManagedDeviceRemoteAssistance {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Request1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Request1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='RequestViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Request1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Request-MgDeviceManagementManagedDeviceRemoteAssistance_Request1';
            RequestViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Request-MgDeviceManagementManagedDeviceRemoteAssistance_RequestViaIdentity1';
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
Reset passcode
.Description
Reset passcode

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/reset-mgdevicemanagementmanageddevicepasscode
#>
function Reset-MgDeviceManagementManagedDevicePasscode {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Reset1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reset1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='ResetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Reset1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Reset-MgDeviceManagementManagedDevicePasscode_Reset1';
            ResetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Reset-MgDeviceManagementManagedDevicePasscode_ResetViaIdentity1';
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
Reboot device
.Description
Reboot device

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/restart-mgdevicemanagementmanageddevicenow
#>
function Restart-MgDeviceManagementManagedDeviceNow {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Reboot1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reboot1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='RebootViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Reboot1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Restart-MgDeviceManagementManagedDeviceNow_Reboot1';
            RebootViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Restart-MgDeviceManagementManagedDeviceNow_RebootViaIdentity1';
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
Recover passcode
.Description
Recover passcode

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/restore-mgdevicemanagementmanageddevicepasscode
#>
function Restore-MgDeviceManagementManagedDevicePasscode {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Recover1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Recover1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='RecoverViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Recover1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Restore-MgDeviceManagementManagedDevicePasscode_Recover1';
            RecoverViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Restore-MgDeviceManagementManagedDevicePasscode_RecoverViaIdentity1';
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
Sends test message using the specified notificationMessageTemplate in the default locale
.Description
Sends test message using the specified notificationMessageTemplate in the default locale

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/send-mgdevicemanagementnotificationmessagetemplatetestmessage
#>
function Send-MgDeviceManagementNotificationMessageTemplateTestMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Send1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of notificationMessageTemplate
    ${NotificationMessageTemplateId},

    [Parameter(ParameterSetName='SendViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Send1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Send-MgDeviceManagementNotificationMessageTemplateTestMessage_Send1';
            SendViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Send-MgDeviceManagementNotificationMessageTemplateTestMessage_SendViaIdentity1';
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
Invoke action assign
.Description
Invoke action assign

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsYydoy0DevicemanagementDevicecompliancepoliciesDevicecompliancepolicyIdMicrosoftGraphAssignPostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicyAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNMENTS <IMicrosoftGraphDeviceCompliancePolicyAssignment[]>: .
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

BODYPARAMETER <IPathsYydoy0DevicemanagementDevicecompliancepoliciesDevicecompliancepolicyIdMicrosoftGraphAssignPostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Assignments <IMicrosoftGraphDeviceCompliancePolicyAssignment[]>]: 
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/set-mgdevicemanagementdevicecompliancepolicy
#>
function Set-MgDeviceManagementDeviceCompliancePolicy {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicyAssignment])]
[CmdletBinding(DefaultParameterSetName='AssignExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Assign', Mandatory)]
    [Parameter(ParameterSetName='AssignExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceCompliancePolicy
    ${DeviceCompliancePolicyId},

    [Parameter(ParameterSetName='AssignViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Assign', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssignViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsYydoy0DevicemanagementDevicecompliancepoliciesDevicecompliancepolicyIdMicrosoftGraphAssignPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AssignExpanded')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AssignExpanded')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicyAssignment[]]
    # .
    # To construct, see NOTES section for ASSIGNMENTS properties and create a hash table.
    ${Assignments},

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
            Assign = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceCompliancePolicy_Assign';
            AssignExpanded = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceCompliancePolicy_AssignExpanded';
            AssignViaIdentity = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceCompliancePolicy_AssignViaIdentity';
            AssignViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceCompliancePolicy_AssignViaIdentityExpanded';
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
Invoke action assign
.Description
Invoke action assign

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsKq4LptDevicemanagementDeviceconfigurationsDeviceconfigurationIdMicrosoftGraphAssignPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceConfigurationAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNMENTS <IMicrosoftGraphDeviceConfigurationAssignment[]>: .
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

BODYPARAMETER <IPathsKq4LptDevicemanagementDeviceconfigurationsDeviceconfigurationIdMicrosoftGraphAssignPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Assignments <IMicrosoftGraphDeviceConfigurationAssignment[]>]: 
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/set-mgdevicemanagementdeviceconfiguration
#>
function Set-MgDeviceManagementDeviceConfiguration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceConfigurationAssignment])]
[CmdletBinding(DefaultParameterSetName='AssignExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Assign', Mandatory)]
    [Parameter(ParameterSetName='AssignExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceConfiguration
    ${DeviceConfigurationId},

    [Parameter(ParameterSetName='AssignViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Assign', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssignViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsKq4LptDevicemanagementDeviceconfigurationsDeviceconfigurationIdMicrosoftGraphAssignPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AssignExpanded')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AssignExpanded')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceConfigurationAssignment[]]
    # .
    # To construct, see NOTES section for ASSIGNMENTS properties and create a hash table.
    ${Assignments},

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
            Assign = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceConfiguration_Assign';
            AssignExpanded = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceConfiguration_AssignExpanded';
            AssignViaIdentity = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceConfiguration_AssignViaIdentity';
            AssignViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceConfiguration_AssignViaIdentityExpanded';
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
Invoke action setPriority
.Description
Invoke action setPriority

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Ch2TbmDevicemanagementDeviceenrollmentconfigurationsDeviceenrollmentconfigurationIdMicrosoftGraphSetpriorityPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Ch2TbmDevicemanagementDeviceenrollmentconfigurationsDeviceenrollmentconfigurationIdMicrosoftGraphSetpriorityPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Priority <Int32?>]: 

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/set-mgdevicemanagementdeviceenrollmentconfigurationpriority
#>
function Set-MgDeviceManagementDeviceEnrollmentConfigurationPriority {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ch2TbmDevicemanagementDeviceenrollmentconfigurationsDeviceenrollmentconfigurationIdMicrosoftGraphSetpriorityPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Priority},

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
            Set = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceEnrollmentConfigurationPriority_Set';
            SetExpanded = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceEnrollmentConfigurationPriority_SetExpanded';
            SetViaIdentity = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceEnrollmentConfigurationPriority_SetViaIdentity';
            SetViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceEnrollmentConfigurationPriority_SetViaIdentityExpanded';
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
Invoke action assign
.Description
Invoke action assign

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsScqz9HDevicemanagementDeviceenrollmentconfigurationsDeviceenrollmentconfigurationIdMicrosoftGraphAssignPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsScqz9HDevicemanagementDeviceenrollmentconfigurationsDeviceenrollmentconfigurationIdMicrosoftGraphAssignPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EnrollmentConfigurationAssignments <IMicrosoftGraphEnrollmentConfigurationAssignment[]>]: 
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.

ENROLLMENTCONFIGURATIONASSIGNMENTS <IMicrosoftGraphEnrollmentConfigurationAssignment[]>: .
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/set-mgdevicemanagementdeviceenrollmentconfiguration
#>
function Set-MgDeviceManagementDeviceEnrollmentConfiguration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AssignExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Assign', Mandatory)]
    [Parameter(ParameterSetName='AssignExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='AssignViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Assign', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssignViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsScqz9HDevicemanagementDeviceenrollmentconfigurationsDeviceenrollmentconfigurationIdMicrosoftGraphAssignPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AssignExpanded')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AssignExpanded')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment[]]
    # .
    # To construct, see NOTES section for ENROLLMENTCONFIGURATIONASSIGNMENTS properties and create a hash table.
    ${EnrollmentConfigurationAssignments},

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
            Assign = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceEnrollmentConfiguration_Assign';
            AssignExpanded = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceEnrollmentConfiguration_AssignExpanded';
            AssignViaIdentity = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceEnrollmentConfiguration_AssignViaIdentity';
            AssignViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementDeviceEnrollmentConfiguration_AssignViaIdentityExpanded';
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
Assigns user to Autopilot devices.
.Description
Assigns user to Autopilot devices.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsLgvh1ODevicemanagementWindowsautopilotdeviceidentitiesWindowsautopilotdeviceidentityIdMicrosoftGraphAssignusertodevicePostRequestbodyContentApplicationJsonSchema1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsLgvh1ODevicemanagementWindowsautopilotdeviceidentitiesWindowsautopilotdeviceidentityIdMicrosoftGraphAssignusertodevicePostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AddressableUserName <String>]: 
  [UserPrincipalName <String>]: 

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/set-mgdevicemanagementwindowautopilotdeviceidentityusertodevice
#>
function Set-MgDeviceManagementWindowAutopilotDeviceIdentityUserToDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AssignExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Assign1', Mandatory)]
    [Parameter(ParameterSetName='AssignExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsAutopilotDeviceIdentity
    ${WindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='AssignViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Assign1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssignViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsLgvh1ODevicemanagementWindowsautopilotdeviceidentitiesWindowsautopilotdeviceidentityIdMicrosoftGraphAssignusertodevicePostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AssignExpanded1')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AssignExpanded1')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AddressableUserName},

    [Parameter(ParameterSetName='AssignExpanded1')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
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
            Assign1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementWindowAutopilotDeviceIdentityUserToDevice_Assign1';
            AssignExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementWindowAutopilotDeviceIdentityUserToDevice_AssignExpanded1';
            AssignViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementWindowAutopilotDeviceIdentityUserToDevice_AssignViaIdentity1';
            AssignViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Set-MgDeviceManagementWindowAutopilotDeviceIdentityUserToDevice_AssignViaIdentityExpanded1';
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
Bypass activation lock
.Description
Bypass activation lock

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/skip-mgdevicemanagementmanageddeviceactivationlock
#>
function Skip-MgDeviceManagementManagedDeviceActivationLock {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Bypass1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Bypass1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='BypassViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Bypass1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Skip-MgDeviceManagementManagedDeviceActivationLock_Bypass1';
            BypassViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Skip-MgDeviceManagementManagedDeviceActivationLock_BypassViaIdentity1';
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
Invoke action sync
.Description
Invoke action sync

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsD33NzdDevicemanagementExchangeconnectorsDevicemanagementexchangeconnectorIdMicrosoftGraphSyncPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsD33NzdDevicemanagementExchangeconnectorsDevicemanagementexchangeconnectorIdMicrosoftGraphSyncPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [SyncType <String>]: The type of Exchange Connector sync requested.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/sync-mgdevicemanagementexchangeconnector
#>
function Sync-MgDeviceManagementExchangeConnector {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SyncExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Sync1', Mandatory)]
    [Parameter(ParameterSetName='SyncExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementExchangeConnector
    ${DeviceManagementExchangeConnectorId},

    [Parameter(ParameterSetName='SyncViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SyncViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Sync1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SyncViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsD33NzdDevicemanagementExchangeconnectorsDevicemanagementexchangeconnectorIdMicrosoftGraphSyncPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SyncExpanded1')]
    [Parameter(ParameterSetName='SyncViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SyncExpanded1')]
    [Parameter(ParameterSetName='SyncViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The type of Exchange Connector sync requested.
    ${SyncType},

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
            Sync1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Sync-MgDeviceManagementExchangeConnector_Sync1';
            SyncExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Sync-MgDeviceManagementExchangeConnector_SyncExpanded1';
            SyncViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Sync-MgDeviceManagementExchangeConnector_SyncViaIdentity1';
            SyncViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Sync-MgDeviceManagementExchangeConnector_SyncViaIdentityExpanded1';
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
Invoke action syncDevice
.Description
Invoke action syncDevice

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/sync-mgdevicemanagementmanageddevice
#>
function Sync-MgDeviceManagementManagedDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Sync1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Sync1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='SyncViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
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
            Sync1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Sync-MgDeviceManagementManagedDevice_Sync1';
            SyncViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Sync-MgDeviceManagementManagedDevice_SyncViaIdentity1';
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
Invoke action updateWindowsDeviceAccount
.Description
Invoke action updateWindowsDeviceAccount

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1L95NseDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphUpdatewindowsdeviceaccountPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1L95NseDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphUpdatewindowsdeviceaccountPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [UpdateWindowsDeviceAccountActionParameter <IMicrosoftGraphUpdateWindowsDeviceAccountActionParameter>]: updateWindowsDeviceAccountActionParameter
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CalendarSyncEnabled <Boolean?>]: Not yet documented
    [DeviceAccount <IMicrosoftGraphWindowsDeviceAccount>]: windowsDeviceAccount
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Password <String>]: Not yet documented
    [DeviceAccountEmail <String>]: Not yet documented
    [ExchangeServer <String>]: Not yet documented
    [PasswordRotationEnabled <Boolean?>]: Not yet documented
    [SessionInitiationProtocalAddress <String>]: Not yet documented

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile

UPDATEWINDOWSDEVICEACCOUNTACTIONPARAMETER <IMicrosoftGraphUpdateWindowsDeviceAccountActionParameter>: updateWindowsDeviceAccountActionParameter
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CalendarSyncEnabled <Boolean?>]: Not yet documented
  [DeviceAccount <IMicrosoftGraphWindowsDeviceAccount>]: windowsDeviceAccount
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Password <String>]: Not yet documented
  [DeviceAccountEmail <String>]: Not yet documented
  [ExchangeServer <String>]: Not yet documented
  [PasswordRotationEnabled <Boolean?>]: Not yet documented
  [SessionInitiationProtocalAddress <String>]: Not yet documented
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/update-mgdevicemanagementmanageddevicewindowdeviceaccount
#>
function Update-MgDeviceManagementManagedDeviceWindowDeviceAccount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1L95NseDevicemanagementManageddevicesManageddeviceIdMicrosoftGraphUpdatewindowsdeviceaccountPostRequestbodyContentApplicationJsonSchema]
    # .
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUpdateWindowsDeviceAccountActionParameter]
    # updateWindowsDeviceAccountActionParameter
    # To construct, see NOTES section for UPDATEWINDOWSDEVICEACCOUNTACTIONPARAMETER properties and create a hash table.
    ${UpdateWindowsDeviceAccountActionParameter},

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
            Update1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Update-MgDeviceManagementManagedDeviceWindowDeviceAccount_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Update-MgDeviceManagementManagedDeviceWindowDeviceAccount_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Update-MgDeviceManagementManagedDeviceWindowDeviceAccount_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Update-MgDeviceManagementManagedDeviceWindowDeviceAccount_UpdateViaIdentityExpanded1';
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
Updates properties on Autopilot devices.
.Description
Updates properties on Autopilot devices.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths17Vu19LDevicemanagementWindowsautopilotdeviceidentitiesWindowsautopilotdeviceidentityIdMicrosoftGraphUpdatedevicepropertiesPostRequestbodyContentApplicationJsonSchema1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths17Vu19LDevicemanagementWindowsautopilotdeviceidentitiesWindowsautopilotdeviceidentityIdMicrosoftGraphUpdatedevicepropertiesPostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AddressableUserName <String>]: 
  [DisplayName <String>]: 
  [GroupTag <String>]: 
  [UserPrincipalName <String>]: 

INPUTOBJECT <IDeviceManagementActionsIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppLogCollectionRequestId <String>]: key: id of appLogCollectionRequest
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [CertificateConnectorDetailsId <String>]: key: id of certificateConnectorDetails
  [CloudPcDeviceImageId <String>]: key: id of cloudPcDeviceImage
  [CloudPcId <String>]: key: id of cloudPC
  [CloudPcOnPremisesConnectionId <String>]: key: id of cloudPcOnPremisesConnection
  [CloudPcProvisioningPolicyId <String>]: key: id of cloudPcProvisioningPolicy
  [CloudPcUserSettingId <String>]: key: id of cloudPcUserSetting
  [DataSharingConsentId <String>]: key: id of dataSharingConsent
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DetectedAppId <String>]: key: id of detectedApp
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceCompliancePolicyId <String>]: key: id of deviceCompliancePolicy
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceLogCollectionResponseId <String>]: key: id of deviceLogCollectionResponse
  [DeviceManagementConfigurationPolicyId <String>]: key: id of deviceManagementConfigurationPolicy
  [DeviceManagementExchangeConnectorId <String>]: key: id of deviceManagementExchangeConnector
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementResourceAccessProfileBaseId <String>]: key: id of deviceManagementResourceAccessProfileBase
  [DeviceManagementReusablePolicySettingId <String>]: key: id of deviceManagementReusablePolicySetting
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [EmbeddedSimActivationCodePoolId <String>]: key: id of embeddedSIMActivationCodePool
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [GroupPolicyConfigurationId <String>]: key: id of groupPolicyConfiguration
  [GroupPolicyUploadedDefinitionFileId <String>]: key: id of groupPolicyUploadedDefinitionFile
  [IntuneBrandingProfileId <String>]: key: id of intuneBrandingProfile
  [ManagedDeviceId <String>]: key: id of managedDevice
  [MicrosoftTunnelServerId <String>]: key: id of microsoftTunnelServer
  [MicrosoftTunnelServerLogCollectionResponseId <String>]: key: id of microsoftTunnelServerLogCollectionResponse
  [MicrosoftTunnelSiteId <String>]: key: id of microsoftTunnelSite
  [MobileAppTroubleshootingEventId <String>]: key: id of mobileAppTroubleshootingEvent
  [NotificationMessageTemplateId <String>]: key: id of notificationMessageTemplate
  [RemoteAssistancePartnerId <String>]: key: id of remoteAssistancePartner
  [RoleScopeTagId <String>]: key: id of roleScopeTag
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsDriverUpdateProfileId <String>]: key: id of windowsDriverUpdateProfile
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsQualityUpdateProfileId <String>]: key: id of windowsQualityUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/update-mgdevicemanagementwindowautopilotdeviceidentitydeviceproperty
#>
function Update-MgDeviceManagementWindowAutopilotDeviceIdentityDeviceProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsAutopilotDeviceIdentity
    ${WindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementActionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths17Vu19LDevicemanagementWindowsautopilotdeviceidentitiesWindowsautopilotdeviceidentityIdMicrosoftGraphUpdatedevicepropertiesPostRequestbodyContentApplicationJsonSchema1]
    # .
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
    # .
    ${AddressableUserName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${GroupTag},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
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
            Update1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentityDeviceProperty_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentityDeviceProperty_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentityDeviceProperty_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Actions.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentityDeviceProperty_UpdateViaIdentityExpanded1';
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
# MIIjkgYJKoZIhvcNAQcCoIIjgzCCI38CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBa7ij7MuUgwiTt
# vVrMQf2Yg2PFVxQQiTQb8qdBoXfp1KCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIVZzCCFWMCAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAd9r8C6Sp0q00AAAAAAB3zAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgTCW1VqWi
# SiFedUs6fjJEJ1c5aUukMZtj2iOEkemKCYcwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQCU/2zJpAXn/A8PZsvMjbcy+RwncNYPNQa6SiMZcRlP
# 1iN37YazskmRwD2Lq2kVqDpCgjqQreIGy32ND0ckNPJRTnlezGXl1CiwLE10+j8L
# jbkDKKI1dioIwSwsqDSxlTwuyQb0BRSi4sX61jyMMi4/n2htULkPLSKV6ZfnZrSw
# 9qwZ3LV743ixMgUpybiJ6gbSf7kvbgRsfNnESy5xW8vnlI8Ztiqj1eweB0UbZUF1
# 7c4NEL+ikYd6TvpABBbWzfrdxsehgJcRIDhTjGuL0OytPtF+7q78zoiMSxHRGNF/
# ytaiRxCLctPVrRKmRPJqw0gfGXtwrA4IuAXk4WSd05ehoYIS8TCCEu0GCisGAQQB
# gjcDAwExghLdMIIS2QYJKoZIhvcNAQcCoIISyjCCEsYCAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEICU6qDjpRb10rWY7hSYCPt4veanbVYN6DPJpxJLt
# I6fcAgZhb3TWkw8YEzIwMjExMDI3MDcxMTIzLjkyOFowBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjo0NjJGLUUzMTktM0YyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCDkQwggT1MIID3aADAgECAhMzAAABWHBaIve+luYDAAAA
# AAFYMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMDExNDE5MDIxNFoXDTIyMDQxMTE5MDIxNFowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0NjJG
# LUUzMTktM0YyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKEfC5dg9auw0KAFGwv1
# 7yMFG8SfqgUUFC8Dzwa8mrps0eyhRQ2Nv9K7/sz/fVE1o/1fZp4q4SGitcsjPGtO
# njWx45VIFTINQpdoOhmsPdnFy3gBXpMGtTfXqLnnUE4+VmKC2vAhOZ06U6vt5Cc0
# cJoqEJtzOWRwEaz8BoX2nCX1RBXkH3PiAu7tWJv3V8zhRSPLFmeiJ+CIway04AUg
# mrwXEQHvJHgb6PiLCxgE2VABCDNT5CVyieNapcZiKx16QbDle7KOwkjMEIKkcxR+
# 32dDMtzCtpIUDgrKxmjx+Gm94jHieohOHUuhl3u3hlAYfv2SA/86T1UNAiBQg3Wu
# 9xsCAwEAAaOCARswggEXMB0GA1UdDgQWBBRLcNkbfZ0cGB/u536ge5Mn06L5WDAf
# BgNVHSMEGDAWgBTVYzpcijGQ80N7fEYbxTNoWoVtVTBWBgNVHR8ETzBNMEugSaBH
# hkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNU
# aW1TdGFQQ0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUF
# BzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1RpbVN0
# YVBDQV8yMDEwLTA3LTAxLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsG
# AQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IBAQA53ygDWovQrh8fuliNXW0CUBTzfA4S
# l4h+IPEh5lNdrhDFy6T4MA9jup1zzlFkpYrUc0sTfQCAOnAjmunPgnmaS5bSf2VH
# 8Mg34U2qgPLInMAkGaBs/BzabJ65YKe1P5IKZN7Wj2bRfCK03ES8kS7g6YQH67ix
# MCQCLDreWDKJYsNs0chNpJOAzyJeGfyRUe+TUUbFwjsC/18KmYODVgpRSYZx0W7j
# rGqlJVEehuwpSIsGOYCBMnJDNdKnP+13Cg68cVtCNX6kJdvUFH0ZiuPMlBYD7GrC
# PqARlSn+vxffMivu2DMJJLkeywxSfD52sDV+NBf5IniuKFcE9y0m9m2jMIIGcTCC
# BFmgAwIBAgIKYQmBKgAAAAAAAjANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJv
# b3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMTAwNzAxMjEzNjU1WhcN
# MjUwNzAxMjE0NjU1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCCASIw
# DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKkdDbx3EYo6IOz8E5f1+n9plGt0
# VBDVpQoAgoX77XxoSyxfxcPlYcJ2tz5mK1vwFVMnBDEfQRsalR3OCROOfGEwWbEw
# RA/xYIiEVEMM1024OAizQt2TrNZzMFcmgqNFDdDq9UeBzb8kYDJYYEbyWEeGMoQe
# dGFnkV+BVLHPk0ySwcSmXdFhE24oxhr5hoC732H8RsEnHSRnEnIaIYqvS2SJUGKx
# Xf13Hz3wV3WsvYpCTUBR0Q+cBj5nf/VmwAOWRH7v0Ev9buWayrGo8noqCjHw2k4G
# kbaICDXoeByw6ZnNPOcvRLqn9NxkvaQBwSAJk3jN/LzAyURdXhacAQVPIk0CAwEA
# AaOCAeYwggHiMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBTVYzpcijGQ80N7
# fEYbxTNoWoVtVTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMC
# AYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvX
# zpoYxDBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20v
# cGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYI
# KwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDCBoAYDVR0g
# AQH/BIGVMIGSMIGPBgkrBgEEAYI3LgMwgYEwPQYIKwYBBQUHAgEWMWh0dHA6Ly93
# d3cubWljcm9zb2Z0LmNvbS9QS0kvZG9jcy9DUFMvZGVmYXVsdC5odG0wQAYIKwYB
# BQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AUABvAGwAaQBjAHkAXwBTAHQAYQB0AGUA
# bQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAAfmiFEN4sbgmD+BcQM9naOh
# IW+z66bM9TG+zwXiqf76V20ZMLPCxWbJat/15/B4vceoniXj+bzta1RXCCtRgkQS
# +7lTjMz0YBKKdsxAQEGb3FwX/1z5Xhc1mCRWS3TvQhDIr79/xn/yN31aPxzymXlK
# kVIArzgPF/UveYFl2am1a+THzvbKegBvSzBEJCI8z+0DpZaPWSm8tv0E4XCfMkon
# /VWvL/625Y4zu2JfmttXQOnxzplmkIz/amJ/3cVKC5Em4jnsGUpxY517IW3DnKOi
# PPp/fZZqkHimbdLhnPkd/DjYlPTGpQqWhqS9nhquBEKDuLWAmyI4ILUl5WTs9/S/
# fmNZJQ96LjlXdqJxqgaKD4kWumGnEcua2A5HmoDF0M2n0O99g/DhO3EJ3110mCII
# YdqwUB5vvfHhAN/nMQekkzr3ZUd46PioSKv33nJ+YWtvd6mBy6cJrDm77MbL2IK0
# cs0d9LiFAR6A+xuJKlQ5slvayA1VmXqHczsI5pgt6o3gMy4SKfXAL1QnIffIrE7a
# KLixqduWsqdCosnPGUFN4Ib5KpqjEWYw07t0MkvfY3v1mYovG8chr1m1rtxEPJdQ
# cdeh0sVV42neV8HR3jDA/czmTfsNv11P6Z0eGTgvvM9YBS7vDaBQNdrvCScc1bN+
# NR4Iuto229Nfj950iEkSoYIC0jCCAjsCAQEwgfyhgdSkgdEwgc4xCzAJBgNVBAYT
# AlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBP
# cGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0
# NjJGLUUzMTktM0YyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vy
# dmljZaIjCgEBMAcGBSsOAwIaAxUAqckrcxrn0Qshpuozjp+l+DSfNL+ggYMwgYCk
# fjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIF
# AOUjLZswIhgPMjAyMTEwMjcwNTQ0NTlaGA8yMDIxMTAyODA1NDQ1OVowdzA9Bgor
# BgEEAYRZCgQBMS8wLTAKAgUA5SMtmwIBADAKAgEAAgImJgIB/zAHAgEAAgIRBDAK
# AgUA5SR/GwIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIB
# AAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBAE7rl4eLqfnzqClD
# 4UNJlYpQyxUBTEi1AuOOGKXoR+NAtkfM8Gqa/2WrLa+IM+Ucks03s1WRg9BaVQIi
# NgpDm8SOIor7/7CDlRsDQL3kqlD9ZOi3SsWagubiGkF9xkdkQE4s4Nhtz2rq0pVt
# vYebi/DEIvycGA94wExYv6CMFXLzMYIDDTCCAwkCAQEwgZMwfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTACEzMAAAFYcFoi976W5gMAAAAAAVgwDQYJYIZIAWUD
# BAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0B
# CQQxIgQgbusql68b++T1fUtMJNML6PFB6Z2L3r72F4sWQB0+ejkwgfoGCyqGSIb3
# DQEJEAIvMYHqMIHnMIHkMIG9BCDySjONbIY1l2zKT4ba4sCI4WkBC6sIfR9uSVNV
# x3DTBzCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAB
# WHBaIve+luYDAAAAAAFYMCIEILuLhQPOgG/tIO5CCvlstZpMora0qsta4wGEcV/f
# QQulMA0GCSqGSIb3DQEBCwUABIIBADb8ZYmvSX93j2dKGUI8Bg24Wg9T636l01tX
# Mgi8TMO61wEOCwFztMo4RqKXEWFb0oipuYh6Z7I/KZ1DWr53iD3c6WhIfPvsnUcP
# wITKH00A0JXqcHRb3cCtcWudz5U1C3RS34AgQ5nWsWXDoiQfyRc17RLqXVFRJr2L
# ZY9zEpNkfRUvpJTVR4gwn8KiT0AyzfTtsYEIN+JAxeljm8f8WIGAJK3HzRMNHFET
# i61L2zItYb7BbEXA+iCRhoSxSByaT1SpRYaaKUaiUCC3+2j3ZfTt4K1O4dsc404G
# j51zRkOmIqXF7fPINW77QnEbQoTJnFT7jZipn0TaAmlyxXLbQTk=
# SIG # End signature block
