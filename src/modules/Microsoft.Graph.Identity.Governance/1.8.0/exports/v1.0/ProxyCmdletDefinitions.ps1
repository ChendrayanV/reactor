
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
Information about acceptances of this agreement.
.Description
Read-only.
Information about acceptances of this agreement.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/get-mgagreementacceptance
#>
function Get-MgAgreementAcceptance {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementAcceptance
    ${AgreementAcceptanceId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Get1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementAcceptance_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementAcceptance_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementAcceptance_List1';
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
Get versions from agreements
.Description
Get versions from agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/get-mgagreementfilelocalizationversion
#>
function Get-MgAgreementFileLocalizationVersion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileVersion
    ${AgreementFileVersionId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Get = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFileLocalizationVersion_Get';
            GetViaIdentity = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFileLocalizationVersion_GetViaIdentity';
            List1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFileLocalizationVersion_List1';
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
Get localizations from agreements
.Description
Get localizations from agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/get-mgagreementfilelocalization
#>
function Get-MgAgreementFileLocalization {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Get1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFileLocalization_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFileLocalization_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFileLocalization_List1';
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
Get versions from agreements
.Description
Get versions from agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/get-mgagreementfileversion
#>
function Get-MgAgreementFileVersion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileVersion
    ${AgreementFileVersionId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Get = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFileVersion_Get';
            GetViaIdentity = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFileVersion_GetViaIdentity';
            List = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFileVersion_List';
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
Default PDF linked to this agreement.
.Description
Default PDF linked to this agreement.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFile
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/get-mgagreementfile
#>
function Get-MgAgreementFile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFile], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Get1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFile_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFile_GetViaIdentity1';
            List = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreementFile_List';
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
Get entity from agreements by key
.Description
Get entity from agreements by key

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreement
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/get-mgagreement
#>
function Get-MgAgreement {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreement])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

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
            Get1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreement_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreement_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgAgreement_List1';
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
A collection of stages in the approval decision.
.Description
A collection of stages in the approval decision.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApprovalStage
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/get-mgentitlementmanagementaccesspackageassignmentapprovalstage
#>
function Get-MgEntitlementManagementAccessPackageAssignmentApprovalStage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApprovalStage])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of approval
    ${ApprovalId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of approvalStage
    ${ApprovalStageId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Get = 'Microsoft.Graph.Identity.Governance.private\Get-MgEntitlementManagementAccessPackageAssignmentApprovalStage_Get';
            GetViaIdentity = 'Microsoft.Graph.Identity.Governance.private\Get-MgEntitlementManagementAccessPackageAssignmentApprovalStage_GetViaIdentity';
            List = 'Microsoft.Graph.Identity.Governance.private\Get-MgEntitlementManagementAccessPackageAssignmentApprovalStage_List';
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
The user's terms of use acceptance statuses.
Read-only.
Nullable.
.Description
The user's terms of use acceptance statuses.
Read-only.
Nullable.

.Outputs
System.String
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/get-mguseragreementacceptancebyref
#>
function Get-MgUserAgreementAcceptanceByRef {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter()]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter()]
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

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter()]
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
            List1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgUserAgreementAcceptanceByRef_List1';
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
The user's terms of use acceptance statuses.
Read-only.
Nullable.
.Description
The user's terms of use acceptance statuses.
Read-only.
Nullable.

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/get-mguseragreementacceptance
#>
function Get-MgUserAgreementAcceptance {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter()]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter()]
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

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter()]
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
            List1 = 'Microsoft.Graph.Identity.Governance.private\Get-MgUserAgreementAcceptance_List1';
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
Invoke function filterByCurrentUser
.Description
Invoke function filterByCurrentUser

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApproval
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/invoke-mgfilterentitlementmanagementaccesspackageassignmentapproval
#>
function Invoke-MgFilterEntitlementManagementAccessPackageAssignmentApproval {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApproval])]
[CmdletBinding(DefaultParameterSetName='Filter1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Filter1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: on={on}
    ${On},

    [Parameter(ParameterSetName='FilterViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Filter1 = 'Microsoft.Graph.Identity.Governance.private\Invoke-MgFilterEntitlementManagementAccessPackageAssignmentApproval_Filter1';
            FilterViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Invoke-MgFilterEntitlementManagementAccessPackageAssignmentApproval_FilterViaIdentity1';
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
Information about acceptances of this agreement.
.Description
Read-only.
Information about acceptances of this agreement.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAgreementAcceptance>: agreementAcceptance
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AgreementFileId <String>]: The identifier of the agreement file accepted by the user.
  [AgreementId <String>]: The identifier of the agreement.
  [DeviceDisplayName <String>]: The display name of the device used for accepting the agreement.
  [DeviceId <String>]: The unique identifier of the device used for accepting the agreement.
  [DeviceOSType <String>]: The operating system used to accept the agreement.
  [DeviceOSVersion <String>]: The operating system version of the device used to accept the agreement.
  [ExpirationDateTime <DateTime?>]: The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [RecordedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [State <String>]: agreementAcceptanceState
  [UserDisplayName <String>]: Display name of the user when the acceptance was recorded.
  [UserEmail <String>]: Email of the user when the acceptance was recorded.
  [UserId <String>]: The identifier of the user who accepted the agreement.
  [UserPrincipalName <String>]: UPN of the user when the acceptance was recorded.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/new-mgagreementacceptance
#>
function New-MgAgreementAcceptance {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance]
    # agreementAcceptance
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
    # The identifier of the agreement file accepted by the user.
    ${AgreementFileId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The identifier of the agreement.
    ${AgreementId1},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the device used for accepting the agreement.
    ${DeviceDisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The unique identifier of the device used for accepting the agreement.
    ${DeviceId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The operating system used to accept the agreement.
    ${DeviceOSType},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The operating system version of the device used to accept the agreement.
    ${DeviceOSVersion},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The expiration date time of the acceptance.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    ${RecordedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # agreementAcceptanceState
    ${State},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the user when the acceptance was recorded.
    ${UserDisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email of the user when the acceptance was recorded.
    ${UserEmail},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The identifier of the user who accepted the agreement.
    ${UserId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # UPN of the user when the acceptance was recorded.
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
            Create1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementAcceptance_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementAcceptance_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementAcceptance_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementAcceptance_CreateViaIdentityExpanded1';
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
Create new navigation property to versions for agreements
.Description
Create new navigation property to versions for agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
System.Collections.Hashtable
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

FILEDATA <IMicrosoftGraphAgreementFileData>: agreementFileData
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Data <Byte[]>]: 

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/new-mgagreementfilelocalizationversion
#>
function New-MgAgreementFileLocalizationVersion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion]))]
    [System.Collections.Hashtable]
    # agreementFileVersion
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
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileData]
    # agreementFileData
    # To construct, see NOTES section for FILEDATA properties and create a hash table.
    ${FileData},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDefault},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsMajorVersion},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Language},

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
            Create1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileLocalizationVersion_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileLocalizationVersion_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileLocalizationVersion_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileLocalizationVersion_CreateViaIdentityExpanded1';
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
Create new navigation property to localizations for agreements
.Description
Create new navigation property to localizations for agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAgreementFileLocalization>: agreementFileLocalization
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
  [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.

FILEDATA <IMicrosoftGraphAgreementFileData>: agreementFileData
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Data <Byte[]>]: 

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user

VERSIONS <IMicrosoftGraphAgreementFileVersion[]>: .
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/new-mgagreementfilelocalization
#>
function New-MgAgreementFileLocalization {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization]
    # agreementFileLocalization
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
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileData]
    # agreementFileData
    # To construct, see NOTES section for FILEDATA properties and create a hash table.
    ${FileData},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDefault},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsMajorVersion},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Language},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion[]]
    # .
    # To construct, see NOTES section for VERSIONS properties and create a hash table.
    ${Versions},

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
            Create1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileLocalization_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileLocalization_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileLocalization_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileLocalization_CreateViaIdentityExpanded1';
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
Create new navigation property to versions for agreements
.Description
Create new navigation property to versions for agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
System.Collections.Hashtable
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

