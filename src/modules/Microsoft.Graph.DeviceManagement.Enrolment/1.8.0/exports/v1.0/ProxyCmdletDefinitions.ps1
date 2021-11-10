
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
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access
.Description
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnPremisesConditionalAccessSettings
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgdevicemanagementconditionalaccesssetting
#>
function Get-MgDeviceManagementConditionalAccessSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnPremisesConditionalAccessSettings])]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementConditionalAccessSetting_Get1';
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
The list of group assignments for the device configuration profile
.Description
The list of group assignments for the device configuration profile

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgdevicemanagementdeviceenrollmentconfigurationassignment
#>
function Get-MgDeviceManagementDeviceEnrollmentConfigurationAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of enrollmentConfigurationAssignment
    ${EnrollmentConfigurationAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_GetViaIdentity';
            List = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_List';
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
The list of device enrollment configurations
.Description
The list of device enrollment configurations

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgdevicemanagementdeviceenrollmentconfiguration
#>
function Get-MgDeviceManagementDeviceEnrollmentConfiguration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfiguration_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfiguration_GetViaIdentity';
            List = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfiguration_List';
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
Collection of imported Windows autopilot devices.
.Description
Collection of imported Windows autopilot devices.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgdevicemanagementimportedwindowautopilotdeviceidentity
#>
function Get-MgDeviceManagementImportedWindowAutopilotDeviceIdentity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of importedWindowsAutopilotDeviceIdentity
    ${ImportedWindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_GetViaIdentity';
            List = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_List';
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
The Windows autopilot device identities contained collection.
.Description
The Windows autopilot device identities contained collection.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgdevicemanagementwindowautopilotdeviceidentity
#>
function Get-MgDeviceManagementWindowAutopilotDeviceIdentity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsAutopilotDeviceIdentity
    ${WindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementWindowAutopilotDeviceIdentity_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementWindowAutopilotDeviceIdentity_GetViaIdentity1';
            List = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementWindowAutopilotDeviceIdentity_List';
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
Read-only property with details of the app specific scope when the assignment scope is app specific.
Containment entity.
Supports $expand.
.Description
Read-only property with details of the app specific scope when the assignment scope is app specific.
Containment entity.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAppScope
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectoryroleassignmentappscope
#>
function Get-MgRoleManagementDirectoryRoleAssignmentAppScope {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAppScope])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentAppScope_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentAppScope_GetViaIdentity1';
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
The directory object that is the scope of the assignment.
Read-only.
Supports $expand.
.Description
The directory object that is the scope of the assignment.
Read-only.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectoryroleassignmentdirectoryscopebyref
#>
function Get-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef_GetViaIdentity1';
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
The directory object that is the scope of the assignment.
Read-only.
Supports $expand.
.Description
The directory object that is the scope of the assignment.
Read-only.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectoryroleassignmentdirectoryscope
#>
function Get-MgRoleManagementDirectoryRoleAssignmentDirectoryScope {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentDirectoryScope_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentDirectoryScope_GetViaIdentity1';
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
Referencing the assigned principal.
Read-only.
Supports $expand.
.Description
Referencing the assigned principal.
Read-only.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectoryroleassignmentprincipalbyref
#>
function Get-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef_GetViaIdentity1';
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
Referencing the assigned principal.
Read-only.
Supports $expand.
.Description
Referencing the assigned principal.
Read-only.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectoryroleassignmentprincipal
#>
function Get-MgRoleManagementDirectoryRoleAssignmentPrincipal {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentPrincipal_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentPrincipal_GetViaIdentity1';
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
The roleDefinition the assignment is for.
Supports $expand.
roleDefinition.Id will be auto expanded.
.Description
The roleDefinition the assignment is for.
Supports $expand.
roleDefinition.Id will be auto expanded.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectoryroleassignmentroledefinitionbyref
#>
function Get-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef_GetViaIdentity1';
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
The roleDefinition the assignment is for.
Supports $expand.
roleDefinition.Id will be auto expanded.
.Description
The roleDefinition the assignment is for.
Supports $expand.
roleDefinition.Id will be auto expanded.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectoryroleassignmentroledefinition
#>
function Get-MgRoleManagementDirectoryRoleAssignmentRoleDefinition {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentRoleDefinition_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignmentRoleDefinition_GetViaIdentity1';
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
Resource to grant access to users or groups.
.Description
Resource to grant access to users or groups.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectoryroleassignment
#>
function Get-MgRoleManagementDirectoryRoleAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleAssignment])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignment_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignment_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleAssignment_List1';
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
Read-only collection of role definitions that the given role definition inherits from.
Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
Supports $expand.
.Description
Read-only collection of role definitions that the given role definition inherits from.
Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectoryroledefinitioninheritpermissionfrom
#>
function Get-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleDefinition
    ${UnifiedRoleDefinitionId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleDefinition
    ${UnifiedRoleDefinitionId1},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_List1';
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
Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.
.Description
Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectoryroledefinition
#>
function Get-MgRoleManagementDirectoryRoleDefinition {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleDefinition
    ${UnifiedRoleDefinitionId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleDefinition_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleDefinition_GetViaIdentity1';
            List1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectoryRoleDefinition_List1';
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
Read-only.
Nullable.
.Description
Read-only.
Nullable.

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRbacApplication1
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagementdirectory
#>
function Get-MgRoleManagementDirectory {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRbacApplication1])]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagementDirectory_Get1';
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
Get roleManagement
.Description
Get roleManagement

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRbacApplication1
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagement
#>
function Get-MgRoleManagement {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRbacApplication1])]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagement_Get1';
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
The list of group assignments for the device configuration profile
.Description
The list of group assignments for the device configuration profile

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphEnrollmentConfigurationAssignment>: Enrollment Configuration Assignment
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgdevicemanagementdeviceenrollmentconfigurationassignment
#>
function New-MgDeviceManagementDeviceEnrollmentConfigurationAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment]
    # Enrollment Configuration Assignment
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
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
            Create = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_Create';
            CreateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_CreateViaIdentityExpanded';
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
The list of device enrollment configurations
.Description
The list of device enrollment configurations

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNMENTS <IMicrosoftGraphEnrollmentConfigurationAssignment[]>: The list of group assignments for the device configuration profile
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

BODYPARAMETER <IMicrosoftGraphDeviceEnrollmentConfiguration>: The Base Class of Device Enrollment Configuration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Assignments <IMicrosoftGraphEnrollmentConfigurationAssignment[]>]: The list of group assignments for the device configuration profile
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.
  [CreatedDateTime <DateTime?>]: Created date time in UTC of the device enrollment configuration
  [Description <String>]: The description of the device enrollment configuration
  [DisplayName <String>]: The display name of the device enrollment configuration
  [LastModifiedDateTime <DateTime?>]: Last modified date time in UTC of the device enrollment configuration
  [Priority <Int32?>]: Priority is used when a user exists in multiple groups that are assigned enrollment configuration. Users are subject only to the configuration with the lowest priority value.
  [Version <Int32?>]: The version of the device enrollment configuration
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgdevicemanagementdeviceenrollmentconfiguration
#>
function New-MgDeviceManagementDeviceEnrollmentConfiguration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration]
    # The Base Class of Device Enrollment Configuration
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment[]]
    # The list of group assignments for the device configuration profile
    # To construct, see NOTES section for ASSIGNMENTS properties and create a hash table.
    ${Assignments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Created date time in UTC of the device enrollment configuration
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The description of the device enrollment configuration
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the device enrollment configuration
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last modified date time in UTC of the device enrollment configuration
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Priority is used when a user exists in multiple groups that are assigned enrollment configuration.
    # Users are subject only to the configuration with the lowest priority value.
    ${Priority},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The version of the device enrollment configuration
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
            Create = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfiguration_Create';
            CreateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfiguration_CreateExpanded';
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
Collection of imported Windows autopilot devices.
.Description
Collection of imported Windows autopilot devices.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity>: Imported windows autopilot devices.
  [(Any) <Object>]: This indicates any property can be added to this object.
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

STATE <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState>: importedWindowsAutopilotDeviceIdentityState
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DeviceErrorCode <Int32?>]: Device error code reported by Device Directory Service(DDS).
  [DeviceErrorName <String>]: Device error name reported by Device Directory Service(DDS).
  [DeviceImportStatus <String>]: importedWindowsAutopilotDeviceIdentityImportStatus
  [DeviceRegistrationId <String>]: Device Registration ID for successfully added device reported by Device Directory Service(DDS).
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgdevicemanagementimportedwindowautopilotdeviceidentity
#>
function New-MgDeviceManagementImportedWindowAutopilotDeviceIdentity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity]
    # Imported windows autopilot devices.
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
    # UPN of the user the device will be assigned
    ${AssignedUserPrincipalName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Group Tag of the Windows autopilot device.
    ${GroupTag},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for HardwareIdentifier (Hardware Blob of the Windows autopilot device.)
    ${HardwareIdentifierInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The Import Id of the Windows autopilot device.
    ${ImportId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Product Key of the Windows autopilot device.
    ${ProductKey},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Serial number of the Windows autopilot device.
    ${SerialNumber},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState]
    # importedWindowsAutopilotDeviceIdentityState
    # To construct, see NOTES section for STATE properties and create a hash table.
    ${State},

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
            Create = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_Create';
            CreateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_CreateExpanded';
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
The Windows autopilot device identities contained collection.
.Description
The Windows autopilot device identities contained collection.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphWindowsAutopilotDeviceIdentity>: The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AddressableUserName <String>]: Addressable user name.
  [AzureActiveDirectoryDeviceId <String>]: AAD Device ID - to be deprecated
  [DisplayName <String>]: Display Name
  [EnrollmentState <String>]: 
  [GroupTag <String>]: Group Tag of the Windows autopilot device.
  [LastContactedDateTime <DateTime?>]: Intune Last Contacted Date Time of the Windows autopilot device.
  [ManagedDeviceId <String>]: Managed Device ID
  [Manufacturer <String>]: Oem manufacturer of the Windows autopilot device.
  [Model <String>]: Model name of the Windows autopilot device.
  [ProductKey <String>]: Product Key of the Windows autopilot device.
  [PurchaseOrderIdentifier <String>]: Purchase Order Identifier of the Windows autopilot device.
  [ResourceName <String>]: Resource Name.
  [SerialNumber <String>]: Serial number of the Windows autopilot device.
  [SkuNumber <String>]: SKU Number
  [SystemFamily <String>]: System Family
  [UserPrincipalName <String>]: User Principal Name.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgdevicemanagementwindowautopilotdeviceidentity
#>
function New-MgDeviceManagementWindowAutopilotDeviceIdentity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity]
    # The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.
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
    # Addressable user name.
    ${AddressableUserName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # AAD Device ID - to be deprecated
    ${AzureActiveDirectoryDeviceId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display Name
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EnrollmentState},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Group Tag of the Windows autopilot device.
    ${GroupTag},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Intune Last Contacted Date Time of the Windows autopilot device.
    ${LastContactedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Managed Device ID
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Oem manufacturer of the Windows autopilot device.
    ${Manufacturer},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Model name of the Windows autopilot device.
    ${Model},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Product Key of the Windows autopilot device.
    ${ProductKey},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Purchase Order Identifier of the Windows autopilot device.
    ${PurchaseOrderIdentifier},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Resource Name.
    ${ResourceName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Serial number of the Windows autopilot device.
    ${SerialNumber},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # SKU Number
    ${SkuNumber},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # System Family
    ${SystemFamily},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # User Principal Name.
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
            Create1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementWindowAutopilotDeviceIdentity_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementWindowAutopilotDeviceIdentity_CreateExpanded1';
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
Resource to grant access to users or groups.
.Description
Resource to grant access to users or groups.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleAssignment
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

APPSCOPE <IMicrosoftGraphAppScope>: appScope
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DisplayName <String>]: Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. Read-only.
  [Type <String>]: Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. Read-only.

BODYPARAMETER <IMicrosoftGraphUnifiedRoleAssignment>: unifiedRoleAssignment
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AppScope <IMicrosoftGraphAppScope>]: appScope
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [DisplayName <String>]: Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. Read-only.
    [Type <String>]: Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. Read-only.
  [AppScopeId <String>]: Identifier of the app-specific scope when the assignment scope is app-specific.  Either this property or directoryScopeId is required. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units. Supports $filter (eq, in).
  [Condition <String>]: 
  [DirectoryScope <IMicrosoftGraphDirectoryObject>]: directoryObject
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [DeletedDateTime <DateTime?>]: 
  [DirectoryScopeId <String>]: Identifier of the directory object representing the scope of the assignment.  Either this property or appScopeId is required. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only. Supports $filter (eq, in).
  [Principal <IMicrosoftGraphDirectoryObject>]: directoryObject
  [PrincipalId <String>]: Identifier of the principal to which the assignment is granted. Supports $filter (eq, in).
  [RoleDefinition <IMicrosoftGraphUnifiedRoleDefinition1>]: unifiedRoleDefinition
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
    [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
    [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
    [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
    [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
    [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
    [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
      [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
      [Condition <String>]: Optional constraints that must be met for the permission to be effective.
      [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
    [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
    [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.
  [RoleDefinitionId <String>]: Identifier of the role definition the assignment is for. Read only. Supports $filter (eq, in).

DIRECTORYSCOPE <IMicrosoftGraphDirectoryObject>: directoryObject
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

PRINCIPAL <IMicrosoftGraphDirectoryObject>: directoryObject
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

ROLEDEFINITION <IMicrosoftGraphUnifiedRoleDefinition1>: unifiedRoleDefinition
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgrolemanagementdirectoryroleassignment
#>
function New-MgRoleManagementDirectoryRoleAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleAssignment])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleAssignment]
    # unifiedRoleAssignment
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAppScope]
    # appScope
    # To construct, see NOTES section for APPSCOPE properties and create a hash table.
    ${AppScope},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifier of the app-specific scope when the assignment scope is app-specific.
    # Either this property or directoryScopeId is required.
    # App scopes are scopes that are defined and understood by this application only.
    # Use / for tenant-wide app scopes.
    # Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units.
    # Supports $filter (eq, in).
    ${AppScopeId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Condition},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject]
    # directoryObject
    # To construct, see NOTES section for DIRECTORYSCOPE properties and create a hash table.
    ${DirectoryScope},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifier of the directory object representing the scope of the assignment.
    # Either this property or appScopeId is required.
    # The scope of an assignment determines the set of resources for which the principal has been granted access.
    # Directory scopes are shared scopes stored in the directory that are understood by multiple applications.
    # Use / for tenant-wide scope.
    # Use appScopeId to limit the scope to an application only.
    # Supports $filter (eq, in).
    ${DirectoryScopeId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject]
    # directoryObject
    # To construct, see NOTES section for PRINCIPAL properties and create a hash table.
    ${Principal},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifier of the principal to which the assignment is granted.
    # Supports $filter (eq, in).
    ${PrincipalId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1]
    # unifiedRoleDefinition
    # To construct, see NOTES section for ROLEDEFINITION properties and create a hash table.
    ${RoleDefinition},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifier of the role definition the assignment is for.
    # Read only.
    # Supports $filter (eq, in).
    ${RoleDefinitionId},

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
            Create1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgRoleManagementDirectoryRoleAssignment_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgRoleManagementDirectoryRoleAssignment_CreateExpanded1';
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
Read-only collection of role definitions that the given role definition inherits from.
Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
Supports $expand.
.Description
Read-only collection of role definitions that the given role definition inherits from.
Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphUnifiedRoleDefinition1>: unifiedRoleDefinition
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.

INHERITSPERMISSIONSFROM <IMicrosoftGraphUnifiedRoleDefinition1[]>: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile

ROLEPERMISSIONS <IMicrosoftGraphUnifiedRolePermission[]>: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
  [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
  [Condition <String>]: Optional constraints that must be met for the permission to be effective.
  [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgrolemanagementdirectoryroledefinitioninheritpermissionfrom
#>
function New-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleDefinition
    ${UnifiedRoleDefinitionId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1]
    # unifiedRoleDefinition
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
    # The description for the unifiedRoleDefinition.
    # Read-only when isBuiltIn is true.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name for the unifiedRoleDefinition.
    # Read-only when isBuiltIn is true.
    # Required.
    # Supports $filter (eq, in).
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1[]]
    # Read-only collection of role definitions that the given role definition inherits from.
    # Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
    # Supports $expand.
    # To construct, see NOTES section for INHERITSPERMISSIONSFROM properties and create a hash table.
    ${InheritsPermissionsFrom},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition.
    # Read-only.
    # Supports $filter (eq, in).
    ${IsBuiltIn},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag indicating whether the role is enabled for assignment.
    # If false the role is not available for assignment.
    # Read-only when isBuiltIn is true.
    ${IsEnabled},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of the scopes or permissions the role definition applies to.
    # Currently only / is supported.
    # Read-only when isBuiltIn is true.
    # DO NOT USE.
    # This will be deprecated soon.
    # Attach scope to role assignment.
    ${ResourceScopes},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRolePermission[]]
    # List of permissions included in the role.
    # Read-only when isBuiltIn is true.
    # Required.
    # To construct, see NOTES section for ROLEPERMISSIONS properties and create a hash table.
    ${RolePermissions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true.
    # This identifier is typically used if one needs an identifier to be the same across different directories.
    ${TemplateId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Indicates version of the role definition.
    # Read-only when isBuiltIn is true.
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
            Create1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_CreateViaIdentityExpanded1';
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
Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.
.Description
Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphUnifiedRoleDefinition1>: unifiedRoleDefinition
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.

INHERITSPERMISSIONSFROM <IMicrosoftGraphUnifiedRoleDefinition1[]>: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.

ROLEPERMISSIONS <IMicrosoftGraphUnifiedRolePermission[]>: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
  [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
  [Condition <String>]: Optional constraints that must be met for the permission to be effective.
  [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgrolemanagementdirectoryroledefinition
#>
function New-MgRoleManagementDirectoryRoleDefinition {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1]
    # unifiedRoleDefinition
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
    # The description for the unifiedRoleDefinition.
    # Read-only when isBuiltIn is true.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name for the unifiedRoleDefinition.
    # Read-only when isBuiltIn is true.
    # Required.
    # Supports $filter (eq, in).
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1[]]
    # Read-only collection of role definitions that the given role definition inherits from.
    # Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
    # Supports $expand.
    # To construct, see NOTES section for INHERITSPERMISSIONSFROM properties and create a hash table.
    ${InheritsPermissionsFrom},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition.
    # Read-only.
    # Supports $filter (eq, in).
    ${IsBuiltIn},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag indicating whether the role is enabled for assignment.
    # If false the role is not available for assignment.
    # Read-only when isBuiltIn is true.
    ${IsEnabled},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of the scopes or permissions the role definition applies to.
    # Currently only / is supported.
    # Read-only when isBuiltIn is true.
    # DO NOT USE.
    # This will be deprecated soon.
    # Attach scope to role assignment.
    ${ResourceScopes},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRolePermission[]]
    # List of permissions included in the role.
    # Read-only when isBuiltIn is true.
    # Required.
    # To construct, see NOTES section for ROLEPERMISSIONS properties and create a hash table.
    ${RolePermissions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true.
    # This identifier is typically used if one needs an identifier to be the same across different directories.
    ${TemplateId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Indicates version of the role definition.
    # Read-only when isBuiltIn is true.
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
            Create1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgRoleManagementDirectoryRoleDefinition_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgRoleManagementDirectoryRoleDefinition_CreateExpanded1';
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
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access
.Description
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgdevicemanagementconditionalaccesssetting
#>
function Remove-MgDeviceManagementConditionalAccessSetting {
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementConditionalAccessSetting_Delete1';
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
The list of group assignments for the device configuration profile
.Description
The list of group assignments for the device configuration profile

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgdevicemanagementdeviceenrollmentconfigurationassignment
#>
function Remove-MgDeviceManagementDeviceEnrollmentConfigurationAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of enrollmentConfigurationAssignment
    ${EnrollmentConfigurationAssignmentId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_DeleteViaIdentity';
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
The list of device enrollment configurations
.Description
The list of device enrollment configurations

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgdevicemanagementdeviceenrollmentconfiguration
#>
function Remove-MgDeviceManagementDeviceEnrollmentConfiguration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementDeviceEnrollmentConfiguration_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementDeviceEnrollmentConfiguration_DeleteViaIdentity';
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
Collection of imported Windows autopilot devices.
.Description
Collection of imported Windows autopilot devices.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgdevicemanagementimportedwindowautopilotdeviceidentity
#>
function Remove-MgDeviceManagementImportedWindowAutopilotDeviceIdentity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of importedWindowsAutopilotDeviceIdentity
    ${ImportedWindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_DeleteViaIdentity';
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
The Windows autopilot device identities contained collection.
.Description
The Windows autopilot device identities contained collection.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgdevicemanagementwindowautopilotdeviceidentity
#>
function Remove-MgDeviceManagementWindowAutopilotDeviceIdentity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsAutopilotDeviceIdentity
    ${WindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementWindowAutopilotDeviceIdentity_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementWindowAutopilotDeviceIdentity_DeleteViaIdentity1';
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
Read-only property with details of the app specific scope when the assignment scope is app specific.
Containment entity.
Supports $expand.
.Description
Read-only property with details of the app specific scope when the assignment scope is app specific.
Containment entity.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgrolemanagementdirectoryroleassignmentappscope
#>
function Remove-MgRoleManagementDirectoryRoleAssignmentAppScope {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleAssignmentAppScope_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleAssignmentAppScope_DeleteViaIdentity1';
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
The directory object that is the scope of the assignment.
Read-only.
Supports $expand.
.Description
The directory object that is the scope of the assignment.
Read-only.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgrolemanagementdirectoryroleassignmentdirectoryscopebyref
#>
function Remove-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef_DeleteViaIdentity1';
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
Referencing the assigned principal.
Read-only.
Supports $expand.
.Description
Referencing the assigned principal.
Read-only.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgrolemanagementdirectoryroleassignmentprincipalbyref
#>
function Remove-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef_DeleteViaIdentity1';
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
The roleDefinition the assignment is for.
Supports $expand.
roleDefinition.Id will be auto expanded.
.Description
The roleDefinition the assignment is for.
Supports $expand.
roleDefinition.Id will be auto expanded.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgrolemanagementdirectoryroleassignmentroledefinitionbyref
#>
function Remove-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef_DeleteViaIdentity1';
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
Resource to grant access to users or groups.
.Description
Resource to grant access to users or groups.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgrolemanagementdirectoryroleassignment
#>
function Remove-MgRoleManagementDirectoryRoleAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleAssignment_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleAssignment_DeleteViaIdentity1';
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
Read-only collection of role definitions that the given role definition inherits from.
Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
Supports $expand.
.Description
Read-only collection of role definitions that the given role definition inherits from.
Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgrolemanagementdirectoryroledefinitioninheritpermissionfrom
#>
function Remove-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleDefinition
    ${UnifiedRoleDefinitionId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleDefinition
    ${UnifiedRoleDefinitionId1},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_DeleteViaIdentity1';
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
Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.
.Description
Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgrolemanagementdirectoryroledefinition
#>
function Remove-MgRoleManagementDirectoryRoleDefinition {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleDefinition
    ${UnifiedRoleDefinitionId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleDefinition_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectoryRoleDefinition_DeleteViaIdentity1';
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
Read-only.
Nullable.
.Description
Read-only.
Nullable.

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgrolemanagementdirectory
#>
function Remove-MgRoleManagementDirectory {
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
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgRoleManagementDirectory_Delete1';
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
The directory object that is the scope of the assignment.
Read-only.
Supports $expand.
.Description
The directory object that is the scope of the assignment.
Read-only.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/set-mgrolemanagementdirectoryroleassignmentdirectoryscopebyref
#>
function Set-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IPathsHpwemaRolemanagementDirectoryRoleassignmentsUnifiedroleassignmentIdDirectoryscopeRefPutRequestbodyContentApplicationJsonSchema]))]
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
            Set1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef_Set1';
            SetExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef_SetExpanded1';
            SetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef_SetViaIdentity1';
            SetViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentDirectoryScopeByRef_SetViaIdentityExpanded1';
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
Referencing the assigned principal.
Read-only.
Supports $expand.
.Description
Referencing the assigned principal.
Read-only.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/set-mgrolemanagementdirectoryroleassignmentprincipalbyref
#>
function Set-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IPaths62W10KRolemanagementDirectoryRoleassignmentsUnifiedroleassignmentIdPrincipalRefPutRequestbodyContentApplicationJsonSchema]))]
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
            Set1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef_Set1';
            SetExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef_SetExpanded1';
            SetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef_SetViaIdentity1';
            SetViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentPrincipalByRef_SetViaIdentityExpanded1';
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
The roleDefinition the assignment is for.
Supports $expand.
roleDefinition.Id will be auto expanded.
.Description
The roleDefinition the assignment is for.
Supports $expand.
roleDefinition.Id will be auto expanded.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/set-mgrolemanagementdirectoryroleassignmentroledefinitionbyref
#>
function Set-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IPathsArwbcnRolemanagementDirectoryRoleassignmentsUnifiedroleassignmentIdRoledefinitionRefPutRequestbodyContentApplicationJsonSchema]))]
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
            Set1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef_Set1';
            SetExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef_SetExpanded1';
            SetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef_SetViaIdentity1';
            SetViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Set-MgRoleManagementDirectoryRoleAssignmentRoleDefinitionByRef_SetViaIdentityExpanded1';
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
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access
.Description
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnPremisesConditionalAccessSettings
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphOnPremisesConditionalAccessSettings>: Singleton entity which represents the Exchange OnPremises Conditional Access Settings for a tenant.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Enabled <Boolean?>]: Indicates if on premises conditional access is enabled for this organization
  [ExcludedGroups <String[]>]: User groups that will be exempt by on premises conditional access. All users in these groups will be exempt from the conditional access policy.
  [IncludedGroups <String[]>]: User groups that will be targeted by on premises conditional access. All users in these groups will be required to have mobile device managed and compliant for mail access.
  [OverrideDefaultRule <Boolean?>]: Override the default access rule when allowing a device to ensure access is granted.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgdevicemanagementconditionalaccesssetting
#>
function Update-MgDeviceManagementConditionalAccessSetting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnPremisesConditionalAccessSettings]
    # Singleton entity which represents the Exchange OnPremises Conditional Access Settings for a tenant.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if on premises conditional access is enabled for this organization
    ${Enabled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # User groups that will be exempt by on premises conditional access.
    # All users in these groups will be exempt from the conditional access policy.
    ${ExcludedGroups},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # User groups that will be targeted by on premises conditional access.
    # All users in these groups will be required to have mobile device managed and compliant for mail access.
    ${IncludedGroups},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Override the default access rule when allowing a device to ensure access is granted.
    ${OverrideDefaultRule},

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
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementConditionalAccessSetting_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementConditionalAccessSetting_UpdateExpanded1';
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
The list of group assignments for the device configuration profile
.Description
The list of group assignments for the device configuration profile

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphEnrollmentConfigurationAssignment>: Enrollment Configuration Assignment
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgdevicemanagementdeviceenrollmentconfigurationassignment
#>
function Update-MgDeviceManagementDeviceEnrollmentConfigurationAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of enrollmentConfigurationAssignment
    ${EnrollmentConfigurationAssignmentId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment]
    # Enrollment Configuration Assignment
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
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
            Update = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_Update';
            UpdateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_UpdateViaIdentityExpanded';
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
The list of device enrollment configurations
.Description
The list of device enrollment configurations

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNMENTS <IMicrosoftGraphEnrollmentConfigurationAssignment[]>: The list of group assignments for the device configuration profile
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

BODYPARAMETER <IMicrosoftGraphDeviceEnrollmentConfiguration>: The Base Class of Device Enrollment Configuration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Assignments <IMicrosoftGraphEnrollmentConfigurationAssignment[]>]: The list of group assignments for the device configuration profile
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.
  [CreatedDateTime <DateTime?>]: Created date time in UTC of the device enrollment configuration
  [Description <String>]: The description of the device enrollment configuration
  [DisplayName <String>]: The display name of the device enrollment configuration
  [LastModifiedDateTime <DateTime?>]: Last modified date time in UTC of the device enrollment configuration
  [Priority <Int32?>]: Priority is used when a user exists in multiple groups that are assigned enrollment configuration. Users are subject only to the configuration with the lowest priority value.
  [Version <Int32?>]: The version of the device enrollment configuration

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgdevicemanagementdeviceenrollmentconfiguration
#>
function Update-MgDeviceManagementDeviceEnrollmentConfiguration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration]
    # The Base Class of Device Enrollment Configuration
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment[]]
    # The list of group assignments for the device configuration profile
    # To construct, see NOTES section for ASSIGNMENTS properties and create a hash table.
    ${Assignments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Created date time in UTC of the device enrollment configuration
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The description of the device enrollment configuration
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the device enrollment configuration
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
    [System.DateTime]
    # Last modified date time in UTC of the device enrollment configuration
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Priority is used when a user exists in multiple groups that are assigned enrollment configuration.
    # Users are subject only to the configuration with the lowest priority value.
    ${Priority},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The version of the device enrollment configuration
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
            Update = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfiguration_Update';
            UpdateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfiguration_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfiguration_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfiguration_UpdateViaIdentityExpanded';
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
Collection of imported Windows autopilot devices.
.Description
Collection of imported Windows autopilot devices.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity>: Imported windows autopilot devices.
  [(Any) <Object>]: This indicates any property can be added to this object.
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

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile

STATE <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState>: importedWindowsAutopilotDeviceIdentityState
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DeviceErrorCode <Int32?>]: Device error code reported by Device Directory Service(DDS).
  [DeviceErrorName <String>]: Device error name reported by Device Directory Service(DDS).
  [DeviceImportStatus <String>]: importedWindowsAutopilotDeviceIdentityImportStatus
  [DeviceRegistrationId <String>]: Device Registration ID for successfully added device reported by Device Directory Service(DDS).
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgdevicemanagementimportedwindowautopilotdeviceidentity
#>
function Update-MgDeviceManagementImportedWindowAutopilotDeviceIdentity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of importedWindowsAutopilotDeviceIdentity
    ${ImportedWindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity]
    # Imported windows autopilot devices.
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
    # UPN of the user the device will be assigned
    ${AssignedUserPrincipalName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Group Tag of the Windows autopilot device.
    ${GroupTag},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for HardwareIdentifier (Hardware Blob of the Windows autopilot device.)
    ${HardwareIdentifierInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The Import Id of the Windows autopilot device.
    ${ImportId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Product Key of the Windows autopilot device.
    ${ProductKey},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Serial number of the Windows autopilot device.
    ${SerialNumber},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState]
    # importedWindowsAutopilotDeviceIdentityState
    # To construct, see NOTES section for STATE properties and create a hash table.
    ${State},

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
            Update = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_Update';
            UpdateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_UpdateViaIdentityExpanded';
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
The Windows autopilot device identities contained collection.
.Description
The Windows autopilot device identities contained collection.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphWindowsAutopilotDeviceIdentity>: The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AddressableUserName <String>]: Addressable user name.
  [AzureActiveDirectoryDeviceId <String>]: AAD Device ID - to be deprecated
  [DisplayName <String>]: Display Name
  [EnrollmentState <String>]: 
  [GroupTag <String>]: Group Tag of the Windows autopilot device.
  [LastContactedDateTime <DateTime?>]: Intune Last Contacted Date Time of the Windows autopilot device.
  [ManagedDeviceId <String>]: Managed Device ID
  [Manufacturer <String>]: Oem manufacturer of the Windows autopilot device.
  [Model <String>]: Model name of the Windows autopilot device.
  [ProductKey <String>]: Product Key of the Windows autopilot device.
  [PurchaseOrderIdentifier <String>]: Purchase Order Identifier of the Windows autopilot device.
  [ResourceName <String>]: Resource Name.
  [SerialNumber <String>]: Serial number of the Windows autopilot device.
  [SkuNumber <String>]: SKU Number
  [SystemFamily <String>]: System Family
  [UserPrincipalName <String>]: User Principal Name.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgdevicemanagementwindowautopilotdeviceidentity
#>
function Update-MgDeviceManagementWindowAutopilotDeviceIdentity {
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
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity]
    # The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.
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
    # Addressable user name.
    ${AddressableUserName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # AAD Device ID - to be deprecated
    ${AzureActiveDirectoryDeviceId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display Name
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EnrollmentState},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Group Tag of the Windows autopilot device.
    ${GroupTag},

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
    # Intune Last Contacted Date Time of the Windows autopilot device.
    ${LastContactedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Managed Device ID
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Oem manufacturer of the Windows autopilot device.
    ${Manufacturer},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Model name of the Windows autopilot device.
    ${Model},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Product Key of the Windows autopilot device.
    ${ProductKey},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Purchase Order Identifier of the Windows autopilot device.
    ${PurchaseOrderIdentifier},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Resource Name.
    ${ResourceName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Serial number of the Windows autopilot device.
    ${SerialNumber},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # SKU Number
    ${SkuNumber},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # System Family
    ${SystemFamily},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # User Principal Name.
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
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentity_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentity_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentity_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentity_UpdateViaIdentityExpanded1';
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
Read-only property with details of the app specific scope when the assignment scope is app specific.
Containment entity.
Supports $expand.
.Description
Read-only property with details of the app specific scope when the assignment scope is app specific.
Containment entity.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAppScope
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAppScope>: appScope
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DisplayName <String>]: Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. Read-only.
  [Type <String>]: Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. Read-only.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgrolemanagementdirectoryroleassignmentappscope
#>
function Update-MgRoleManagementDirectoryRoleAssignmentAppScope {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAppScope]
    # appScope
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
    # Provides the display name of the app-specific resource represented by the app scope.
    # Provided for display purposes since appScopeId is often an immutable, non-human-readable id.
    # Read-only.
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
    [System.String]
    # Describes the type of app-specific resource represented by the app scope.
    # Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope.
    # Read-only.
    ${Type},

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
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleAssignmentAppScope_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleAssignmentAppScope_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleAssignmentAppScope_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleAssignmentAppScope_UpdateViaIdentityExpanded1';
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
Resource to grant access to users or groups.
.Description
Resource to grant access to users or groups.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleAssignment
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

APPSCOPE <IMicrosoftGraphAppScope>: appScope
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DisplayName <String>]: Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. Read-only.
  [Type <String>]: Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. Read-only.

BODYPARAMETER <IMicrosoftGraphUnifiedRoleAssignment>: unifiedRoleAssignment
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AppScope <IMicrosoftGraphAppScope>]: appScope
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [DisplayName <String>]: Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. Read-only.
    [Type <String>]: Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. Read-only.
  [AppScopeId <String>]: Identifier of the app-specific scope when the assignment scope is app-specific.  Either this property or directoryScopeId is required. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units. Supports $filter (eq, in).
  [Condition <String>]: 
  [DirectoryScope <IMicrosoftGraphDirectoryObject>]: directoryObject
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [DeletedDateTime <DateTime?>]: 
  [DirectoryScopeId <String>]: Identifier of the directory object representing the scope of the assignment.  Either this property or appScopeId is required. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only. Supports $filter (eq, in).
  [Principal <IMicrosoftGraphDirectoryObject>]: directoryObject
  [PrincipalId <String>]: Identifier of the principal to which the assignment is granted. Supports $filter (eq, in).
  [RoleDefinition <IMicrosoftGraphUnifiedRoleDefinition1>]: unifiedRoleDefinition
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
    [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
    [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
    [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
    [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
    [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
    [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
      [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
      [Condition <String>]: Optional constraints that must be met for the permission to be effective.
      [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
    [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
    [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.
  [RoleDefinitionId <String>]: Identifier of the role definition the assignment is for. Read only. Supports $filter (eq, in).

DIRECTORYSCOPE <IMicrosoftGraphDirectoryObject>: directoryObject
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile

PRINCIPAL <IMicrosoftGraphDirectoryObject>: directoryObject
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

ROLEDEFINITION <IMicrosoftGraphUnifiedRoleDefinition1>: unifiedRoleDefinition
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgrolemanagementdirectoryroleassignment
#>
function Update-MgRoleManagementDirectoryRoleAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleAssignment
    ${UnifiedRoleAssignmentId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleAssignment]
    # unifiedRoleAssignment
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAppScope]
    # appScope
    # To construct, see NOTES section for APPSCOPE properties and create a hash table.
    ${AppScope},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifier of the app-specific scope when the assignment scope is app-specific.
    # Either this property or directoryScopeId is required.
    # App scopes are scopes that are defined and understood by this application only.
    # Use / for tenant-wide app scopes.
    # Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units.
    # Supports $filter (eq, in).
    ${AppScopeId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Condition},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject]
    # directoryObject
    # To construct, see NOTES section for DIRECTORYSCOPE properties and create a hash table.
    ${DirectoryScope},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifier of the directory object representing the scope of the assignment.
    # Either this property or appScopeId is required.
    # The scope of an assignment determines the set of resources for which the principal has been granted access.
    # Directory scopes are shared scopes stored in the directory that are understood by multiple applications.
    # Use / for tenant-wide scope.
    # Use appScopeId to limit the scope to an application only.
    # Supports $filter (eq, in).
    ${DirectoryScopeId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject]
    # directoryObject
    # To construct, see NOTES section for PRINCIPAL properties and create a hash table.
    ${Principal},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifier of the principal to which the assignment is granted.
    # Supports $filter (eq, in).
    ${PrincipalId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1]
    # unifiedRoleDefinition
    # To construct, see NOTES section for ROLEDEFINITION properties and create a hash table.
    ${RoleDefinition},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifier of the role definition the assignment is for.
    # Read only.
    # Supports $filter (eq, in).
    ${RoleDefinitionId},

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
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleAssignment_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleAssignment_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleAssignment_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleAssignment_UpdateViaIdentityExpanded1';
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
Read-only collection of role definitions that the given role definition inherits from.
Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
Supports $expand.
.Description
Read-only collection of role definitions that the given role definition inherits from.
Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
Supports $expand.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphUnifiedRoleDefinition1>: unifiedRoleDefinition
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.

INHERITSPERMISSIONSFROM <IMicrosoftGraphUnifiedRoleDefinition1[]>: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile

ROLEPERMISSIONS <IMicrosoftGraphUnifiedRolePermission[]>: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
  [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
  [Condition <String>]: Optional constraints that must be met for the permission to be effective.
  [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgrolemanagementdirectoryroledefinitioninheritpermissionfrom
#>
function Update-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleDefinition
    ${UnifiedRoleDefinitionId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleDefinition
    ${UnifiedRoleDefinitionId1},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1]
    # unifiedRoleDefinition
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
    # The description for the unifiedRoleDefinition.
    # Read-only when isBuiltIn is true.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name for the unifiedRoleDefinition.
    # Read-only when isBuiltIn is true.
    # Required.
    # Supports $filter (eq, in).
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1[]]
    # Read-only collection of role definitions that the given role definition inherits from.
    # Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
    # Supports $expand.
    # To construct, see NOTES section for INHERITSPERMISSIONSFROM properties and create a hash table.
    ${InheritsPermissionsFrom},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition.
    # Read-only.
    # Supports $filter (eq, in).
    ${IsBuiltIn},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag indicating whether the role is enabled for assignment.
    # If false the role is not available for assignment.
    # Read-only when isBuiltIn is true.
    ${IsEnabled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of the scopes or permissions the role definition applies to.
    # Currently only / is supported.
    # Read-only when isBuiltIn is true.
    # DO NOT USE.
    # This will be deprecated soon.
    # Attach scope to role assignment.
    ${ResourceScopes},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRolePermission[]]
    # List of permissions included in the role.
    # Read-only when isBuiltIn is true.
    # Required.
    # To construct, see NOTES section for ROLEPERMISSIONS properties and create a hash table.
    ${RolePermissions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true.
    # This identifier is typically used if one needs an identifier to be the same across different directories.
    ${TemplateId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Indicates version of the role definition.
    # Read-only when isBuiltIn is true.
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
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleDefinitionInheritPermissionFrom_UpdateViaIdentityExpanded1';
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
Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.
.Description
Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphUnifiedRoleDefinition1>: unifiedRoleDefinition
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.

INHERITSPERMISSIONSFROM <IMicrosoftGraphUnifiedRoleDefinition1[]>: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile

ROLEPERMISSIONS <IMicrosoftGraphUnifiedRolePermission[]>: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
  [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
  [Condition <String>]: Optional constraints that must be met for the permission to be effective.
  [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgrolemanagementdirectoryroledefinition
#>
function Update-MgRoleManagementDirectoryRoleDefinition {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedRoleDefinition
    ${UnifiedRoleDefinitionId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1]
    # unifiedRoleDefinition
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
    # The description for the unifiedRoleDefinition.
    # Read-only when isBuiltIn is true.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name for the unifiedRoleDefinition.
    # Read-only when isBuiltIn is true.
    # Required.
    # Supports $filter (eq, in).
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1[]]
    # Read-only collection of role definitions that the given role definition inherits from.
    # Only Azure AD built-in roles (isBuiltIn is true) support this attribute.
    # Supports $expand.
    # To construct, see NOTES section for INHERITSPERMISSIONSFROM properties and create a hash table.
    ${InheritsPermissionsFrom},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition.
    # Read-only.
    # Supports $filter (eq, in).
    ${IsBuiltIn},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag indicating whether the role is enabled for assignment.
    # If false the role is not available for assignment.
    # Read-only when isBuiltIn is true.
    ${IsEnabled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of the scopes or permissions the role definition applies to.
    # Currently only / is supported.
    # Read-only when isBuiltIn is true.
    # DO NOT USE.
    # This will be deprecated soon.
    # Attach scope to role assignment.
    ${ResourceScopes},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRolePermission[]]
    # List of permissions included in the role.
    # Read-only when isBuiltIn is true.
    # Required.
    # To construct, see NOTES section for ROLEPERMISSIONS properties and create a hash table.
    ${RolePermissions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true.
    # This identifier is typically used if one needs an identifier to be the same across different directories.
    ${TemplateId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Indicates version of the role definition.
    # Read-only when isBuiltIn is true.
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
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleDefinition_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleDefinition_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleDefinition_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectoryRoleDefinition_UpdateViaIdentityExpanded1';
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
Read-only.
Nullable.
.Description
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRbacApplication1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphRbacApplication1>: rbacApplication
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [RoleAssignments <IMicrosoftGraphUnifiedRoleAssignment[]>]: Resource to grant access to users or groups.
    [Id <String>]: Read-only.
    [AppScope <IMicrosoftGraphAppScope>]: appScope
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [DisplayName <String>]: Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. Read-only.
      [Type <String>]: Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. Read-only.
    [AppScopeId <String>]: Identifier of the app-specific scope when the assignment scope is app-specific.  Either this property or directoryScopeId is required. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units. Supports $filter (eq, in).
    [Condition <String>]: 
    [DirectoryScope <IMicrosoftGraphDirectoryObject>]: directoryObject
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [DeletedDateTime <DateTime?>]: 
    [DirectoryScopeId <String>]: Identifier of the directory object representing the scope of the assignment.  Either this property or appScopeId is required. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only. Supports $filter (eq, in).
    [Principal <IMicrosoftGraphDirectoryObject>]: directoryObject
    [PrincipalId <String>]: Identifier of the principal to which the assignment is granted. Supports $filter (eq, in).
    [RoleDefinition <IMicrosoftGraphUnifiedRoleDefinition1>]: unifiedRoleDefinition
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
      [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
      [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
      [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
      [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
      [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
      [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
        [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
        [Condition <String>]: Optional constraints that must be met for the permission to be effective.
        [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
      [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
      [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.
    [RoleDefinitionId <String>]: Identifier of the role definition the assignment is for. Read only. Supports $filter (eq, in).
  [RoleDefinitions <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.

ROLEASSIGNMENTS <IMicrosoftGraphUnifiedRoleAssignment[]>: Resource to grant access to users or groups.
  [Id <String>]: Read-only.
  [AppScope <IMicrosoftGraphAppScope>]: appScope
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [DisplayName <String>]: Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. Read-only.
    [Type <String>]: Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. Read-only.
  [AppScopeId <String>]: Identifier of the app-specific scope when the assignment scope is app-specific.  Either this property or directoryScopeId is required. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units. Supports $filter (eq, in).
  [Condition <String>]: 
  [DirectoryScope <IMicrosoftGraphDirectoryObject>]: directoryObject
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [DeletedDateTime <DateTime?>]: 
  [DirectoryScopeId <String>]: Identifier of the directory object representing the scope of the assignment.  Either this property or appScopeId is required. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only. Supports $filter (eq, in).
  [Principal <IMicrosoftGraphDirectoryObject>]: directoryObject
  [PrincipalId <String>]: Identifier of the principal to which the assignment is granted. Supports $filter (eq, in).
  [RoleDefinition <IMicrosoftGraphUnifiedRoleDefinition1>]: unifiedRoleDefinition
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
    [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
    [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
    [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
    [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
    [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
    [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
      [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
      [Condition <String>]: Optional constraints that must be met for the permission to be effective.
      [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
    [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
    [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.
  [RoleDefinitionId <String>]: Identifier of the role definition the assignment is for. Read only. Supports $filter (eq, in).

ROLEDEFINITIONS <IMicrosoftGraphUnifiedRoleDefinition1[]>: Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.
  [Id <String>]: Read-only.
  [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
  [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
  [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
  [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
  [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
  [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
  [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
    [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
    [Condition <String>]: Optional constraints that must be met for the permission to be effective.
    [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
  [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
  [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgrolemanagementdirectory
#>
function Update-MgRoleManagementDirectory {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRbacApplication1]
    # rbacApplication
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
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleAssignment[]]
    # Resource to grant access to users or groups.
    # To construct, see NOTES section for ROLEASSIGNMENTS properties and create a hash table.
    ${RoleAssignments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnifiedRoleDefinition1[]]
    # Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.
    # To construct, see NOTES section for ROLEDEFINITIONS properties and create a hash table.
    ${RoleDefinitions},

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
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectory_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagementDirectory_UpdateExpanded1';
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
Update roleManagement
.Description
Update roleManagement

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleManagement
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphRoleManagement>: roleManagement
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Directory <IMicrosoftGraphRbacApplication1>]: rbacApplication
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [RoleAssignments <IMicrosoftGraphUnifiedRoleAssignment[]>]: Resource to grant access to users or groups.
      [Id <String>]: Read-only.
      [AppScope <IMicrosoftGraphAppScope>]: appScope
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [DisplayName <String>]: Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. Read-only.
        [Type <String>]: Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. Read-only.
      [AppScopeId <String>]: Identifier of the app-specific scope when the assignment scope is app-specific.  Either this property or directoryScopeId is required. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units. Supports $filter (eq, in).
      [Condition <String>]: 
      [DirectoryScope <IMicrosoftGraphDirectoryObject>]: directoryObject
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [DeletedDateTime <DateTime?>]: 
      [DirectoryScopeId <String>]: Identifier of the directory object representing the scope of the assignment.  Either this property or appScopeId is required. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only. Supports $filter (eq, in).
      [Principal <IMicrosoftGraphDirectoryObject>]: directoryObject
      [PrincipalId <String>]: Identifier of the principal to which the assignment is granted. Supports $filter (eq, in).
      [RoleDefinition <IMicrosoftGraphUnifiedRoleDefinition1>]: unifiedRoleDefinition
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
        [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
        [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
        [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
        [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
        [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
        [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
          [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
          [Condition <String>]: Optional constraints that must be met for the permission to be effective.
          [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
        [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
        [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.
      [RoleDefinitionId <String>]: Identifier of the role definition the assignment is for. Read only. Supports $filter (eq, in).
    [RoleDefinitions <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.

DIRECTORY <IMicrosoftGraphRbacApplication1>: rbacApplication
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [RoleAssignments <IMicrosoftGraphUnifiedRoleAssignment[]>]: Resource to grant access to users or groups.
    [Id <String>]: Read-only.
    [AppScope <IMicrosoftGraphAppScope>]: appScope
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [DisplayName <String>]: Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. Read-only.
      [Type <String>]: Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. Read-only.
    [AppScopeId <String>]: Identifier of the app-specific scope when the assignment scope is app-specific.  Either this property or directoryScopeId is required. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units. Supports $filter (eq, in).
    [Condition <String>]: 
    [DirectoryScope <IMicrosoftGraphDirectoryObject>]: directoryObject
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [DeletedDateTime <DateTime?>]: 
    [DirectoryScopeId <String>]: Identifier of the directory object representing the scope of the assignment.  Either this property or appScopeId is required. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only. Supports $filter (eq, in).
    [Principal <IMicrosoftGraphDirectoryObject>]: directoryObject
    [PrincipalId <String>]: Identifier of the principal to which the assignment is granted. Supports $filter (eq, in).
    [RoleDefinition <IMicrosoftGraphUnifiedRoleDefinition1>]: unifiedRoleDefinition
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Description <String>]: The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
      [DisplayName <String>]: The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
      [InheritsPermissionsFrom <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
      [IsBuiltIn <Boolean?>]: Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
      [IsEnabled <Boolean?>]: Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
      [ResourceScopes <String[]>]: List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
      [RolePermissions <IMicrosoftGraphUnifiedRolePermission[]>]: List of permissions included in the role. Read-only when isBuiltIn is true. Required.
        [AllowedResourceActions <String[]>]: Set of tasks that can be performed on a resource. Required.
        [Condition <String>]: Optional constraints that must be met for the permission to be effective.
        [ExcludedResourceActions <String[]>]: Set of tasks that may not be performed on a resource. Not yet supported.
      [TemplateId <String>]: Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
      [Version <String>]: Indicates version of the role definition. Read-only when isBuiltIn is true.
    [RoleDefinitionId <String>]: Identifier of the role definition the assignment is for. Read only. Supports $filter (eq, in).
  [RoleDefinitions <IMicrosoftGraphUnifiedRoleDefinition1[]>]: Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgrolemanagement
#>
function Update-MgRoleManagement {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleManagement]
    # roleManagement
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRbacApplication1]
    # rbacApplication
    # To construct, see NOTES section for DIRECTORY properties and create a hash table.
    ${Directory},

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
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagement_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagement_UpdateExpanded1';
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCwb3qQchphq6F8
# bNaNUVB9kSxtJkc8MV5ZQHHo8nLiF6CCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgi98m0ucN
# +ekHFxgt9lr+OMBTnAfnDve/CrfWB8i6DFMwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBtveuBI2mMWW+r8zu/J4uVZritmPXPXstmJw83rqay
# +M3bBQqlWxxyaI4vpfpDmpztyMJAJ0XxuuhHLwTQTuDO0+eFEKUR1QSB7UdFBzLK
# O09KL7VaJsp5zv4QgPr/NfXAsTa7Y/+Fde7jAHCuK4qb0kUKGdXGsp+aUZUVEGga
# fh8sJX9uMXzXCfTxSqLtlocjX7mRSV88GzHGOTSnQ6QWTgYw1zL9KKi1eLG9VuTo
# KuUW0Z+6mqoIour6849QzqHxD+FCJWAMxOJzp4bprO6WtPpuVHWLDEcf3QRMWZVI
# w2wHLf41OStqyc41nHLBvLT+c9qFDAfhjk43daBNohvCoYIS8TCCEu0GCisGAQQB
# gjcDAwExghLdMIIS2QYJKoZIhvcNAQcCoIISyjCCEsYCAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEICgoSK9OyXobuVDd5WJWfOPdnxLorjt+WQ94lMzd
# 8ZMiAgZhb3WF/TIYEzIwMjExMDI3MDcxMTI0Ljc3NlowBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjpGN0E2LUUyNTEtMTUwQTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCDkQwggT1MIID3aADAgECAhMzAAABWZ/8fl8s6vJDAAAA
# AAFZMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMDExNDE5MDIxNVoXDTIyMDQxMTE5MDIxNVowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpGN0E2
# LUUyNTEtMTUwQTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK54xGHJZ8SHREtNIoBo
# 9AG6Mro8gEZCt8WgV/mNdIt2tMOP3zVYU4+sRsImxTwfzJEDBWaTc7LxlEy/1302
# fRmd/R2pwnY7pyT90yvZAmQQLZ6D+faGBwwhi5rre/tmBJdbAXFZ8qL2JDc4txBn
# 30Mr1C8DFBdrIjwbP+i2RdAOaSwIs/xQsMeZAz3v5j9VEdwq8+iM6YcLcqKrYAwP
# +OE58371ST5kj2f7quToeTXhSvDczKYrVokL3Zn0+KNAnbpp4rH1tXymmgXQcgVC
# z1E/Ey8NEsvZ1FjV5QP6ovDMT8YAo7KzaYvT4Ix+xMVvW+1/1MnYaaoR8bLnQxmT
# ZOMCAwEAAaOCARswggEXMB0GA1UdDgQWBBT20KmFRryt+uTrJ9eIwjyy6Tdj5zAf
# BgNVHSMEGDAWgBTVYzpcijGQ80N7fEYbxTNoWoVtVTBWBgNVHR8ETzBNMEugSaBH
# hkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNU
# aW1TdGFQQ0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUF
# BzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1RpbVN0
# YVBDQV8yMDEwLTA3LTAxLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsG
# AQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IBAQCNkVQS6A+BhrfGOCAWo3KcuUa4estp
# zyn+ZLlkh0pJmAJp4EUDrLWsieYCf2oyoc8KjVMC+NHFFVvHLrSMhWnR5FtY6l3Z
# 6Ur9ITBSz64j5wTRRE8vIpQiHVYjRVNPGR2tiqG5nKP5+sD0rZI464OFNz4n7erD
# JOpV7Im1L/sAwfX+GHoc4j5rfuAuQTFY82sdYvtHM4LTxwV997uhlFs52oHapdFW
# 1KXt6vMxEXnSX8soQfUd+M+Yq3J7udc6R941Guxfd6A0vecV56JjvmpCng4jRkqu
# Aeyf/dKmQUaR1fKvALBRAmZkAUtWijS/3MkeQv/lUvHVo7GPFzJ/O3wJMIIGcTCC
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
# cGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpG
# N0E2LUUyNTEtMTUwQTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vy
# dmljZaIjCgEBMAcGBSsOAwIaAxUAKnbLAI8fhO58SCWrpZnXvXEZshGggYMwgYCk
# fjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIF
# AOUjLkQwIhgPMjAyMTEwMjcwNTQ3NDhaGA8yMDIxMTAyODA1NDc0OFowdzA9Bgor
# BgEEAYRZCgQBMS8wLTAKAgUA5SMuRAIBADAKAgEAAgInWwIB/zAHAgEAAgIRQzAK
# AgUA5SR/xAIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIB
# AAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBAJlPzwdVWiUetEqW
# yr7T7oddrugSXEsZuCe2h/y0P5yjm3ngbV0TV4fZLuU9mTHv5wTXlPQtGzuTRz9Q
# dD8HDvaQDoBXvf25jUKJRkIhffFdDmf1tmlsDnR5b+ercGjtdDfmf9sKUggBejDq
# LxHXmFdp+TQhljqEdE17J9FfqJbJMYIDDTCCAwkCAQEwgZMwfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTACEzMAAAFZn/x+Xyzq8kMAAAAAAVkwDQYJYIZIAWUD
# BAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0B
# CQQxIgQgPyF8PqIXibOMl3c46Q6mVj8CAMRN7XZwUmgutjHHo34wgfoGCyqGSIb3
# DQEJEAIvMYHqMIHnMIHkMIG9BCABWBvPvzDmfNeSzmJT4+dGA+uj/qq7/fKkUn36
# rxND6DCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAB
# WZ/8fl8s6vJDAAAAAAFZMCIEINSYqN3+2/Z1AleBBFNCyLo2K7CWEsZvZBiDTGY4
# LQsgMA0GCSqGSIb3DQEBCwUABIIBAEutKS39n8MUprwIO4ZMrwD2CcSYKfABIDXs
# vsk+9fvk85p3iU5+zCT3OjZFLH48WcuzjhA19uKn9Ys44zG5p1+0vYfM/WePmC97
# opELj7pyKA0EfUSpu8F5sFrQxFywwJrjzjc8LHUiS8BWeT/j92KMmYuTwN+OeMI5
# MXO6+WN/i0kL3pg5t+qv7QrKbBW7X6kX+/+PVmWFRtJInuXFZEsIw0TBLwL6EfuZ
# E7hCCauJGiK/Qwim97o6AamWRF0TuBoP0BaRig/EUPr6liK2JwjsLoz4k1imHz6J
# wg+oFfhEDjsNGMwrtk0e5hbXvft3nH7W1UPnXK/OnbaBCPJsORE=
# SIG # End signature block
