
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
Invoke function compare
.Description
Invoke function compare

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementSettingComparison
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/compare-mgdevicemanagementintent
#>
function Compare-MgDeviceManagementIntent {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementSettingComparison])]
[CmdletBinding(DefaultParameterSetName='Compare', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Compare', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementIntent
    ${DeviceManagementIntentId},

    [Parameter(ParameterSetName='Compare', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: templateId={templateId}
    ${TemplateId},

    [Parameter(ParameterSetName='CompareViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Compare = 'Microsoft.Graph.DeviceManagement.Functions.private\Compare-MgDeviceManagementIntent_Compare';
            CompareViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Compare-MgDeviceManagementIntent_CompareViaIdentity';
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
Invoke function compare
.Description
Invoke function compare

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementSettingComparison
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/compare-mgdevicemanagementtemplatemigratableto
#>
function Compare-MgDeviceManagementTemplateMigratableTo {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementSettingComparison])]
[CmdletBinding(DefaultParameterSetName='Compare', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Compare', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementTemplate
    ${DeviceManagementTemplateId},

    [Parameter(ParameterSetName='Compare', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementTemplate
    ${DeviceManagementTemplateId1},

    [Parameter(ParameterSetName='Compare', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: templateId={templateId}
    ${TemplateId},

    [Parameter(ParameterSetName='CompareViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Compare = 'Microsoft.Graph.DeviceManagement.Functions.private\Compare-MgDeviceManagementTemplateMigratableTo_Compare';
            CompareViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Compare-MgDeviceManagementTemplateMigratableTo_CompareViaIdentity';
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
Invoke function compare
.Description
Invoke function compare

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementSettingComparison
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/compare-mgdevicemanagementtemplate
#>
function Compare-MgDeviceManagementTemplate {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementSettingComparison])]
[CmdletBinding(DefaultParameterSetName='Compare', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Compare', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementTemplate
    ${DeviceManagementTemplateId},

    [Parameter(ParameterSetName='Compare', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: templateId={templateId}
    ${TemplateId},

    [Parameter(ParameterSetName='CompareViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Compare = 'Microsoft.Graph.DeviceManagement.Functions.private\Compare-MgDeviceManagementTemplate_Compare';
            CompareViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Compare-MgDeviceManagementTemplate_CompareViaIdentity';
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
Invoke function verifyWindowsEnrollmentAutoDiscovery
.Description
Invoke function verifyWindowsEnrollmentAutoDiscovery

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/confirm-mgdevicemanagementwindowenrollmentautodiscovery
#>
function Confirm-MgDeviceManagementWindowEnrollmentAutoDiscovery {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Verify', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Verify', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: domainName={domainName}
    ${DomainName},

    [Parameter(ParameterSetName='VerifyViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Verify = 'Microsoft.Graph.DeviceManagement.Functions.private\Confirm-MgDeviceManagementWindowEnrollmentAutoDiscovery_Verify';
            VerifyViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Confirm-MgDeviceManagementWindowEnrollmentAutoDiscovery_VerifyViaIdentity';
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
Exports the mobile configuration
.Description
Exports the mobile configuration

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/export-mgdevicemanagementdeponboardingsettingenrollmentprofilemobileconfig
#>
function Export-MgDeviceManagementDepOnboardingSettingEnrollmentProfileMobileConfig {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Export', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Export', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of depOnboardingSetting
    ${DepOnboardingSettingId},

    [Parameter(ParameterSetName='Export', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of enrollmentProfile
    ${EnrollmentProfileId},

    [Parameter(ParameterSetName='ExportViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Export = 'Microsoft.Graph.DeviceManagement.Functions.private\Export-MgDeviceManagementDepOnboardingSettingEnrollmentProfileMobileConfig_Export';
            ExportViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Export-MgDeviceManagementDepOnboardingSettingEnrollmentProfileMobileConfig_ExportViaIdentity';
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
Retrieves the assigned role definitions and role assignments of the currently authenticated user.
.Description
Retrieves the assigned role definitions and role assignments of the currently authenticated user.

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementAssignedRoleDetails
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementassignedroledetail
#>
function Get-MgDeviceManagementAssignedRoleDetail {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementAssignedRoleDetails])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementAssignedRoleDetail_Get';
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
Invoke function getPlatformSupportedProperties
.Description
Invoke function getPlatformSupportedProperties

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAssignmentFilterSupportedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementassignmentfilterplatformsupportedproperty
#>
function Get-MgDeviceManagementAssignmentFilterPlatformSupportedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAssignmentFilterSupportedProperty])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: platform={platform}
    ${Platform},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementAssignmentFilterPlatformSupportedProperty_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementAssignmentFilterPlatformSupportedProperty_GetViaIdentity';
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
Invoke function getState
.Description
Invoke function getState

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementassignmentfilterstate
#>
function Get-MgDeviceManagementAssignmentFilterState {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementAssignmentFilterState_Get';
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
Invoke function getSupportedProperties
.Description
Invoke function getSupportedProperties

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAssignmentFilterSupportedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementassignmentfiltersupportedproperty
#>
function Get-MgDeviceManagementAssignmentFilterSupportedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAssignmentFilterSupportedProperty])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceAndAppManagementAssignmentFilter
    ${DeviceAndAppManagementAssignmentFilterId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementAssignmentFilterSupportedProperty_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementAssignmentFilterSupportedProperty_GetViaIdentity';
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
Invoke function getAuditActivityTypes
.Description
Invoke function getAuditActivityTypes

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementauditeventauditactivitytype
#>
function Get-MgDeviceManagementAuditEventAuditActivityType {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: category={category}
    ${Category},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementAuditEventAuditActivityType_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementAuditEventAuditActivityType_GetViaIdentity';
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
Invoke function getAuditCategories
.Description
Invoke function getAuditCategories

.Outputs
System.String
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementauditeventauditcategory
#>
function Get-MgDeviceManagementAuditEventAuditCategory {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementAuditEventAuditCategory_Get';
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
Invoke function getCloudPcRemoteActionResults
.Description
Invoke function getCloudPcRemoteActionResults

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementcomanageddevicecloudpcremoteactionresult
#>
function Get-MgDeviceManagementComanagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementComanagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementComanagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
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
Invoke function getFileVaultKey
.Description
Invoke function getFileVaultKey

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementcomanageddevicefilevaultkey
#>
function Get-MgDeviceManagementComanagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementComanagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementComanagedDeviceFileVaultKey_GetViaIdentity';
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
Invoke function getNonCompliantSettings
.Description
Invoke function getNonCompliantSettings

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementcomanageddevicenoncompliantsetting
#>
function Get-MgDeviceManagementComanagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementComanagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementComanagedDeviceNonCompliantSetting_GetViaIdentity';
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
Invoke function getComanagedDevicesSummary
.Description
Invoke function getComanagedDevicesSummary

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComanagedDevicesSummary
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementcomanageddevicesummary
#>
function Get-MgDeviceManagementComanagedDeviceSummary {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComanagedDevicesSummary])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementComanagedDeviceSummary_Get';
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
Invoke function getComanagementEligibleDevicesSummary
.Description
Invoke function getComanagementEligibleDevicesSummary

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComanagementEligibleDevicesSummary
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementcomanagementeligibledevicesummary
#>
function Get-MgDeviceManagementComanagementEligibleDeviceSummary {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComanagementEligibleDevicesSummary])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementComanagementEligibleDeviceSummary_Get';
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
Invoke function getManagementConditionsForPlatform
.Description
Invoke function getManagementConditionsForPlatform

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagementCondition
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementconditionforplatform
#>
function Get-MgDeviceManagementConditionForPlatform {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagementCondition])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: platform={platform}
    ${Platform},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConditionForPlatform_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConditionForPlatform_GetViaIdentity';
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
Invoke function getManagementConditionsForPlatform
.Description
Invoke function getManagementConditionsForPlatform

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagementCondition
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementconditionstatementmanagementconditionforplatform
#>
function Get-MgDeviceManagementConditionStatementManagementConditionForPlatform {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagementCondition])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managementConditionStatement
    ${ManagementConditionStatementId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: platform={platform}
    ${Platform},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConditionStatementManagementConditionForPlatform_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConditionStatementManagementConditionForPlatform_GetViaIdentity';
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
Invoke function getManagementConditionStatementExpressionString
.Description
Invoke function getManagementConditionStatementExpressionString

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementconditionstatementmanagementconditionstatementexpressionstring
#>
function Get-MgDeviceManagementConditionStatementManagementConditionStatementExpressionString {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managementConditionStatement
    ${ManagementConditionStatementId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConditionStatementManagementConditionStatementExpressionString_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConditionStatementManagementConditionStatementExpressionString_GetViaIdentity';
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
Invoke function getManagementConditionStatementsForPlatform
.Description
Invoke function getManagementConditionStatementsForPlatform

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagementConditionStatement
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementconditionstatementmanagementconditionstatementforplatform
#>
function Get-MgDeviceManagementConditionStatementManagementConditionStatementForPlatform {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagementConditionStatement])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managementCondition
    ${ManagementConditionId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: platform={platform}
    ${Platform},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConditionStatementManagementConditionStatementForPlatform_Get';
            Get1 = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConditionStatementManagementConditionStatementForPlatform_Get1';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConditionStatementManagementConditionStatementForPlatform_GetViaIdentity';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConditionStatementManagementConditionStatementForPlatform_GetViaIdentity1';
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
Invoke function getPolicySummary
.Description
Invoke function getPolicySummary

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphConfigManagerPolicySummary
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementconfigmanagercollectionpolicysummary
#>
function Get-MgDeviceManagementConfigManagerCollectionPolicySummary {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphConfigManagerPolicySummary])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: policyId={policyId}
    ${PolicyId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConfigManagerCollectionPolicySummary_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementConfigManagerCollectionPolicySummary_GetViaIdentity';
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
Get a public key to use to encrypt the Apple device enrollment program token
.Description
Get a public key to use to encrypt the Apple device enrollment program token

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeponboardingsettingencryptionpublickey
#>
function Get-MgDeviceManagementDepOnboardingSettingEncryptionPublicKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of depOnboardingSetting
    ${DepOnboardingSettingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDepOnboardingSettingEncryptionPublicKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDepOnboardingSettingEncryptionPublicKey_GetViaIdentity';
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
Invoke function getExpiringVppTokenCount
.Description
Invoke function getExpiringVppTokenCount

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.Int32
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeponboardingsettingexpiringvpptokencount
#>
function Get-MgDeviceManagementDepOnboardingSettingExpiringVppTokenCount {
[OutputType([System.Int32])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: expiringBeforeDateTime={expiringBeforeDateTime}
    ${ExpiringBeforeDateTime},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDepOnboardingSettingExpiringVppTokenCount_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDepOnboardingSettingExpiringVppTokenCount_GetViaIdentity';
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
Invoke function getCloudPcRemoteActionResults
.Description
Invoke function getCloudPcRemoteActionResults

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicecompliancescriptdevicerunstatemanageddevicecloudpcremoteactionresult
#>
function Get-MgDeviceManagementDeviceComplianceScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceComplianceScriptDeviceState
    ${DeviceComplianceScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceComplianceScript
    ${DeviceComplianceScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceComplianceScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceComplianceScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
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
Invoke function getFileVaultKey
.Description
Invoke function getFileVaultKey

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicecompliancescriptdevicerunstatemanageddevicefilevaultkey
#>
function Get-MgDeviceManagementDeviceComplianceScriptDeviceRunStateManagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceComplianceScriptDeviceState
    ${DeviceComplianceScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceComplianceScript
    ${DeviceComplianceScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceComplianceScriptDeviceRunStateManagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceComplianceScriptDeviceRunStateManagedDeviceFileVaultKey_GetViaIdentity';
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
Invoke function getNonCompliantSettings
.Description
Invoke function getNonCompliantSettings

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicecompliancescriptdevicerunstatemanageddevicenoncompliantsetting
#>
function Get-MgDeviceManagementDeviceComplianceScriptDeviceRunStateManagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceComplianceScriptDeviceState
    ${DeviceComplianceScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceComplianceScript
    ${DeviceComplianceScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceComplianceScriptDeviceRunStateManagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceComplianceScriptDeviceRunStateManagedDeviceNonCompliantSetting_GetViaIdentity';
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
Invoke function getOmaSettingPlainTextValue
.Description
Invoke function getOmaSettingPlainTextValue

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeviceconfigurationgroupassignmentdeviceconfigurationomasettingplaintextvalue
#>
function Get-MgDeviceManagementDeviceConfigurationGroupAssignmentDeviceConfigurationOmaSettingPlainTextValue {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceConfigurationGroupAssignment
    ${DeviceConfigurationGroupAssignmentId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceConfiguration
    ${DeviceConfigurationId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: secretReferenceValueId={secretReferenceValueId}
    ${SecretReferenceValueId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceConfigurationGroupAssignmentDeviceConfigurationOmaSettingPlainTextValue_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceConfigurationGroupAssignmentDeviceConfigurationOmaSettingPlainTextValue_GetViaIdentity';
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
Invoke function getIosAvailableUpdateVersions
.Description
Invoke function getIosAvailableUpdateVersions

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIosAvailableUpdateVersion
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeviceconfigurationioavailableupdateversion
#>
function Get-MgDeviceManagementDeviceConfigurationIoAvailableUpdateVersion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIosAvailableUpdateVersion])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceConfigurationIoAvailableUpdateVersion_Get';
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
Invoke function getOmaSettingPlainTextValue
.Description
Invoke function getOmaSettingPlainTextValue

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeviceconfigurationomasettingplaintextvalue
#>
function Get-MgDeviceManagementDeviceConfigurationOmaSettingPlainTextValue {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceConfiguration
    ${DeviceConfigurationId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: secretReferenceValueId={secretReferenceValueId}
    ${SecretReferenceValueId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceConfigurationOmaSettingPlainTextValue_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceConfigurationOmaSettingPlainTextValue_GetViaIdentity';
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
Invoke function getCloudPcRemoteActionResults
.Description
Invoke function getCloudPcRemoteActionResults

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicecustomattributeshellscriptdevicerunstatemanageddevicecloudpcremoteactionresult
#>
function Get-MgDeviceManagementDeviceCustomAttributeShellScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceCustomAttributeShellScript
    ${DeviceCustomAttributeShellScriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
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
Invoke function getFileVaultKey
.Description
Invoke function getFileVaultKey

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicecustomattributeshellscriptdevicerunstatemanageddevicefilevaultkey
#>
function Get-MgDeviceManagementDeviceCustomAttributeShellScriptDeviceRunStateManagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceCustomAttributeShellScript
    ${DeviceCustomAttributeShellScriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptDeviceRunStateManagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptDeviceRunStateManagedDeviceFileVaultKey_GetViaIdentity';
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
Invoke function getNonCompliantSettings
.Description
Invoke function getNonCompliantSettings

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicecustomattributeshellscriptdevicerunstatemanageddevicenoncompliantsetting
#>
function Get-MgDeviceManagementDeviceCustomAttributeShellScriptDeviceRunStateManagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceCustomAttributeShellScript
    ${DeviceCustomAttributeShellScriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptDeviceRunStateManagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptDeviceRunStateManagedDeviceNonCompliantSetting_GetViaIdentity';
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
Invoke function getCloudPcRemoteActionResults
.Description
Invoke function getCloudPcRemoteActionResults

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicecustomattributeshellscriptuserrunstatedevicerunstatemanageddevicecloudpcremoteactionresult
#>
function Get-MgDeviceManagementDeviceCustomAttributeShellScriptUserRunStateDeviceRunStateManagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceCustomAttributeShellScript
    ${DeviceCustomAttributeShellScriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptUserState
    ${DeviceManagementScriptUserStateId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptUserRunStateDeviceRunStateManagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptUserRunStateDeviceRunStateManagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
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
Invoke function getFileVaultKey
.Description
Invoke function getFileVaultKey

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicecustomattributeshellscriptuserrunstatedevicerunstatemanageddevicefilevaultkey
#>
function Get-MgDeviceManagementDeviceCustomAttributeShellScriptUserRunStateDeviceRunStateManagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceCustomAttributeShellScript
    ${DeviceCustomAttributeShellScriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptUserState
    ${DeviceManagementScriptUserStateId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptUserRunStateDeviceRunStateManagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptUserRunStateDeviceRunStateManagedDeviceFileVaultKey_GetViaIdentity';
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
Invoke function getNonCompliantSettings
.Description
Invoke function getNonCompliantSettings

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicecustomattributeshellscriptuserrunstatedevicerunstatemanageddevicenoncompliantsetting
#>
function Get-MgDeviceManagementDeviceCustomAttributeShellScriptUserRunStateDeviceRunStateManagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceCustomAttributeShellScript
    ${DeviceCustomAttributeShellScriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptUserState
    ${DeviceManagementScriptUserStateId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptUserRunStateDeviceRunStateManagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceCustomAttributeShellScriptUserRunStateDeviceRunStateManagedDeviceNonCompliantSetting_GetViaIdentity';
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
Invoke function getCloudPcRemoteActionResults
.Description
Invoke function getCloudPcRemoteActionResults

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicehealthscriptdevicerunstatemanageddevicecloudpcremoteactionresult
#>
function Get-MgDeviceManagementDeviceHealthScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceHealthScriptDeviceState
    ${DeviceHealthScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceHealthScript
    ${DeviceHealthScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceHealthScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceHealthScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
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
Invoke function getFileVaultKey
.Description
Invoke function getFileVaultKey

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicehealthscriptdevicerunstatemanageddevicefilevaultkey
#>
function Get-MgDeviceManagementDeviceHealthScriptDeviceRunStateManagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceHealthScriptDeviceState
    ${DeviceHealthScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceHealthScript
    ${DeviceHealthScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceHealthScriptDeviceRunStateManagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceHealthScriptDeviceRunStateManagedDeviceFileVaultKey_GetViaIdentity';
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
Invoke function getNonCompliantSettings
.Description
Invoke function getNonCompliantSettings

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicehealthscriptdevicerunstatemanageddevicenoncompliantsetting
#>
function Get-MgDeviceManagementDeviceHealthScriptDeviceRunStateManagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceHealthScriptDeviceState
    ${DeviceHealthScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceHealthScript
    ${DeviceHealthScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceHealthScriptDeviceRunStateManagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceHealthScriptDeviceRunStateManagedDeviceNonCompliantSetting_GetViaIdentity';
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
Function to get the number of remediations by a device health scripts
.Description
Function to get the number of remediations by a device health scripts

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceHealthScriptRemediationHistory
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicehealthscriptremediationhistory
#>
function Get-MgDeviceManagementDeviceHealthScriptRemediationHistory {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceHealthScriptRemediationHistory])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceHealthScript
    ${DeviceHealthScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceHealthScriptRemediationHistory_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceHealthScriptRemediationHistory_GetViaIdentity';
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
Invoke function getRemediationSummary
.Description
Invoke function getRemediationSummary

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceHealthScriptRemediationSummary
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdevicehealthscriptremediationsummary
#>
function Get-MgDeviceManagementDeviceHealthScriptRemediationSummary {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceHealthScriptRemediationSummary])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceHealthScriptRemediationSummary_Get';
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
Invoke function getCloudPcRemoteActionResults
.Description
Invoke function getCloudPcRemoteActionResults

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeviceshellscriptdevicerunstatemanageddevicecloudpcremoteactionresult
#>
function Get-MgDeviceManagementDeviceShellScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceShellScript
    ${DeviceShellScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
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
Invoke function getFileVaultKey
.Description
Invoke function getFileVaultKey

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeviceshellscriptdevicerunstatemanageddevicefilevaultkey
#>
function Get-MgDeviceManagementDeviceShellScriptDeviceRunStateManagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceShellScript
    ${DeviceShellScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptDeviceRunStateManagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptDeviceRunStateManagedDeviceFileVaultKey_GetViaIdentity';
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
Invoke function getNonCompliantSettings
.Description
Invoke function getNonCompliantSettings

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeviceshellscriptdevicerunstatemanageddevicenoncompliantsetting
#>
function Get-MgDeviceManagementDeviceShellScriptDeviceRunStateManagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceShellScript
    ${DeviceShellScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptDeviceRunStateManagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptDeviceRunStateManagedDeviceNonCompliantSetting_GetViaIdentity';
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
Invoke function getCloudPcRemoteActionResults
.Description
Invoke function getCloudPcRemoteActionResults

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeviceshellscriptuserrunstatedevicerunstatemanageddevicecloudpcremoteactionresult
#>
function Get-MgDeviceManagementDeviceShellScriptUserRunStateDeviceRunStateManagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptUserState
    ${DeviceManagementScriptUserStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceShellScript
    ${DeviceShellScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptUserRunStateDeviceRunStateManagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptUserRunStateDeviceRunStateManagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
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
Invoke function getFileVaultKey
.Description
Invoke function getFileVaultKey

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeviceshellscriptuserrunstatedevicerunstatemanageddevicefilevaultkey
#>
function Get-MgDeviceManagementDeviceShellScriptUserRunStateDeviceRunStateManagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptUserState
    ${DeviceManagementScriptUserStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceShellScript
    ${DeviceShellScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptUserRunStateDeviceRunStateManagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptUserRunStateDeviceRunStateManagedDeviceFileVaultKey_GetViaIdentity';
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
Invoke function getNonCompliantSettings
.Description
Invoke function getNonCompliantSettings

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementdeviceshellscriptuserrunstatedevicerunstatemanageddevicenoncompliantsetting
#>
function Get-MgDeviceManagementDeviceShellScriptUserRunStateDeviceRunStateManagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptUserState
    ${DeviceManagementScriptUserStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceShellScript
    ${DeviceShellScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptUserRunStateDeviceRunStateManagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementDeviceShellScriptUserRunStateDeviceRunStateManagedDeviceNonCompliantSetting_GetViaIdentity';
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
Invoke function getEffectivePermissions
.Description
Invoke function getEffectivePermissions

.Outputs
System.String
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementeffectivepermission1f5f
#>
function Get-MgDeviceManagementEffectivePermission1F5F {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementEffectivePermission1F5F_Get';
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
Invoke function getEffectivePermissions
.Description
Invoke function getEffectivePermissions

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRolePermission1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementeffectivepermission49b0
#>
function Get-MgDeviceManagementEffectivePermission49B0 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRolePermission1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: scope={scope}
    ${Scope},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementEffectivePermission49B0_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementEffectivePermission49B0_GetViaIdentity';
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
Invoke function getCloudPcRemoteActionResults
.Description
Invoke function getCloudPcRemoteActionResults

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementmanageddevicecloudpcremoteactionresult
#>
function Get-MgDeviceManagementManagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementManagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementManagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
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
Invoke function getFileVaultKey
.Description
Invoke function getFileVaultKey

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementmanageddevicefilevaultkey
#>
function Get-MgDeviceManagementManagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementManagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementManagedDeviceFileVaultKey_GetViaIdentity';
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
Invoke function getNonCompliantSettings
.Description
Invoke function getNonCompliantSettings

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementmanageddevicenoncompliantsetting
#>
function Get-MgDeviceManagementManagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementManagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementManagedDeviceNonCompliantSetting_GetViaIdentity';
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
Invoke function getScopesForUser
.Description
Invoke function getScopesForUser

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementresourceoperationscope
#>
function Get-MgDeviceManagementResourceOperationScope {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of resourceOperation
    ${ResourceOperationId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: userid={userid}
    ${Userid},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementResourceOperationScope_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementResourceOperationScope_GetViaIdentity';
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
Invoke function getRoleScopeTagsByIds
.Description
Invoke function getRoleScopeTagsByIds

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleScopeTag
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementrolescopetagbyid
#>
function Get-MgDeviceManagementRoleScopeTagById {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleScopeTag])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Usage: ids={ids}
    ${Ids},

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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementRoleScopeTagById_Get';
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
Invoke function getRoleScopeTagsByResource
.Description
Invoke function getRoleScopeTagsByResource

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleScopeTag
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementrolescopetagbyresource
#>
function Get-MgDeviceManagementRoleScopeTagByResource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleScopeTag])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: resource={resource}
    ${Resource},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get1 = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementRoleScopeTagByResource_Get1';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementRoleScopeTagByResource_GetViaIdentity';
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
Invoke function getCloudPcRemoteActionResults
.Description
Invoke function getCloudPcRemoteActionResults

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementscriptdevicerunstatemanageddevicecloudpcremoteactionresult
#>
function Get-MgDeviceManagementScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScript
    ${DeviceManagementScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptDeviceRunStateManagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
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
Invoke function getFileVaultKey
.Description
Invoke function getFileVaultKey

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementscriptdevicerunstatemanageddevicefilevaultkey
#>
function Get-MgDeviceManagementScriptDeviceRunStateManagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScript
    ${DeviceManagementScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptDeviceRunStateManagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptDeviceRunStateManagedDeviceFileVaultKey_GetViaIdentity';
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
Invoke function getNonCompliantSettings
.Description
Invoke function getNonCompliantSettings

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementscriptdevicerunstatemanageddevicenoncompliantsetting
#>
function Get-MgDeviceManagementScriptDeviceRunStateManagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScript
    ${DeviceManagementScriptId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptDeviceRunStateManagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptDeviceRunStateManagedDeviceNonCompliantSetting_GetViaIdentity';
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
Invoke function getCloudPcRemoteActionResults
.Description
Invoke function getCloudPcRemoteActionResults

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementscriptuserrunstatedevicerunstatemanageddevicecloudpcremoteactionresult
#>
function Get-MgDeviceManagementScriptUserRunStateDeviceRunStateManagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScript
    ${DeviceManagementScriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptUserState
    ${DeviceManagementScriptUserStateId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptUserRunStateDeviceRunStateManagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptUserRunStateDeviceRunStateManagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
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
Invoke function getFileVaultKey
.Description
Invoke function getFileVaultKey

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementscriptuserrunstatedevicerunstatemanageddevicefilevaultkey
#>
function Get-MgDeviceManagementScriptUserRunStateDeviceRunStateManagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScript
    ${DeviceManagementScriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptUserState
    ${DeviceManagementScriptUserStateId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptUserRunStateDeviceRunStateManagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptUserRunStateDeviceRunStateManagedDeviceFileVaultKey_GetViaIdentity';
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
Invoke function getNonCompliantSettings
.Description
Invoke function getNonCompliantSettings

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementscriptuserrunstatedevicerunstatemanageddevicenoncompliantsetting
#>
function Get-MgDeviceManagementScriptUserRunStateDeviceRunStateManagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptDeviceState
    ${DeviceManagementScriptDeviceStateId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScript
    ${DeviceManagementScriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementScriptUserState
    ${DeviceManagementScriptUserStateId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptUserRunStateDeviceRunStateManagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementScriptUserRunStateDeviceRunStateManagedDeviceNonCompliantSetting_GetViaIdentity';
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
Invoke function getSuggestedEnrollmentLimit
.Description
Invoke function getSuggestedEnrollmentLimit

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.Int32
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementsuggestedenrollmentlimit
#>
function Get-MgDeviceManagementSuggestedEnrollmentLimit {
[OutputType([System.Int32])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: enrollmentType={enrollmentType}
    ${EnrollmentType},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementSuggestedEnrollmentLimit_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementSuggestedEnrollmentLimit_GetViaIdentity';
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
Invoke function getAuditActivityTypes
.Description
Invoke function getAuditActivityTypes

.Outputs
System.String
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementvirtualendpointauditeventauditactivitytype
#>
function Get-MgDeviceManagementVirtualEndpointAuditEventAuditActivityType {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementVirtualEndpointAuditEventAuditActivityType_Get';
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
Invoke function getSourceImages
.Description
Invoke function getSourceImages

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcSourceDeviceImage
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementvirtualendpointdeviceimagesourceimage
#>
function Get-MgDeviceManagementVirtualEndpointDeviceImageSourceImage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcSourceDeviceImage])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementVirtualEndpointDeviceImageSourceImage_Get';
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
Invoke function getEffectivePermissions
.Description
Invoke function getEffectivePermissions

.Outputs
System.String
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/get-mgdevicemanagementvirtualendpointeffectivepermission
#>
function Get-MgDeviceManagementVirtualEndpointEffectivePermission {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Get = 'Microsoft.Graph.DeviceManagement.Functions.private\Get-MgDeviceManagementVirtualEndpointEffectivePermission_Get';
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
Invoke function hasCustomRoleScopeTag
.Description
Invoke function hasCustomRoleScopeTag

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/invoke-mgcustomdevicemanagementroleassignmentrolescopetag
#>
function Invoke-MgCustomDeviceManagementRoleAssignmentRoleScopeTag {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Custom', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Custom', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceAndAppManagementRoleAssignment
    ${DeviceAndAppManagementRoleAssignmentId},

    [Parameter(ParameterSetName='CustomViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Custom = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgCustomDeviceManagementRoleAssignmentRoleScopeTag_Custom';
            CustomViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgCustomDeviceManagementRoleAssignmentRoleScopeTag_CustomViaIdentity';
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
Invoke function hasCustomRoleScopeTag
.Description
Invoke function hasCustomRoleScopeTag

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/invoke-mgcustomdevicemanagementrolescopetag
#>
function Invoke-MgCustomDeviceManagementRoleScopeTag {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Custom', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Custom = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgCustomDeviceManagementRoleScopeTag_Custom';
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
Download Apple push notification certificate signing request
.Description
Download Apple push notification certificate signing request

.Outputs
System.String
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/invoke-mgdownloaddevicemanagementapplepushnotificationcertificateapplepushnotificationcertificatesigningrequest
#>
function Invoke-MgDownloadDeviceManagementApplePushNotificationCertificateApplePushNotificationCertificateSigningRequest {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Download', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Download = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgDownloadDeviceManagementApplePushNotificationCertificateApplePushNotificationCertificateSigningRequest_Download';
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
Invoke function userExperienceAnalyticsSummarizeWorkFromAnywhereDevices
.Description
Invoke function userExperienceAnalyticsSummarizeWorkFromAnywhereDevices

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummary
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/invoke-mgexperiencedevicemanagement
#>
function Invoke-MgExperienceDeviceManagement {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummary])]
[CmdletBinding(DefaultParameterSetName='Experience', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Experience = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgExperienceDeviceManagement_Experience';
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
Invoke function areGlobalScriptsAvailable
.Description
Invoke function areGlobalScriptsAvailable

.Outputs
System.String
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/invoke-mgisdevicemanagementdevicehealthscriptglobalscriptavailable
#>
function Invoke-MgIsDeviceManagementDeviceHealthScriptGlobalScriptAvailable {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Are', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Are = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgIsDeviceManagementDeviceHealthScriptGlobalScriptAvailable_Are';
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
Invoke function scopedForResource
.Description
Invoke function scopedForResource

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/invoke-mgscopeddevicemanagement
#>
function Invoke-MgScopedDeviceManagement {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Scoped', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Scoped', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: resource={resource}
    ${Resource},

    [Parameter(ParameterSetName='ScopedViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Scoped = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgScopedDeviceManagement_Scoped';
            ScopedViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgScopedDeviceManagement_ScopedViaIdentity';
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
Invoke function summarizeDevicePerformanceDevices
.Description
Invoke function summarizeDevicePerformanceDevices

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserExperienceAnalyticsDevicePerformance
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/invoke-mgsummarizedevicemanagementuserexperienceanalyticdeviceperformancedevice
#>
function Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticDevicePerformanceDevice {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserExperienceAnalyticsDevicePerformance])]
[CmdletBinding(DefaultParameterSetName='Summarize', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Summarize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: summarizeBy={summarizeBy}
    ${SummarizeBy},

    [Parameter(ParameterSetName='SummarizeViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Summarize = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticDevicePerformanceDevice_Summarize';
            SummarizeViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticDevicePerformanceDevice_SummarizeViaIdentity';
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
Invoke function summarizeDeviceRegressionPerformance
.Description
Invoke function summarizeDeviceRegressionPerformance

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserExperienceAnalyticsRegressionSummary
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/invoke-mgsummarizedevicemanagementuserexperienceanalyticregressionsummarydeviceregressionperformance
#>
function Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticRegressionSummaryDeviceRegressionPerformance {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserExperienceAnalyticsRegressionSummary])]
[CmdletBinding(DefaultParameterSetName='Summarize', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Summarize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: summarizeBy={summarizeBy}
    ${SummarizeBy},

    [Parameter(ParameterSetName='SummarizeViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Summarize = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticRegressionSummaryDeviceRegressionPerformance_Summarize';
            SummarizeViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticRegressionSummaryDeviceRegressionPerformance_SummarizeViaIdentity';
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
Invoke function summarizeDeviceRemoteConnection
.Description
Invoke function summarizeDeviceRemoteConnection

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserExperienceAnalyticsRemoteConnection
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/invoke-mgsummarizedevicemanagementuserexperienceanalyticremoteconnectiondeviceremoteconnection
#>
function Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticRemoteConnectionDeviceRemoteConnection {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserExperienceAnalyticsRemoteConnection])]
[CmdletBinding(DefaultParameterSetName='Summarize', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Summarize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: summarizeBy={summarizeBy}
    ${SummarizeBy},

    [Parameter(ParameterSetName='SummarizeViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Summarize = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticRemoteConnectionDeviceRemoteConnection_Summarize';
            SummarizeViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticRemoteConnectionDeviceRemoteConnection_SummarizeViaIdentity';
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
Invoke function summarizeDeviceResourcePerformance
.Description
Invoke function summarizeDeviceResourcePerformance

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserExperienceAnalyticsResourcePerformance
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementFunctionsIdentity>: Identity Parameter
  [Category <String>]: Usage: category={category}
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceAndAppManagementAssignmentFilterId <String>]: key: id of deviceAndAppManagementAssignmentFilter
  [DeviceAndAppManagementRoleAssignmentId <String>]: key: id of deviceAndAppManagementRoleAssignment
  [DeviceComplianceScriptDeviceStateId <String>]: key: id of deviceComplianceScriptDeviceState
  [DeviceComplianceScriptId <String>]: key: id of deviceComplianceScript
  [DeviceConfigurationGroupAssignmentId <String>]: key: id of deviceConfigurationGroupAssignment
  [DeviceConfigurationId <String>]: key: id of deviceConfiguration
  [DeviceCustomAttributeShellScriptId <String>]: key: id of deviceCustomAttributeShellScript
  [DeviceHealthScriptDeviceStateId <String>]: key: id of deviceHealthScriptDeviceState
  [DeviceHealthScriptId <String>]: key: id of deviceHealthScript
  [DeviceManagementIntentId <String>]: key: id of deviceManagementIntent
  [DeviceManagementScriptDeviceStateId <String>]: key: id of deviceManagementScriptDeviceState
  [DeviceManagementScriptId <String>]: key: id of deviceManagementScript
  [DeviceManagementScriptUserStateId <String>]: key: id of deviceManagementScriptUserState
  [DeviceManagementTemplateId <String>]: key: id of deviceManagementTemplate
  [DeviceManagementTemplateId1 <String>]: key: id of deviceManagementTemplate
  [DeviceShellScriptId <String>]: key: id of deviceShellScript
  [DomainName <String>]: Usage: domainName={domainName}
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [EnrollmentType <String>]: Usage: enrollmentType={enrollmentType}
  [ExpiringBeforeDateTime <String>]: Usage: expiringBeforeDateTime={expiringBeforeDateTime}
  [ManagedDeviceId <String>]: key: id of managedDevice
  [ManagementConditionId <String>]: key: id of managementCondition
  [ManagementConditionStatementId <String>]: key: id of managementConditionStatement
  [Platform <String>]: Usage: platform={platform}
  [PolicyId <String>]: Usage: policyId={policyId}
  [Resource <String>]: Usage: resource={resource}
  [ResourceOperationId <String>]: key: id of resourceOperation
  [Scope <String>]: Usage: scope={scope}
  [SecretReferenceValueId <String>]: Usage: secretReferenceValueId={secretReferenceValueId}
  [SummarizeBy <String>]: Usage: summarizeBy={summarizeBy}
  [TemplateId <String>]: Usage: templateId={templateId}
  [Userid <String>]: Usage: userid={userid}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.functions/invoke-mgsummarizedevicemanagementuserexperienceanalyticresourceperformancedeviceresourceperformance
#>
function Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticResourcePerformanceDeviceResourcePerformance {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserExperienceAnalyticsResourcePerformance])]
[CmdletBinding(DefaultParameterSetName='Summarize', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Summarize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: summarizeBy={summarizeBy}
    ${SummarizeBy},

    [Parameter(ParameterSetName='SummarizeViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementFunctionsIdentity]
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
            Summarize = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticResourcePerformanceDeviceResourcePerformance_Summarize';
            SummarizeViaIdentity = 'Microsoft.Graph.DeviceManagement.Functions.private\Invoke-MgSummarizeDeviceManagementUserExperienceAnalyticResourcePerformanceDeviceResourcePerformance_SummarizeViaIdentity';
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
# MIIjkQYJKoZIhvcNAQcCoIIjgjCCI34CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDWr/gC6XKkh4qu
# WHQPgE7Kx4EFRHBlgcpW+6A/WvsAmqCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIVZjCCFWICAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAd9r8C6Sp0q00AAAAAAB3zAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg9pp7TaPn
# hV7e2vIcey8tyep/99HnzOSI4gGYgi2shyQwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQCDV0AhqVZtyo3a4db5ATD4tdheGylDKDIxXaIJLZ8M
# BAWXNH5e6ruZINz3FL3hagi4yLDcj9tdiHSwIfT4yRO2Rw2jHiQd13CZ84o+x7r0
# lWIe4EwGZguECzy48Bg+Cn1yGgDwsoLXHkQNZ8D8eE7eQyopcvW9AN+kdWa3kOqh
# l5coMAPNU5LzhvFuWwLXCLJvGlMg4fXm/SsqoWbzsr0AVE/TtW9o1WssEW9fTxAT
# YSRh9fN3XlCpRU5alS5/7PJVSHo4FNOHvsU11Rr7uybms/Baz0wOSmlL0Aimdk+B
# DrySLYQg0JV1pjVM1JaAndki0qiDpRjGKqmVien35pdboYIS8DCCEuwGCisGAQQB
# gjcDAwExghLcMIIS2AYJKoZIhvcNAQcCoIISyTCCEsUCAQMxDzANBglghkgBZQME
# AgEFADCCAVQGCyqGSIb3DQEJEAEEoIIBQwSCAT8wggE7AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIKns7JeHMFmdkk/GaBv6uZCth8EBQs7C4WNn7jCS
# Rj/qAgZhb3TWkxMYEjIwMjExMDI3MDcxMTI0LjYzWjAEgAIB9KCB1KSB0TCBzjEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEpMCcGA1UECxMgTWlj
# cm9zb2Z0IE9wZXJhdGlvbnMgUHVlcnRvIFJpY28xJjAkBgNVBAsTHVRoYWxlcyBU
# U1MgRVNOOjQ2MkYtRTMxOS0zRjIwMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1T
# dGFtcCBTZXJ2aWNloIIORDCCBPUwggPdoAMCAQICEzMAAAFYcFoi976W5gMAAAAA
# AVgwDQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAw
# HhcNMjEwMTE0MTkwMjE0WhcNMjIwNDExMTkwMjE0WjCBzjELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEpMCcGA1UECxMgTWljcm9zb2Z0IE9wZXJh
# dGlvbnMgUHVlcnRvIFJpY28xJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjQ2MkYt
# RTMxOS0zRjIwMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNl
# MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoR8Ll2D1q7DQoAUbC/Xv
# IwUbxJ+qBRQULwPPBryaumzR7KFFDY2/0rv+zP99UTWj/V9mnirhIaK1yyM8a06e
# NbHjlUgVMg1Cl2g6Gaw92cXLeAFekwa1N9eouedQTj5WYoLa8CE5nTpTq+3kJzRw
# mioQm3M5ZHARrPwGhfacJfVEFeQfc+IC7u1Ym/dXzOFFI8sWZ6In4IjBrLTgBSCa
# vBcRAe8keBvo+IsLGATZUAEIM1PkJXKJ41qlxmIrHXpBsOV7so7CSMwQgqRzFH7f
# Z0My3MK2khQOCsrGaPH4ab3iMeJ6iE4dS6GXe7eGUBh+/ZID/zpPVQ0CIFCDda73
# GwIDAQABo4IBGzCCARcwHQYDVR0OBBYEFEtw2Rt9nRwYH+7nfqB7kyfTovlYMB8G
# A1UdIwQYMBaAFNVjOlyKMZDzQ3t8RhvFM2hahW1VMFYGA1UdHwRPME0wS6BJoEeG
# RWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Rp
# bVN0YVBDQV8yMDEwLTA3LTAxLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUH
# MAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljVGltU3Rh
# UENBXzIwMTAtMDctMDEuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYB
# BQUHAwgwDQYJKoZIhvcNAQELBQADggEBADnfKANai9CuHx+6WI1dbQJQFPN8DhKX
# iH4g8SHmU12uEMXLpPgwD2O6nXPOUWSlitRzSxN9AIA6cCOa6c+CeZpLltJ/ZUfw
# yDfhTaqA8sicwCQZoGz8HNpsnrlgp7U/kgpk3taPZtF8IrTcRLyRLuDphAfruLEw
# JAIsOt5YMoliw2zRyE2kk4DPIl4Z/JFR75NRRsXCOwL/XwqZg4NWClFJhnHRbuOs
# aqUlUR6G7ClIiwY5gIEyckM10qc/7XcKDrxxW0I1fqQl29QUfRmK48yUFgPsasI+
# oBGVKf6/F98yK+7YMwkkuR7LDFJ8PnawNX40F/kieK4oVwT3LSb2baMwggZxMIIE
# WaADAgECAgphCYEqAAAAAAACMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9v
# dCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0xMDA3MDEyMTM2NTVaFw0y
# NTA3MDEyMTQ2NTVaMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMIIBIjAN
# BgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqR0NvHcRijog7PwTl/X6f2mUa3RU
# ENWlCgCChfvtfGhLLF/Fw+Vhwna3PmYrW/AVUycEMR9BGxqVHc4JE458YTBZsTBE
# D/FgiIRUQwzXTbg4CLNC3ZOs1nMwVyaCo0UN0Or1R4HNvyRgMlhgRvJYR4YyhB50
# YWeRX4FUsc+TTJLBxKZd0WETbijGGvmGgLvfYfxGwScdJGcSchohiq9LZIlQYrFd
# /XcfPfBXday9ikJNQFHRD5wGPmd/9WbAA5ZEfu/QS/1u5ZrKsajyeioKMfDaTgaR
# togINeh4HLDpmc085y9Euqf03GS9pAHBIAmTeM38vMDJRF1eFpwBBU8iTQIDAQAB
# o4IB5jCCAeIwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFNVjOlyKMZDzQ3t8
# RhvFM2hahW1VMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIB
# hjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fO
# mhjEMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9w
# a2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggr
# BgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNv
# bS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0MIGgBgNVHSAB
# Af8EgZUwgZIwgY8GCSsGAQQBgjcuAzCBgTA9BggrBgEFBQcCARYxaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL1BLSS9kb2NzL0NQUy9kZWZhdWx0Lmh0bTBABggrBgEF
# BQcCAjA0HjIgHQBMAGUAZwBhAGwAXwBQAG8AbABpAGMAeQBfAFMAdABhAHQAZQBt
# AGUAbgB0AC4gHTANBgkqhkiG9w0BAQsFAAOCAgEAB+aIUQ3ixuCYP4FxAz2do6Eh
# b7Prpsz1Mb7PBeKp/vpXbRkws8LFZslq3/Xn8Hi9x6ieJeP5vO1rVFcIK1GCRBL7
# uVOMzPRgEop2zEBAQZvcXBf/XPleFzWYJFZLdO9CEMivv3/Gf/I3fVo/HPKZeUqR
# UgCvOA8X9S95gWXZqbVr5MfO9sp6AG9LMEQkIjzP7QOllo9ZKby2/QThcJ8ySif9
# Va8v/rbljjO7Yl+a21dA6fHOmWaQjP9qYn/dxUoLkSbiOewZSnFjnXshbcOco6I8
# +n99lmqQeKZt0uGc+R38ONiU9MalCpaGpL2eGq4EQoO4tYCbIjggtSXlZOz39L9+
# Y1klD3ouOVd2onGqBooPiRa6YacRy5rYDkeagMXQzafQ732D8OE7cQnfXXSYIghh
# 2rBQHm+98eEA3+cxB6STOvdlR3jo+KhIq/fecn5ha293qYHLpwmsObvsxsvYgrRy
# zR30uIUBHoD7G4kqVDmyW9rIDVWZeodzOwjmmC3qjeAzLhIp9cAvVCch98isTtoo
# uLGp25ayp0Kiyc8ZQU3ghvkqmqMRZjDTu3QyS99je/WZii8bxyGvWbWu3EQ8l1Bx
# 16HSxVXjad5XwdHeMMD9zOZN+w2/XU/pnR4ZOC+8z1gFLu8NoFA12u8JJxzVs341
# Hgi62jbb01+P3nSISRKhggLSMIICOwIBATCB/KGB1KSB0TCBzjELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEpMCcGA1UECxMgTWljcm9zb2Z0IE9w
# ZXJhdGlvbnMgUHVlcnRvIFJpY28xJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjQ2
# MkYtRTMxOS0zRjIwMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2
# aWNloiMKAQEwBwYFKw4DAhoDFQCpyStzGufRCyGm6jOOn6X4NJ80v6CBgzCBgKR+
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0GCSqGSIb3DQEBBQUAAgUA
# 5SMtmzAiGA8yMDIxMTAyNzA1NDQ1OVoYDzIwMjExMDI4MDU0NDU5WjB3MD0GCisG
# AQQBhFkKBAExLzAtMAoCBQDlIy2bAgEAMAoCAQACAiYmAgH/MAcCAQACAhEEMAoC
# BQDlJH8bAgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisGAQQBhFkKAwKgCjAIAgEA
# AgMHoSChCjAIAgEAAgMBhqAwDQYJKoZIhvcNAQEFBQADgYEATuuXh4up+fOoKUPh
# Q0mVilDLFQFMSLUC444YpehH40C2R8zwapr/Zastr4gz5RySzTezVZGD0FpVAiI2
# CkObxI4iivv/sIOVGwNAveSqUP1k6LdKxZqC5uIaQX3GR2RATizg2G3PaurSlW29
# h5uL8MQi/JwYD3jATFi/oIwVcvMxggMNMIIDCQIBATCBkzB8MQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGlt
# ZS1TdGFtcCBQQ0EgMjAxMAITMwAAAVhwWiL3vpbmAwAAAAABWDANBglghkgBZQME
# AgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJ
# BDEiBCBZW3iKs6E9rCj4dGlLTNhmdHWz5eqIPjOhYp14jGFtxTCB+gYLKoZIhvcN
# AQkQAi8xgeowgecwgeQwgb0EIPJKM41shjWXbMpPhtriwIjhaQELqwh9H25JU1XH
# cNMHMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAFY
# cFoi976W5gMAAAAAAVgwIgQgu4uFA86Ab+0g7kIK+Wy1mkyitrSqy1rjAYRxX99B
# C6UwDQYJKoZIhvcNAQELBQAEggEAe9MBfpChOgmc52btsRNb8fQPWi9hLMSCngyM
# 0qvJTcxMrMSH+r4mlZ6JzwfRFrdFheH35G1koi428qgCPnisWSDcYQfTc6g+G5lv
# i2i7kUtEQGuIHSzGzaKsdsNEVN3iIhOtHhgK0vbeX330h0R2ZHtDbLFX447oUjQS
# QMXw8WEWZWh31K97kXkPyGSpBeQuYmRWjGj0R215E+rKVMj/v8WXi+Gi+5wspKt1
# 982GDEF4lzov/QwmoWu6EdzjMU2dAaIHjfn5AgKQzDr4UBZkB9k3ThC4KwJhGDbS
# Hd2GhmBA4hLC69HsRtzCelfm3omx/OvUWWfW5+b9WfesK5gekQ==
# SIG # End signature block