FILEDATA <IMicrosoftGraphAgreementFileData>: agreementFileData
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Data <Byte[]>]: 

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/new-mgagreementfileversion
#>
function New-MgAgreementFileVersion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion]))]
    [System.Collections.Hashtable]
    # agreementFileVersion
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
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileData]
    # agreementFileData
    # To construct, see NOTES section for FILEDATA properties and create a hash table.
    ${FileData},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDefault},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsMajorVersion},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Language},

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
            Create = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileVersion_Create';
            CreateExpanded = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileVersion_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileVersion_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFileVersion_CreateViaIdentityExpanded';
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
PDFs linked to this agreement.
This property is in the process of being deprecated.
Use the  file property instead.
.Description
PDFs linked to this agreement.
This property is in the process of being deprecated.
Use the  file property instead.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAgreementFileLocalization>: agreementFileLocalization
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
  [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.

FILEDATA <IMicrosoftGraphAgreementFileData>: agreementFileData
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Data <Byte[]>]: 

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user

VERSIONS <IMicrosoftGraphAgreementFileVersion[]>: .
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/new-mgagreementfile
#>
function New-MgAgreementFile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization]
    # agreementFileLocalization
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
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileData]
    # agreementFileData
    # To construct, see NOTES section for FILEDATA properties and create a hash table.
    ${FileData},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDefault},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsMajorVersion},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Language},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion[]]
    # .
    # To construct, see NOTES section for VERSIONS properties and create a hash table.
    ${Versions},

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
            Create = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFile_Create';
            CreateExpanded = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFile_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFile_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreementFile_CreateViaIdentityExpanded';
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
Add new entity to agreements
.Description
Add new entity to agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreement
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreement
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACCEPTANCES <IMicrosoftGraphAgreementAcceptance[]>: Read-only. Information about acceptances of this agreement.
  [Id <String>]: Read-only.
  [AgreementFileId <String>]: The identifier of the agreement file accepted by the user.
  [AgreementId <String>]: The identifier of the agreement.
  [DeviceDisplayName <String>]: The display name of the device used for accepting the agreement.
  [DeviceId <String>]: The unique identifier of the device used for accepting the agreement.
  [DeviceOSType <String>]: The operating system used to accept the agreement.
  [DeviceOSVersion <String>]: The operating system version of the device used to accept the agreement.
  [ExpirationDateTime <DateTime?>]: The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [RecordedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [State <String>]: agreementAcceptanceState
  [UserDisplayName <String>]: Display name of the user when the acceptance was recorded.
  [UserEmail <String>]: Email of the user when the acceptance was recorded.
  [UserId <String>]: The identifier of the user who accepted the agreement.
  [UserPrincipalName <String>]: UPN of the user when the acceptance was recorded.

BODYPARAMETER <IMicrosoftGraphAgreement>: agreement
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Acceptances <IMicrosoftGraphAgreementAcceptance[]>]: Read-only. Information about acceptances of this agreement.
    [Id <String>]: Read-only.
    [AgreementFileId <String>]: The identifier of the agreement file accepted by the user.
    [AgreementId <String>]: The identifier of the agreement.
    [DeviceDisplayName <String>]: The display name of the device used for accepting the agreement.
    [DeviceId <String>]: The unique identifier of the device used for accepting the agreement.
    [DeviceOSType <String>]: The operating system used to accept the agreement.
    [DeviceOSVersion <String>]: The operating system version of the device used to accept the agreement.
    [ExpirationDateTime <DateTime?>]: The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [RecordedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [State <String>]: agreementAcceptanceState
    [UserDisplayName <String>]: Display name of the user when the acceptance was recorded.
    [UserEmail <String>]: Email of the user when the acceptance was recorded.
    [UserId <String>]: The identifier of the user who accepted the agreement.
    [UserPrincipalName <String>]: UPN of the user when the acceptance was recorded.
  [DisplayName <String>]: Display name of the agreement. The display name is used for internal tracking of the agreement but is not shown to end users who view the agreement.
  [File <IMicrosoftGraphAgreementFile>]: agreementFile
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Data <Byte[]>]: 
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.
    [Localizations <IMicrosoftGraphAgreementFileLocalization[]>]: 
      [CreatedDateTime <DateTime?>]: 
      [DisplayName <String>]: 
      [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
      [FileName <String>]: 
      [IsDefault <Boolean?>]: 
      [IsMajorVersion <Boolean?>]: 
      [Language <String>]: 
      [Id <String>]: Read-only.
      [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
        [CreatedDateTime <DateTime?>]: 
        [DisplayName <String>]: 
        [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
        [FileName <String>]: 
        [IsDefault <Boolean?>]: 
        [IsMajorVersion <Boolean?>]: 
        [Language <String>]: 
        [Id <String>]: Read-only.
  [Files <IMicrosoftGraphAgreementFileLocalization[]>]: PDFs linked to this agreement. This property is in the process of being deprecated. Use the  file property instead.
  [IsPerDeviceAcceptanceRequired <Boolean?>]: Indicates whether end users are required to accept this agreement on every device that they access it from. The end user is required to register their device in Azure AD, if they haven't already done so.
  [IsViewingBeforeAcceptanceRequired <Boolean?>]: Indicates whether the user has to expand the agreement before accepting.
  [TermsExpiration <IMicrosoftGraphTermsExpiration>]: termsExpiration
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Frequency <TimeSpan?>]: Represents the frequency at which the terms will expire, after its first expiration as set in startDateTime. The value is represented in ISO 8601 format for durations. For example, PT1M represents a time period of 1 month.
    [StartDateTime <DateTime?>]: The DateTime when the agreement is set to expire for all users. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [UserReacceptRequiredFrequency <TimeSpan?>]: The duration after which the user must re-accept the terms of use. The value is represented in ISO 8601 format for durations.

FILE <IMicrosoftGraphAgreementFile>: agreementFile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
  [Localizations <IMicrosoftGraphAgreementFileLocalization[]>]: 
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.
    [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
      [CreatedDateTime <DateTime?>]: 
      [DisplayName <String>]: 
      [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
      [FileName <String>]: 
      [IsDefault <Boolean?>]: 
      [IsMajorVersion <Boolean?>]: 
      [Language <String>]: 
      [Id <String>]: Read-only.

FILES <IMicrosoftGraphAgreementFileLocalization[]>: PDFs linked to this agreement. This property is in the process of being deprecated. Use the file property instead.
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
  [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.

TERMSEXPIRATION <IMicrosoftGraphTermsExpiration>: termsExpiration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Frequency <TimeSpan?>]: Represents the frequency at which the terms will expire, after its first expiration as set in startDateTime. The value is represented in ISO 8601 format for durations. For example, PT1M represents a time period of 1 month.
  [StartDateTime <DateTime?>]: The DateTime when the agreement is set to expire for all users. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/new-mgagreement
#>
function New-MgAgreement {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreement])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreement]
    # agreement
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance[]]
    # Read-only.
    # Information about acceptances of this agreement.
    # To construct, see NOTES section for ACCEPTANCES properties and create a hash table.
    ${Acceptances},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the agreement.
    # The display name is used for internal tracking of the agreement but is not shown to end users who view the agreement.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFile]
    # agreementFile
    # To construct, see NOTES section for FILE properties and create a hash table.
    ${File},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization[]]
    # PDFs linked to this agreement.
    # This property is in the process of being deprecated.
    # Use the file property instead.
    # To construct, see NOTES section for FILES properties and create a hash table.
    ${Files},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether end users are required to accept this agreement on every device that they access it from.
    # The end user is required to register their device in Azure AD, if they haven't already done so.
    ${IsPerDeviceAcceptanceRequired},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the user has to expand the agreement before accepting.
    ${IsViewingBeforeAcceptanceRequired},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsExpiration]
    # termsExpiration
    # To construct, see NOTES section for TERMSEXPIRATION properties and create a hash table.
    ${TermsExpiration},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The duration after which the user must re-accept the terms of use.
    # The value is represented in ISO 8601 format for durations.
    ${UserReacceptRequiredFrequency},

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
            Create1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreement_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Identity.Governance.private\New-MgAgreement_CreateExpanded1';
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
A collection of stages in the approval decision.
.Description
A collection of stages in the approval decision.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApprovalStage
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApprovalStage
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphApprovalStage>: approvalStage
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AssignedToMe <Boolean?>]: Indicates whether the stage is assigned to the calling user to review. Read-only.
  [DisplayName <String>]: The label provided by the policy creator to identify an approval stage. Read-only.
  [Justification <String>]: The justification associated with the approval stage decision.
  [ReviewResult <String>]: The result of this approval record. Possible values include: NotReviewed, Approved, Denied.
  [ReviewedBy <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [ReviewedDateTime <DateTime?>]: The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
  [Status <String>]: The stage status. Possible values: InProgress, Initializing, Completed, Expired. Read-only.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user

REVIEWEDBY <IMicrosoftGraphIdentity>: identity
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
  [Id <String>]: Unique identifier for the identity.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/new-mgentitlementmanagementaccesspackageassignmentapprovalstage
#>
function New-MgEntitlementManagementAccessPackageAssignmentApprovalStage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApprovalStage])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of approval
    ${ApprovalId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApprovalStage]
    # approvalStage
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
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the stage is assigned to the calling user to review.
    # Read-only.
    ${AssignedToMe},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The label provided by the policy creator to identify an approval stage.
    # Read-only.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The justification associated with the approval stage decision.
    ${Justification},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The result of this approval record.
    # Possible values include: NotReviewed, Approved, Denied.
    ${ReviewResult},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentity]
    # identity
    # To construct, see NOTES section for REVIEWEDBY properties and create a hash table.
    ${ReviewedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time when a decision was recorded.
    # The date and time information uses ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Read-only.
    ${ReviewedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The stage status.
    # Possible values: InProgress, Initializing, Completed, Expired.
    # Read-only.
    ${Status},

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
            Create = 'Microsoft.Graph.Identity.Governance.private\New-MgEntitlementManagementAccessPackageAssignmentApprovalStage_Create';
            CreateExpanded = 'Microsoft.Graph.Identity.Governance.private\New-MgEntitlementManagementAccessPackageAssignmentApprovalStage_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Identity.Governance.private\New-MgEntitlementManagementAccessPackageAssignmentApprovalStage_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Identity.Governance.private\New-MgEntitlementManagementAccessPackageAssignmentApprovalStage_CreateViaIdentityExpanded';
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
The user's terms of use acceptance statuses.
Read-only.
Nullable.
.Description
The user's terms of use acceptance statuses.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
System.Collections.Hashtable
.Outputs
Microsoft.Graph.PowerShell.Models.IPathsIc0Z89UsersUserIdAgreementacceptancesRefPostResponses201ContentApplicationJsonSchema
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/new-mguseragreementacceptancebyref
#>
function New-MgUserAgreementAcceptanceByRef {
[OutputType([Microsoft.Graph.PowerShell.Models.IPathsIc0Z89UsersUserIdAgreementacceptancesRefPostResponses201ContentApplicationJsonSchema])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IPathsRuvqjtUsersUserIdAgreementacceptancesRefPostRequestbodyContentApplicationJsonSchema]))]
    [System.Collections.Hashtable]
    # .
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
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
            Create1 = 'Microsoft.Graph.Identity.Governance.private\New-MgUserAgreementAcceptanceByRef_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Identity.Governance.private\New-MgUserAgreementAcceptanceByRef_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\New-MgUserAgreementAcceptanceByRef_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Identity.Governance.private\New-MgUserAgreementAcceptanceByRef_CreateViaIdentityExpanded1';
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
Information about acceptances of this agreement.
.Description
Read-only.
Information about acceptances of this agreement.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/remove-mgagreementacceptance
#>
function Remove-MgAgreementAcceptance {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementAcceptance
    ${AgreementAcceptanceId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Delete1 = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreementAcceptance_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreementAcceptance_DeleteViaIdentity1';
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
Delete navigation property versions for agreements
.Description
Delete navigation property versions for agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/remove-mgagreementfilelocalizationversion
#>
function Remove-MgAgreementFileLocalizationVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileVersion
    ${AgreementFileVersionId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Delete = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreementFileLocalizationVersion_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreementFileLocalizationVersion_DeleteViaIdentity';
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
Delete navigation property localizations for agreements
.Description
Delete navigation property localizations for agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/remove-mgagreementfilelocalization
#>
function Remove-MgAgreementFileLocalization {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Delete1 = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreementFileLocalization_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreementFileLocalization_DeleteViaIdentity1';
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
Delete navigation property versions for agreements
.Description
Delete navigation property versions for agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/remove-mgagreementfileversion
#>
function Remove-MgAgreementFileVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileVersion
    ${AgreementFileVersionId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Delete = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreementFileVersion_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreementFileVersion_DeleteViaIdentity';
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
PDFs linked to this agreement.
This property is in the process of being deprecated.
Use the  file property instead.
.Description
PDFs linked to this agreement.
This property is in the process of being deprecated.
Use the  file property instead.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/remove-mgagreementfile
#>
function Remove-MgAgreementFile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Delete2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='DeleteViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Delete2 = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreementFile_Delete2';
            DeleteViaIdentity2 = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreementFile_DeleteViaIdentity2';
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
Delete entity from agreements
.Description
Delete entity from agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/remove-mgagreement
#>
function Remove-MgAgreement {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Delete1 = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreement_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Remove-MgAgreement_DeleteViaIdentity1';
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
A collection of stages in the approval decision.
.Description
A collection of stages in the approval decision.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/remove-mgentitlementmanagementaccesspackageassignmentapprovalstage
#>
function Remove-MgEntitlementManagementAccessPackageAssignmentApprovalStage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of approval
    ${ApprovalId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of approvalStage
    ${ApprovalStageId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Delete = 'Microsoft.Graph.Identity.Governance.private\Remove-MgEntitlementManagementAccessPackageAssignmentApprovalStage_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Identity.Governance.private\Remove-MgEntitlementManagementAccessPackageAssignmentApprovalStage_DeleteViaIdentity';
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
Delete navigation property accessPackageAssignmentApprovals for identityGovernance
.Description
Delete navigation property accessPackageAssignmentApprovals for identityGovernance

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/remove-mgentitlementmanagementaccesspackageassignmentapproval
#>
function Remove-MgEntitlementManagementAccessPackageAssignmentApproval {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of approval
    ${ApprovalId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
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
            Delete1 = 'Microsoft.Graph.Identity.Governance.private\Remove-MgEntitlementManagementAccessPackageAssignmentApproval_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Remove-MgEntitlementManagementAccessPackageAssignmentApproval_DeleteViaIdentity1';
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
Information about acceptances of this agreement.
.Description
Read-only.
Information about acceptances of this agreement.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAgreementAcceptance>: agreementAcceptance
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AgreementFileId <String>]: The identifier of the agreement file accepted by the user.
  [AgreementId <String>]: The identifier of the agreement.
  [DeviceDisplayName <String>]: The display name of the device used for accepting the agreement.
  [DeviceId <String>]: The unique identifier of the device used for accepting the agreement.
  [DeviceOSType <String>]: The operating system used to accept the agreement.
  [DeviceOSVersion <String>]: The operating system version of the device used to accept the agreement.
  [ExpirationDateTime <DateTime?>]: The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [RecordedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [State <String>]: agreementAcceptanceState
  [UserDisplayName <String>]: Display name of the user when the acceptance was recorded.
  [UserEmail <String>]: Email of the user when the acceptance was recorded.
  [UserId <String>]: The identifier of the user who accepted the agreement.
  [UserPrincipalName <String>]: UPN of the user when the acceptance was recorded.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/update-mgagreementacceptance
#>
function Update-MgAgreementAcceptance {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementAcceptance
    ${AgreementAcceptanceId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance]
    # agreementAcceptance
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
    # The identifier of the agreement file accepted by the user.
    ${AgreementFileId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The identifier of the agreement.
    ${AgreementId1},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the device used for accepting the agreement.
    ${DeviceDisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The unique identifier of the device used for accepting the agreement.
    ${DeviceId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The operating system used to accept the agreement.
    ${DeviceOSType},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The operating system version of the device used to accept the agreement.
    ${DeviceOSVersion},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The expiration date time of the acceptance.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    ${ExpirationDateTime},

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
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    ${RecordedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # agreementAcceptanceState
    ${State},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the user when the acceptance was recorded.
    ${UserDisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email of the user when the acceptance was recorded.
    ${UserEmail},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The identifier of the user who accepted the agreement.
    ${UserId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # UPN of the user when the acceptance was recorded.
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
            Update1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementAcceptance_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementAcceptance_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementAcceptance_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementAcceptance_UpdateViaIdentityExpanded1';
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
Update the navigation property versions in agreements
.Description
Update the navigation property versions in agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

FILEDATA <IMicrosoftGraphAgreementFileData>: agreementFileData
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Data <Byte[]>]: 

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/update-mgagreementfilelocalizationversion
#>
function Update-MgAgreementFileLocalizationVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileVersion
    ${AgreementFileVersionId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion]))]
    [System.Collections.Hashtable]
    # agreementFileVersion
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
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileData]
    # agreementFileData
    # To construct, see NOTES section for FILEDATA properties and create a hash table.
    ${FileData},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileName},

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
    # .
    ${IsDefault},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsMajorVersion},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Language},

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
            Update = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileLocalizationVersion_Update';
            UpdateExpanded = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileLocalizationVersion_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileLocalizationVersion_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileLocalizationVersion_UpdateViaIdentityExpanded';
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
Update the navigation property localizations in agreements
.Description
Update the navigation property localizations in agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAgreementFileLocalization>: agreementFileLocalization
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
  [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.

FILEDATA <IMicrosoftGraphAgreementFileData>: agreementFileData
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Data <Byte[]>]: 

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user

VERSIONS <IMicrosoftGraphAgreementFileVersion[]>: .
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/update-mgagreementfilelocalization
#>
function Update-MgAgreementFileLocalization {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization]
    # agreementFileLocalization
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
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileData]
    # agreementFileData
    # To construct, see NOTES section for FILEDATA properties and create a hash table.
    ${FileData},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileName},

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
    # .
    ${IsDefault},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsMajorVersion},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Language},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion[]]
    # .
    # To construct, see NOTES section for VERSIONS properties and create a hash table.
    ${Versions},

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
            Update1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileLocalization_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileLocalization_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileLocalization_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileLocalization_UpdateViaIdentityExpanded1';
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
Update the navigation property versions in agreements
.Description
Update the navigation property versions in agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

FILEDATA <IMicrosoftGraphAgreementFileData>: agreementFileData
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Data <Byte[]>]: 

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/update-mgagreementfileversion
#>
function Update-MgAgreementFileVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileLocalization
    ${AgreementFileLocalizationId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreementFileVersion
    ${AgreementFileVersionId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileVersion]))]
    [System.Collections.Hashtable]
    # agreementFileVersion
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
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileData]
    # agreementFileData
    # To construct, see NOTES section for FILEDATA properties and create a hash table.
    ${FileData},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileName},

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
    # .
    ${IsDefault},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsMajorVersion},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Language},

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
            Update = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileVersion_Update';
            UpdateExpanded = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileVersion_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileVersion_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFileVersion_UpdateViaIdentityExpanded';
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
Default PDF linked to this agreement.
.Description
Default PDF linked to this agreement.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFile
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAgreementFile>: agreementFile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
  [Localizations <IMicrosoftGraphAgreementFileLocalization[]>]: 
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.
    [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
      [CreatedDateTime <DateTime?>]: 
      [DisplayName <String>]: 
      [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
      [FileName <String>]: 
      [IsDefault <Boolean?>]: 
      [IsMajorVersion <Boolean?>]: 
      [Language <String>]: 
      [Id <String>]: Read-only.

FILEDATA <IMicrosoftGraphAgreementFileData>: agreementFileData
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Data <Byte[]>]: 

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user

LOCALIZATIONS <IMicrosoftGraphAgreementFileLocalization[]>: .
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
  [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/update-mgagreementfile
#>
function Update-MgAgreementFile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFile]
    # agreementFile
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
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileData]
    # agreementFileData
    # To construct, see NOTES section for FILEDATA properties and create a hash table.
    ${FileData},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileName},

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
    # .
    ${IsDefault},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsMajorVersion},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Language},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization[]]
    # .
    # To construct, see NOTES section for LOCALIZATIONS properties and create a hash table.
    ${Localizations},

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
            Update1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFile_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFile_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFile_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreementFile_UpdateViaIdentityExpanded1';
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
Update entity in agreements
.Description
Update entity in agreements

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreement
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACCEPTANCES <IMicrosoftGraphAgreementAcceptance[]>: Read-only. Information about acceptances of this agreement.
  [Id <String>]: Read-only.
  [AgreementFileId <String>]: The identifier of the agreement file accepted by the user.
  [AgreementId <String>]: The identifier of the agreement.
  [DeviceDisplayName <String>]: The display name of the device used for accepting the agreement.
  [DeviceId <String>]: The unique identifier of the device used for accepting the agreement.
  [DeviceOSType <String>]: The operating system used to accept the agreement.
  [DeviceOSVersion <String>]: The operating system version of the device used to accept the agreement.
  [ExpirationDateTime <DateTime?>]: The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [RecordedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [State <String>]: agreementAcceptanceState
  [UserDisplayName <String>]: Display name of the user when the acceptance was recorded.
  [UserEmail <String>]: Email of the user when the acceptance was recorded.
  [UserId <String>]: The identifier of the user who accepted the agreement.
  [UserPrincipalName <String>]: UPN of the user when the acceptance was recorded.

BODYPARAMETER <IMicrosoftGraphAgreement>: agreement
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Acceptances <IMicrosoftGraphAgreementAcceptance[]>]: Read-only. Information about acceptances of this agreement.
    [Id <String>]: Read-only.
    [AgreementFileId <String>]: The identifier of the agreement file accepted by the user.
    [AgreementId <String>]: The identifier of the agreement.
    [DeviceDisplayName <String>]: The display name of the device used for accepting the agreement.
    [DeviceId <String>]: The unique identifier of the device used for accepting the agreement.
    [DeviceOSType <String>]: The operating system used to accept the agreement.
    [DeviceOSVersion <String>]: The operating system version of the device used to accept the agreement.
    [ExpirationDateTime <DateTime?>]: The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [RecordedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [State <String>]: agreementAcceptanceState
    [UserDisplayName <String>]: Display name of the user when the acceptance was recorded.
    [UserEmail <String>]: Email of the user when the acceptance was recorded.
    [UserId <String>]: The identifier of the user who accepted the agreement.
    [UserPrincipalName <String>]: UPN of the user when the acceptance was recorded.
  [DisplayName <String>]: Display name of the agreement. The display name is used for internal tracking of the agreement but is not shown to end users who view the agreement.
  [File <IMicrosoftGraphAgreementFile>]: agreementFile
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Data <Byte[]>]: 
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.
    [Localizations <IMicrosoftGraphAgreementFileLocalization[]>]: 
      [CreatedDateTime <DateTime?>]: 
      [DisplayName <String>]: 
      [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
      [FileName <String>]: 
      [IsDefault <Boolean?>]: 
      [IsMajorVersion <Boolean?>]: 
      [Language <String>]: 
      [Id <String>]: Read-only.
      [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
        [CreatedDateTime <DateTime?>]: 
        [DisplayName <String>]: 
        [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
        [FileName <String>]: 
        [IsDefault <Boolean?>]: 
        [IsMajorVersion <Boolean?>]: 
        [Language <String>]: 
        [Id <String>]: Read-only.
  [Files <IMicrosoftGraphAgreementFileLocalization[]>]: PDFs linked to this agreement. This property is in the process of being deprecated. Use the  file property instead.
  [IsPerDeviceAcceptanceRequired <Boolean?>]: Indicates whether end users are required to accept this agreement on every device that they access it from. The end user is required to register their device in Azure AD, if they haven't already done so.
  [IsViewingBeforeAcceptanceRequired <Boolean?>]: Indicates whether the user has to expand the agreement before accepting.
  [TermsExpiration <IMicrosoftGraphTermsExpiration>]: termsExpiration
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Frequency <TimeSpan?>]: Represents the frequency at which the terms will expire, after its first expiration as set in startDateTime. The value is represented in ISO 8601 format for durations. For example, PT1M represents a time period of 1 month.
    [StartDateTime <DateTime?>]: The DateTime when the agreement is set to expire for all users. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [UserReacceptRequiredFrequency <TimeSpan?>]: The duration after which the user must re-accept the terms of use. The value is represented in ISO 8601 format for durations.

FILE <IMicrosoftGraphAgreementFile>: agreementFile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
  [Localizations <IMicrosoftGraphAgreementFileLocalization[]>]: 
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.
    [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
      [CreatedDateTime <DateTime?>]: 
      [DisplayName <String>]: 
      [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
      [FileName <String>]: 
      [IsDefault <Boolean?>]: 
      [IsMajorVersion <Boolean?>]: 
      [Language <String>]: 
      [Id <String>]: Read-only.

FILES <IMicrosoftGraphAgreementFileLocalization[]>: PDFs linked to this agreement. This property is in the process of being deprecated. Use the file property instead.
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Data <Byte[]>]: 
  [FileName <String>]: 
  [IsDefault <Boolean?>]: 
  [IsMajorVersion <Boolean?>]: 
  [Language <String>]: 
  [Id <String>]: Read-only.
  [Versions <IMicrosoftGraphAgreementFileVersion[]>]: 
    [CreatedDateTime <DateTime?>]: 
    [DisplayName <String>]: 
    [FileData <IMicrosoftGraphAgreementFileData>]: agreementFileData
    [FileName <String>]: 
    [IsDefault <Boolean?>]: 
    [IsMajorVersion <Boolean?>]: 
    [Language <String>]: 
    [Id <String>]: Read-only.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user

TERMSEXPIRATION <IMicrosoftGraphTermsExpiration>: termsExpiration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Frequency <TimeSpan?>]: Represents the frequency at which the terms will expire, after its first expiration as set in startDateTime. The value is represented in ISO 8601 format for durations. For example, PT1M represents a time period of 1 month.
  [StartDateTime <DateTime?>]: The DateTime when the agreement is set to expire for all users. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/update-mgagreement
#>
function Update-MgAgreement {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of agreement
    ${AgreementId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreement]
    # agreement
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementAcceptance[]]
    # Read-only.
    # Information about acceptances of this agreement.
    # To construct, see NOTES section for ACCEPTANCES properties and create a hash table.
    ${Acceptances},

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
    # Display name of the agreement.
    # The display name is used for internal tracking of the agreement but is not shown to end users who view the agreement.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFile]
    # agreementFile
    # To construct, see NOTES section for FILE properties and create a hash table.
    ${File},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAgreementFileLocalization[]]
    # PDFs linked to this agreement.
    # This property is in the process of being deprecated.
    # Use the file property instead.
    # To construct, see NOTES section for FILES properties and create a hash table.
    ${Files},

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
    # Indicates whether end users are required to accept this agreement on every device that they access it from.
    # The end user is required to register their device in Azure AD, if they haven't already done so.
    ${IsPerDeviceAcceptanceRequired},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the user has to expand the agreement before accepting.
    ${IsViewingBeforeAcceptanceRequired},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTermsExpiration]
    # termsExpiration
    # To construct, see NOTES section for TERMSEXPIRATION properties and create a hash table.
    ${TermsExpiration},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The duration after which the user must re-accept the terms of use.
    # The value is represented in ISO 8601 format for durations.
    ${UserReacceptRequiredFrequency},

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
            Update1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreement_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreement_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreement_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgAgreement_UpdateViaIdentityExpanded1';
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
A collection of stages in the approval decision.
.Description
A collection of stages in the approval decision.

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApprovalStage
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphApprovalStage>: approvalStage
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AssignedToMe <Boolean?>]: Indicates whether the stage is assigned to the calling user to review. Read-only.
  [DisplayName <String>]: The label provided by the policy creator to identify an approval stage. Read-only.
  [Justification <String>]: The justification associated with the approval stage decision.
  [ReviewResult <String>]: The result of this approval record. Possible values include: NotReviewed, Approved, Denied.
  [ReviewedBy <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [ReviewedDateTime <DateTime?>]: The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
  [Status <String>]: The stage status. Possible values: InProgress, Initializing, Completed, Expired. Read-only.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user

REVIEWEDBY <IMicrosoftGraphIdentity>: identity
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
  [Id <String>]: Unique identifier for the identity.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/update-mgentitlementmanagementaccesspackageassignmentapprovalstage
#>
function Update-MgEntitlementManagementAccessPackageAssignmentApprovalStage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of approval
    ${ApprovalId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of approvalStage
    ${ApprovalStageId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApprovalStage]
    # approvalStage
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
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the stage is assigned to the calling user to review.
    # Read-only.
    ${AssignedToMe},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The label provided by the policy creator to identify an approval stage.
    # Read-only.
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
    [System.String]
    # The justification associated with the approval stage decision.
    ${Justification},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The result of this approval record.
    # Possible values include: NotReviewed, Approved, Denied.
    ${ReviewResult},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentity]
    # identity
    # To construct, see NOTES section for REVIEWEDBY properties and create a hash table.
    ${ReviewedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time when a decision was recorded.
    # The date and time information uses ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Read-only.
    ${ReviewedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The stage status.
    # Possible values: InProgress, Initializing, Completed, Expired.
    # Read-only.
    ${Status},

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
            Update = 'Microsoft.Graph.Identity.Governance.private\Update-MgEntitlementManagementAccessPackageAssignmentApprovalStage_Update';
            UpdateExpanded = 'Microsoft.Graph.Identity.Governance.private\Update-MgEntitlementManagementAccessPackageAssignmentApprovalStage_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Identity.Governance.private\Update-MgEntitlementManagementAccessPackageAssignmentApprovalStage_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Identity.Governance.private\Update-MgEntitlementManagementAccessPackageAssignmentApprovalStage_UpdateViaIdentityExpanded';
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
Update the navigation property accessPackageAssignmentApprovals in identityGovernance
.Description
Update the navigation property accessPackageAssignmentApprovals in identityGovernance

.Inputs
Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApproval
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphApproval>: approval
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Stages <IMicrosoftGraphApprovalStage[]>]: A collection of stages in the approval decision.
    [Id <String>]: Read-only.
    [AssignedToMe <Boolean?>]: Indicates whether the stage is assigned to the calling user to review. Read-only.
    [DisplayName <String>]: The label provided by the policy creator to identify an approval stage. Read-only.
    [Justification <String>]: The justification associated with the approval stage decision.
    [ReviewResult <String>]: The result of this approval record. Possible values include: NotReviewed, Approved, Denied.
    [ReviewedBy <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [ReviewedDateTime <DateTime?>]: The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
    [Status <String>]: The stage status. Possible values: InProgress, Initializing, Completed, Expired. Read-only.

INPUTOBJECT <IIdentityGovernanceIdentity>: Identity Parameter
  [AccessPackageAssignmentId <String>]: key: id of accessPackageAssignment
  [AccessPackageAssignmentPolicyId <String>]: key: id of accessPackageAssignmentPolicy
  [AccessPackageAssignmentRequestId <String>]: key: id of accessPackageAssignmentRequest
  [AccessPackageAssignmentResourceRoleId <String>]: key: id of accessPackageAssignmentResourceRole
  [AccessPackageCatalogId <String>]: key: id of accessPackageCatalog
  [AccessPackageId <String>]: key: id of accessPackage
  [AccessPackageResourceEnvironmentId <String>]: key: id of accessPackageResourceEnvironment
  [AccessPackageResourceId <String>]: key: id of accessPackageResource
  [AccessPackageResourceRequestId <String>]: key: id of accessPackageResourceRequest
  [AccessPackageResourceRoleId <String>]: key: id of accessPackageResourceRole
  [AccessPackageResourceRoleScopeId <String>]: key: id of accessPackageResourceRoleScope
  [AccessPackageResourceScopeId <String>]: key: id of accessPackageResourceScope
  [AccessReviewDecisionId <String>]: key: id of accessReviewDecision
  [AccessReviewHistoryDefinitionId <String>]: key: id of accessReviewHistoryDefinition
  [AccessReviewId <String>]: key: id of accessReview
  [AccessReviewId1 <String>]: key: id of accessReview
  [AccessReviewInstanceDecisionItemId <String>]: key: id of accessReviewInstanceDecisionItem
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AccessReviewReviewerId <String>]: key: id of accessReviewReviewer
  [AccessReviewScheduleDefinitionId <String>]: key: id of accessReviewScheduleDefinition
  [AgreementAcceptanceId <String>]: key: id of agreementAcceptance
  [AgreementFileLocalizationId <String>]: key: id of agreementFileLocalization
  [AgreementFileVersionId <String>]: key: id of agreementFileVersion
  [AgreementId <String>]: key: id of agreement
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [ApprovalId <String>]: key: id of approval
  [ApprovalStageId <String>]: key: id of approvalStage
  [ApprovalStepId <String>]: key: id of approvalStep
  [BusinessFlowTemplateId <String>]: key: id of businessFlowTemplate
  [ConnectedOrganizationId <String>]: key: id of connectedOrganization
  [DirectoryObjectId <String>]: key: id of directoryObject
  [GovernanceResourceId <String>]: key: id of governanceResource
  [GovernanceRoleAssignmentId <String>]: key: id of governanceRoleAssignment
  [GovernanceRoleAssignmentRequestId <String>]: key: id of governanceRoleAssignmentRequest
  [GovernanceRoleDefinitionId <String>]: key: id of governanceRoleDefinition
  [GovernanceRoleSettingId <String>]: key: id of governanceRoleSetting
  [GroupId <String>]: key: id of group
  [On <String>]: Usage: on={on}
  [PrivilegedAccessId <String>]: key: id of privilegedAccess
  [PrivilegedApprovalId <String>]: key: id of privilegedApproval
  [PrivilegedOperationEventId <String>]: key: id of privilegedOperationEvent
  [PrivilegedRoleAssignmentId <String>]: key: id of privilegedRoleAssignment
  [PrivilegedRoleAssignmentRequestId <String>]: key: id of privilegedRoleAssignmentRequest
  [PrivilegedRoleId <String>]: key: id of privilegedRole
  [ProgramControlId <String>]: key: id of programControl
  [ProgramControlTypeId <String>]: key: id of programControlType
  [ProgramId <String>]: key: id of program
  [UserConsentRequestId <String>]: key: id of userConsentRequest
  [UserId <String>]: key: id of user

STAGES <IMicrosoftGraphApprovalStage[]>: A collection of stages in the approval decision.
  [Id <String>]: Read-only.
  [AssignedToMe <Boolean?>]: Indicates whether the stage is assigned to the calling user to review. Read-only.
  [DisplayName <String>]: The label provided by the policy creator to identify an approval stage. Read-only.
  [Justification <String>]: The justification associated with the approval stage decision.
  [ReviewResult <String>]: The result of this approval record. Possible values include: NotReviewed, Approved, Denied.
  [ReviewedBy <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [ReviewedDateTime <DateTime?>]: The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
  [Status <String>]: The stage status. Possible values: InProgress, Initializing, Completed, Expired. Read-only.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.identity.governance/update-mgentitlementmanagementaccesspackageassignmentapproval
#>
function Update-MgEntitlementManagementAccessPackageAssignmentApproval {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of approval
    ${ApprovalId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IIdentityGovernanceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApproval]
    # approval
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApprovalStage[]]
    # A collection of stages in the approval decision.
    # To construct, see NOTES section for STAGES properties and create a hash table.
    ${Stages},

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
            Update1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgEntitlementManagementAccessPackageAssignmentApproval_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgEntitlementManagementAccessPackageAssignmentApproval_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgEntitlementManagementAccessPackageAssignmentApproval_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Identity.Governance.private\Update-MgEntitlementManagementAccessPackageAssignmentApproval_UpdateViaIdentityExpanded1';
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAyHsCS6xxzbb02
# rJ5cjx0WCY6Ype0Q8YzOvkFbQXA4ZaCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgf9RO/3tP
# uRZsIRjo4dM7z3+x02JzUutVEiczIfm37LQwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBnwsO5uXeMgXpb/SSHJUvN0+ILTH1g0kuEDjt5ekzX
# ZugDZob+nW5uma7KxAI57v/2Px+3dhIUS88Rhoby168AKcA1SSXyvwMic0cHQZ50
# G8cwaBYCMbwYCqvlxMe8eDff99tCQ+2mtRuWmqWfH9P9bFxG/g9KwfjEf7ya+I8K
# 28K+yp41nZG2/zAnIninuQs9KKHegASa2LouR14Z9jM6TR2z33UEC03O6GLGybwv
# JG2D3QdgZQzQhTOHLo3KxnypDvyjW2vZ9wg5euKsGFz1eod+wg5CNmXEBXl+0acq
# aftqrGN7oVjSTcaES6DaJDjCGN+qxSbeyjZUXY0mdsTyoYIS/jCCEvoGCisGAQQB
# gjcDAwExghLqMIIS5gYJKoZIhvcNAQcCoIIS1zCCEtMCAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIAsrZy8+d/j1TchF3RoSTsqp9U8ilwJi6QHVeRtg
# n6DJAgZhcIeMkWYYEzIwMjExMDI3MDcxMTI0LjM3MVowBIACAfSggdikgdUwgdIx
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
# AQQwLwYJKoZIhvcNAQkEMSIEIJ0HMibojKaf0f1o9+erFgdgg8aY8fHKU40vS3q1
# o9SYMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgn6/QhAepLF/7Bdsvfu8G
# OT+ihL9c4cgo5Nf1aUN8tG0wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAATqNjTH3d0lJwgAAAAABOjAiBCCad1sT4fODZN4IPSh9v6at
# bbtTBV3axXkL6x81mXZBgDANBgkqhkiG9w0BAQsFAASCAQBvDQYRyVW4s9vkgTsA
# T+dUtOx+6aDL8rXMQ6uJEqKTaAxC9w9eiKru+smrNBzQrsH4u8pTysOrEqWSXJH2
# 5u2JOBQHqje45moEtxE31cBgGWGgnOSzwG9NuNm41CWrE1Vte54Y9tODRGiS2aRY
# 29IaCPypG53rYktvHYSkUeLoOeO4FEQD3lggbbPHAr4E4uY00quZIPohFWqoQnI0
# U3q2/6YUvz88rI1YrB8+9cuX3wnIY0gS1ag2xbWBBiM56ctMZfNMhl1M03dl2dZo
# osT4j+EhtUIwegc+DoEljUbsdiO8FKapRVMBQJ8qS12AwlKvhkO0tc1UIMH8ZgtD
# 503I
# SIG # End signature block
