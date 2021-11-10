
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of buckets in the plan.
.Description
Read-only.
Nullable.
Collection of buckets in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mggroupplannerplanbucket
#>
function Get-MgGroupPlannerPlanBucket {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlanBucket_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlanBucket_GetViaIdentity1';
            List = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlanBucket_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the plan.
.Description
Read-only.
Nullable.
Additional details about the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlanDetails
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mggroupplannerplandetail
#>
function Get-MgGroupPlannerPlanDetail {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlanDetails])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlanDetail_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlanDetail_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of tasks in the plan.
.Description
Read-only.
Nullable.
Collection of tasks in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mggroupplannerplantask
#>
function Get-MgGroupPlannerPlanTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlanTask_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlanTask_GetViaIdentity';
            List = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlanTask_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns the plannerPlans owned by the group.
.Description
Read-only.
Nullable.
Returns the plannerPlans owned by the group.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mggroupplannerplan
#>
function Get-MgGroupPlannerPlan {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlan_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlan_GetViaIdentity';
            List = 'Microsoft.Graph.Planner.private\Get-MgGroupPlannerPlan_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Entry-point to Planner resource that might exist for a Unified Group.
.Description
Entry-point to Planner resource that might exist for a Unified Group.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerGroup1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mggroupplanner
#>
function Get-MgGroupPlanner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerGroup1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgGroupPlanner_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgGroupPlanner_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerbuckettaskassignedtotaskboardformat
#>
function Get-MgPlannerBucketTaskAssignedToTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTaskAssignedToTaskBoardFormat_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTaskAssignedToTaskBoardFormat_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerbuckettaskboardformat
#>
function Get-MgPlannerBucketTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTaskBoardFormat_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTaskBoardFormat_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerbuckettaskdetail
#>
function Get-MgPlannerBucketTaskDetail {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTaskDetail_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTaskDetail_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerbuckettaskprogresstaskboardformat
#>
function Get-MgPlannerBucketTaskProgressTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTaskProgressTaskBoardFormat_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTaskProgressTaskBoardFormat_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
The collection of tasks in the bucket.
.Description
Read-only.
Nullable.
The collection of tasks in the bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerbuckettask
#>
function Get-MgPlannerBucketTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTask_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTask_GetViaIdentity';
            List = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucketTask_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified buckets
.Description
Read-only.
Nullable.
Returns a collection of the specified buckets

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerbucket
#>
function Get-MgPlannerBucket {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucket_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucket_GetViaIdentity';
            List = 'Microsoft.Graph.Planner.private\Get-MgPlannerBucket_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplanbuckettaskassignedtotaskboardformat
#>
function Get-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplanbuckettaskboardformat
#>
function Get-MgPlannerPlanBucketTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTaskBoardFormat_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTaskBoardFormat_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplanbuckettaskdetail
#>
function Get-MgPlannerPlanBucketTaskDetail {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTaskDetail_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTaskDetail_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplanbuckettaskprogresstaskboardformat
#>
function Get-MgPlannerPlanBucketTaskProgressTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTaskProgressTaskBoardFormat_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTaskProgressTaskBoardFormat_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
The collection of tasks in the bucket.
.Description
Read-only.
Nullable.
The collection of tasks in the bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplanbuckettask
#>
function Get-MgPlannerPlanBucketTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTask_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTask_GetViaIdentity';
            List = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucketTask_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of buckets in the plan.
.Description
Read-only.
Nullable.
Collection of buckets in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplanbucket
#>
function Get-MgPlannerPlanBucket {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucket_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucket_GetViaIdentity';
            List = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanBucket_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the plan.
.Description
Read-only.
Nullable.
Additional details about the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlanDetails
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplandetail
#>
function Get-MgPlannerPlanDetail {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlanDetails])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanDetail_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanDetail_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplantaskassignedtotaskboardformat
#>
function Get-MgPlannerPlanTaskAssignedToTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTaskAssignedToTaskBoardFormat_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTaskAssignedToTaskBoardFormat_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplantaskbuckettaskboardformat
#>
function Get-MgPlannerPlanTaskBucketTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTaskBucketTaskBoardFormat_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTaskBucketTaskBoardFormat_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplantaskdetail
#>
function Get-MgPlannerPlanTaskDetail {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTaskDetail_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTaskDetail_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplantaskprogresstaskboardformat
#>
function Get-MgPlannerPlanTaskProgressTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTaskProgressTaskBoardFormat_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTaskProgressTaskBoardFormat_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of tasks in the plan.
.Description
Read-only.
Nullable.
Collection of tasks in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplantask
#>
function Get-MgPlannerPlanTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTask_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTask_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlanTask_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified plans
.Description
Read-only.
Nullable.
Returns a collection of the specified plans

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannerplan
#>
function Get-MgPlannerPlan {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlan_Get';
            GetViaIdentity = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlan_GetViaIdentity';
            List = 'Microsoft.Graph.Planner.private\Get-MgPlannerPlan_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannertaskassignedtotaskboardformat
#>
function Get-MgPlannerTaskAssignedToTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTaskAssignedToTaskBoardFormat_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTaskAssignedToTaskBoardFormat_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannertaskbuckettaskboardformat
#>
function Get-MgPlannerTaskBucketTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTaskBucketTaskBoardFormat_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTaskBucketTaskBoardFormat_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannertaskdetail
#>
function Get-MgPlannerTaskDetail {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTaskDetail_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTaskDetail_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannertaskprogresstaskboardformat
#>
function Get-MgPlannerTaskProgressTaskBoardFormat {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTaskProgressTaskBoardFormat_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTaskProgressTaskBoardFormat_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified tasks
.Description
Read-only.
Nullable.
Returns a collection of the specified tasks

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplannertask
#>
function Get-MgPlannerTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTask_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTask_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Planner.private\Get-MgPlannerTask_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get planner
.Description
Get planner

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlanner1
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mgplanner
#>
function Get-MgPlanner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlanner1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
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
            Get = 'Microsoft.Graph.Planner.private\Get-MgPlanner_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns the plannerTasks assigned to the user.
.Description
Read-only.
Nullable.
Returns the plannerTasks assigned to the user.

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mguserplannerplan
#>
function Get-MgUserPlannerPlan {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan])]
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
            List1 = 'Microsoft.Graph.Planner.private\Get-MgUserPlannerPlan_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns the plannerPlans shared with the user.
.Description
Read-only.
Nullable.
Returns the plannerPlans shared with the user.

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mguserplannertask
#>
function Get-MgUserPlannerTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
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
            List1 = 'Microsoft.Graph.Planner.private\Get-MgUserPlannerTask_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Entry-point to the Planner resource that might exist for a user.
Read-only.
.Description
Entry-point to the Planner resource that might exist for a user.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerUser1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/get-mguserplanner
#>
function Get-MgUserPlanner {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerUser1])]
[CmdletBinding(DefaultParameterSetName='Get2', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Get2 = 'Microsoft.Graph.Planner.private\Get-MgUserPlanner_Get2';
            GetViaIdentity2 = 'Microsoft.Graph.Planner.private\Get-MgUserPlanner_GetViaIdentity2';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of buckets in the plan.
.Description
Read-only.
Nullable.
Collection of buckets in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerBucket>: plannerBucket
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Name <String>]: Name of the bucket.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PlanId <String>]: Plan ID to which the bucket belongs.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
    [Id <String>]: Read-only.
    [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
    [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
      [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
        [(Any) <Object>]: This indicates any property can be added to this object.
      [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
    [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
      [(Any) <Object>]: This indicates any property can be added to this object.
    [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
    [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
    [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
    [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
        [(Any) <Object>]: This indicates any property can be added to this object.
      [Description <String>]: Description of the task
      [PreviewType <String>]: plannerPreviewType
      [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
        [(Any) <Object>]: This indicates any property can be added to this object.
    [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
    [PlanId <String>]: Plan ID to which the task belongs.
    [PreviewType <String>]: plannerPreviewType
    [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
    [ReferenceCount <Int32?>]: Number of external references that exist on the task.
    [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Title <String>]: Title of the task.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

TASKS <IMicrosoftGraphPlannerTask[]>: Read-only. Nullable. The collection of tasks in the bucket.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/new-mggroupplannerplanbucket
#>
function New-MgGroupPlannerPlanBucket {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket]
    # plannerBucket
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
    [System.String]
    # Name of the bucket.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the bucket belongs.
    ${PlanId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask[]]
    # Read-only.
    # Nullable.
    # The collection of tasks in the bucket.
    # To construct, see NOTES section for TASKS properties and create a hash table.
    ${Tasks},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Planner.private\New-MgGroupPlannerPlanBucket_Create';
            CreateExpanded = 'Microsoft.Graph.Planner.private\New-MgGroupPlannerPlanBucket_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Planner.private\New-MgGroupPlannerPlanBucket_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\New-MgGroupPlannerPlanBucket_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of tasks in the plan.
.Description
Read-only.
Nullable.
Collection of tasks in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNEDTOTASKBOARDFORMAT <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

BODYPARAMETER <IMicrosoftGraphPlannerTask>: plannerTask
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.

BUCKETTASKBOARDFORMAT <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

COMPLETEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PROGRESSTASKBOARDFORMAT <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/new-mggroupplannerplantask
#>
function New-MgGroupPlannerPlanTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask]
    # plannerTask
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items with value set to false, representing incomplete items.
    ${ActiveChecklistItemCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAppliedCategories]))]
    [System.Collections.Hashtable]
    # plannerAppliedCategories
    ${AppliedCategories},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
    # To construct, see NOTES section for ASSIGNEDTOTASKBOARDFORMAT properties and create a hash table.
    ${AssignedToTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${AssigneePriority},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignments]))]
    [System.Collections.Hashtable]
    # plannerAssignments
    ${Assignments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Bucket ID to which the task belongs.
    # The bucket needs to be in the plan that the task is in.
    # It is 28 characters long and case-sensitive.
    # Format validation is done on the service.
    ${BucketId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
    # To construct, see NOTES section for BUCKETTASKBOARDFORMAT properties and create a hash table.
    ${BucketTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items that are present on the task.
    ${ChecklistItemCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for COMPLETEDBY properties and create a hash table.
    ${CompletedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the 'percentComplete' of the task is set to '100'.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Thread ID of the conversation on the task.
    # This is the ID of the conversation thread object created in the group.
    ${ConversationThreadId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the task is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task is due.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${DueDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Read-only.
    # Value is true if the details object of the task has a non-empty description and false otherwise.
    ${HasDescription},

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
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Percentage of task completion.
    # When set to 100, the task is considered completed.
    ${PercentComplete},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the task belongs.
    ${PlanId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
    # To construct, see NOTES section for PROGRESSTASKBOARDFORMAT properties and create a hash table.
    ${ProgressTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of external references that exist on the task.
    ${ReferenceCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task starts.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the task.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Planner.private\New-MgGroupPlannerPlanTask_Create';
            CreateExpanded = 'Microsoft.Graph.Planner.private\New-MgGroupPlannerPlanTask_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Planner.private\New-MgGroupPlannerPlanTask_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\New-MgGroupPlannerPlanTask_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
The collection of tasks in the bucket.
.Description
Read-only.
Nullable.
The collection of tasks in the bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNEDTOTASKBOARDFORMAT <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

BODYPARAMETER <IMicrosoftGraphPlannerTask>: plannerTask
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.

BUCKETTASKBOARDFORMAT <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

COMPLETEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PROGRESSTASKBOARDFORMAT <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/new-mgplannerbuckettask
#>
function New-MgPlannerBucketTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask]
    # plannerTask
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items with value set to false, representing incomplete items.
    ${ActiveChecklistItemCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAppliedCategories]))]
    [System.Collections.Hashtable]
    # plannerAppliedCategories
    ${AppliedCategories},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
    # To construct, see NOTES section for ASSIGNEDTOTASKBOARDFORMAT properties and create a hash table.
    ${AssignedToTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${AssigneePriority},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignments]))]
    [System.Collections.Hashtable]
    # plannerAssignments
    ${Assignments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Bucket ID to which the task belongs.
    # The bucket needs to be in the plan that the task is in.
    # It is 28 characters long and case-sensitive.
    # Format validation is done on the service.
    ${BucketId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
    # To construct, see NOTES section for BUCKETTASKBOARDFORMAT properties and create a hash table.
    ${BucketTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items that are present on the task.
    ${ChecklistItemCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for COMPLETEDBY properties and create a hash table.
    ${CompletedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the 'percentComplete' of the task is set to '100'.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Thread ID of the conversation on the task.
    # This is the ID of the conversation thread object created in the group.
    ${ConversationThreadId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the task is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task is due.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${DueDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Read-only.
    # Value is true if the details object of the task has a non-empty description and false otherwise.
    ${HasDescription},

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
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Percentage of task completion.
    # When set to 100, the task is considered completed.
    ${PercentComplete},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the task belongs.
    ${PlanId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
    # To construct, see NOTES section for PROGRESSTASKBOARDFORMAT properties and create a hash table.
    ${ProgressTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of external references that exist on the task.
    ${ReferenceCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task starts.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the task.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Planner.private\New-MgPlannerBucketTask_Create';
            CreateExpanded = 'Microsoft.Graph.Planner.private\New-MgPlannerBucketTask_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Planner.private\New-MgPlannerBucketTask_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\New-MgPlannerBucketTask_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified buckets
.Description
Read-only.
Nullable.
Returns a collection of the specified buckets

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerBucket>: plannerBucket
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Name <String>]: Name of the bucket.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PlanId <String>]: Plan ID to which the bucket belongs.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
    [Id <String>]: Read-only.
    [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
    [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
      [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
        [(Any) <Object>]: This indicates any property can be added to this object.
      [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
    [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
      [(Any) <Object>]: This indicates any property can be added to this object.
    [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
    [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
    [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
    [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
        [(Any) <Object>]: This indicates any property can be added to this object.
      [Description <String>]: Description of the task
      [PreviewType <String>]: plannerPreviewType
      [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
        [(Any) <Object>]: This indicates any property can be added to this object.
    [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
    [PlanId <String>]: Plan ID to which the task belongs.
    [PreviewType <String>]: plannerPreviewType
    [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
    [ReferenceCount <Int32?>]: Number of external references that exist on the task.
    [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Title <String>]: Title of the task.

TASKS <IMicrosoftGraphPlannerTask[]>: Read-only. Nullable. The collection of tasks in the bucket.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/new-mgplannerbucket
#>
function New-MgPlannerBucket {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket]
    # plannerBucket
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
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name of the bucket.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the bucket belongs.
    ${PlanId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask[]]
    # Read-only.
    # Nullable.
    # The collection of tasks in the bucket.
    # To construct, see NOTES section for TASKS properties and create a hash table.
    ${Tasks},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Planner.private\New-MgPlannerBucket_Create';
            CreateExpanded = 'Microsoft.Graph.Planner.private\New-MgPlannerBucket_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
The collection of tasks in the bucket.
.Description
Read-only.
Nullable.
The collection of tasks in the bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNEDTOTASKBOARDFORMAT <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

BODYPARAMETER <IMicrosoftGraphPlannerTask>: plannerTask
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.

BUCKETTASKBOARDFORMAT <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

COMPLETEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PROGRESSTASKBOARDFORMAT <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/new-mgplannerplanbuckettask
#>
function New-MgPlannerPlanBucketTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask]
    # plannerTask
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items with value set to false, representing incomplete items.
    ${ActiveChecklistItemCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAppliedCategories]))]
    [System.Collections.Hashtable]
    # plannerAppliedCategories
    ${AppliedCategories},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
    # To construct, see NOTES section for ASSIGNEDTOTASKBOARDFORMAT properties and create a hash table.
    ${AssignedToTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${AssigneePriority},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignments]))]
    [System.Collections.Hashtable]
    # plannerAssignments
    ${Assignments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Bucket ID to which the task belongs.
    # The bucket needs to be in the plan that the task is in.
    # It is 28 characters long and case-sensitive.
    # Format validation is done on the service.
    ${BucketId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
    # To construct, see NOTES section for BUCKETTASKBOARDFORMAT properties and create a hash table.
    ${BucketTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items that are present on the task.
    ${ChecklistItemCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for COMPLETEDBY properties and create a hash table.
    ${CompletedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the 'percentComplete' of the task is set to '100'.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Thread ID of the conversation on the task.
    # This is the ID of the conversation thread object created in the group.
    ${ConversationThreadId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the task is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task is due.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${DueDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Read-only.
    # Value is true if the details object of the task has a non-empty description and false otherwise.
    ${HasDescription},

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
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Percentage of task completion.
    # When set to 100, the task is considered completed.
    ${PercentComplete},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the task belongs.
    ${PlanId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
    # To construct, see NOTES section for PROGRESSTASKBOARDFORMAT properties and create a hash table.
    ${ProgressTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of external references that exist on the task.
    ${ReferenceCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task starts.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the task.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanBucketTask_Create';
            CreateExpanded = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanBucketTask_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanBucketTask_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanBucketTask_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of buckets in the plan.
.Description
Read-only.
Nullable.
Collection of buckets in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerBucket>: plannerBucket
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Name <String>]: Name of the bucket.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PlanId <String>]: Plan ID to which the bucket belongs.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
    [Id <String>]: Read-only.
    [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
    [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
      [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
        [(Any) <Object>]: This indicates any property can be added to this object.
      [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
    [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
      [(Any) <Object>]: This indicates any property can be added to this object.
    [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
    [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
    [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
    [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
        [(Any) <Object>]: This indicates any property can be added to this object.
      [Description <String>]: Description of the task
      [PreviewType <String>]: plannerPreviewType
      [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
        [(Any) <Object>]: This indicates any property can be added to this object.
    [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
    [PlanId <String>]: Plan ID to which the task belongs.
    [PreviewType <String>]: plannerPreviewType
    [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
    [ReferenceCount <Int32?>]: Number of external references that exist on the task.
    [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Title <String>]: Title of the task.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

TASKS <IMicrosoftGraphPlannerTask[]>: Read-only. Nullable. The collection of tasks in the bucket.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/new-mgplannerplanbucket
#>
function New-MgPlannerPlanBucket {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket]
    # plannerBucket
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
    [System.String]
    # Name of the bucket.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the bucket belongs.
    ${PlanId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask[]]
    # Read-only.
    # Nullable.
    # The collection of tasks in the bucket.
    # To construct, see NOTES section for TASKS properties and create a hash table.
    ${Tasks},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanBucket_Create';
            CreateExpanded = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanBucket_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanBucket_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanBucket_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of tasks in the plan.
.Description
Read-only.
Nullable.
Collection of tasks in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNEDTOTASKBOARDFORMAT <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

BODYPARAMETER <IMicrosoftGraphPlannerTask>: plannerTask
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.

BUCKETTASKBOARDFORMAT <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

COMPLETEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PROGRESSTASKBOARDFORMAT <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/new-mgplannerplantask
#>
function New-MgPlannerPlanTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask]
    # plannerTask
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items with value set to false, representing incomplete items.
    ${ActiveChecklistItemCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAppliedCategories]))]
    [System.Collections.Hashtable]
    # plannerAppliedCategories
    ${AppliedCategories},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
    # To construct, see NOTES section for ASSIGNEDTOTASKBOARDFORMAT properties and create a hash table.
    ${AssignedToTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${AssigneePriority},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignments]))]
    [System.Collections.Hashtable]
    # plannerAssignments
    ${Assignments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Bucket ID to which the task belongs.
    # The bucket needs to be in the plan that the task is in.
    # It is 28 characters long and case-sensitive.
    # Format validation is done on the service.
    ${BucketId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
    # To construct, see NOTES section for BUCKETTASKBOARDFORMAT properties and create a hash table.
    ${BucketTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items that are present on the task.
    ${ChecklistItemCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for COMPLETEDBY properties and create a hash table.
    ${CompletedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the 'percentComplete' of the task is set to '100'.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Thread ID of the conversation on the task.
    # This is the ID of the conversation thread object created in the group.
    ${ConversationThreadId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the task is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task is due.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${DueDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Read-only.
    # Value is true if the details object of the task has a non-empty description and false otherwise.
    ${HasDescription},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Percentage of task completion.
    # When set to 100, the task is considered completed.
    ${PercentComplete},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the task belongs.
    ${PlanId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
    # To construct, see NOTES section for PROGRESSTASKBOARDFORMAT properties and create a hash table.
    ${ProgressTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of external references that exist on the task.
    ${ReferenceCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task starts.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the task.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanTask_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanTask_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanTask_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\New-MgPlannerPlanTask_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified plans
.Description
Read-only.
Nullable.
Returns a collection of the specified plans

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerPlan>: plannerPlan
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Buckets <IMicrosoftGraphPlannerBucket[]>]: Read-only. Nullable. Collection of buckets in the plan.
    [Id <String>]: Read-only.
    [Name <String>]: Name of the bucket.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PlanId <String>]: Plan ID to which the bucket belongs.
    [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
      [Id <String>]: Read-only.
      [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
      [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
        [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
          [(Any) <Object>]: This indicates any property can be added to this object.
        [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
      [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
        [(Any) <Object>]: This indicates any property can be added to this object.
      [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
      [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
      [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
      [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
      [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
          [(Any) <Object>]: This indicates any property can be added to this object.
        [Description <String>]: Description of the task
        [PreviewType <String>]: plannerPreviewType
        [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
          [(Any) <Object>]: This indicates any property can be added to this object.
      [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
      [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
      [PlanId <String>]: Plan ID to which the task belongs.
      [PreviewType <String>]: plannerPreviewType
      [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
      [ReferenceCount <Int32?>]: Number of external references that exist on the task.
      [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Title <String>]: Title of the task.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerPlanDetails>]: plannerPlanDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Category1 <String>]: The label associated with Category 1
      [Category2 <String>]: The label associated with Category 2
      [Category3 <String>]: The label associated with Category 3
      [Category4 <String>]: The label associated with Category 4
      [Category5 <String>]: The label associated with Category 5
      [Category6 <String>]: The label associated with Category 6
    [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
      [(Any) <Object>]: This indicates any property can be added to this object.
  [Owner <String>]: ID of the Group that owns the plan. A valid group must exist before this field can be set. After it is set, this property can’t be updated.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. Collection of tasks in the plan.
  [Title <String>]: Required. Title of the plan.

BUCKETS <IMicrosoftGraphPlannerBucket[]>: Read-only. Nullable. Collection of buckets in the plan.
  [Id <String>]: Read-only.
  [Name <String>]: Name of the bucket.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PlanId <String>]: Plan ID to which the bucket belongs.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
    [Id <String>]: Read-only.
    [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
    [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
      [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
        [(Any) <Object>]: This indicates any property can be added to this object.
      [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
    [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
      [(Any) <Object>]: This indicates any property can be added to this object.
    [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
    [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
    [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
    [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
        [(Any) <Object>]: This indicates any property can be added to this object.
      [Description <String>]: Description of the task
      [PreviewType <String>]: plannerPreviewType
      [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
        [(Any) <Object>]: This indicates any property can be added to this object.
    [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
    [PlanId <String>]: Plan ID to which the task belongs.
    [PreviewType <String>]: plannerPreviewType
    [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
    [ReferenceCount <Int32?>]: Number of external references that exist on the task.
    [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Title <String>]: Title of the task.

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerPlanDetails>: plannerPlanDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Category1 <String>]: The label associated with Category 1
    [Category2 <String>]: The label associated with Category 2
    [Category3 <String>]: The label associated with Category 3
    [Category4 <String>]: The label associated with Category 4
    [Category5 <String>]: The label associated with Category 5
    [Category6 <String>]: The label associated with Category 6
  [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
    [(Any) <Object>]: This indicates any property can be added to this object.

TASKS <IMicrosoftGraphPlannerTask[]>: Read-only. Nullable. Collection of tasks in the plan.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/new-mgplannerplan
#>
function New-MgPlannerPlan {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan]
    # plannerPlan
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket[]]
    # Read-only.
    # Nullable.
    # Collection of buckets in the plan.
    # To construct, see NOTES section for BUCKETS properties and create a hash table.
    ${Buckets},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the plan is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlanDetails]
    # plannerPlanDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # ID of the Group that owns the plan.
    # A valid group must exist before this field can be set.
    # After it is set, this property can’t be updated.
    ${Owner},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask[]]
    # Read-only.
    # Nullable.
    # Collection of tasks in the plan.
    # To construct, see NOTES section for TASKS properties and create a hash table.
    ${Tasks},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # Title of the plan.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Planner.private\New-MgPlannerPlan_Create';
            CreateExpanded = 'Microsoft.Graph.Planner.private\New-MgPlannerPlan_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified tasks
.Description
Read-only.
Nullable.
Returns a collection of the specified tasks

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNEDTOTASKBOARDFORMAT <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

BODYPARAMETER <IMicrosoftGraphPlannerTask>: plannerTask
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.

BUCKETTASKBOARDFORMAT <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

COMPLETEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

PROGRESSTASKBOARDFORMAT <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/new-mgplannertask
#>
function New-MgPlannerTask {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask]
    # plannerTask
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items with value set to false, representing incomplete items.
    ${ActiveChecklistItemCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAppliedCategories]))]
    [System.Collections.Hashtable]
    # plannerAppliedCategories
    ${AppliedCategories},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
    # To construct, see NOTES section for ASSIGNEDTOTASKBOARDFORMAT properties and create a hash table.
    ${AssignedToTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${AssigneePriority},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignments]))]
    [System.Collections.Hashtable]
    # plannerAssignments
    ${Assignments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Bucket ID to which the task belongs.
    # The bucket needs to be in the plan that the task is in.
    # It is 28 characters long and case-sensitive.
    # Format validation is done on the service.
    ${BucketId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
    # To construct, see NOTES section for BUCKETTASKBOARDFORMAT properties and create a hash table.
    ${BucketTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items that are present on the task.
    ${ChecklistItemCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for COMPLETEDBY properties and create a hash table.
    ${CompletedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the 'percentComplete' of the task is set to '100'.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Thread ID of the conversation on the task.
    # This is the ID of the conversation thread object created in the group.
    ${ConversationThreadId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the task is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task is due.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${DueDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Read-only.
    # Value is true if the details object of the task has a non-empty description and false otherwise.
    ${HasDescription},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Percentage of task completion.
    # When set to 100, the task is considered completed.
    ${PercentComplete},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the task belongs.
    ${PlanId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
    # To construct, see NOTES section for PROGRESSTASKBOARDFORMAT properties and create a hash table.
    ${ProgressTaskBoardFormat},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of external references that exist on the task.
    ${ReferenceCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task starts.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the task.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.Planner.private\New-MgPlannerTask_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Planner.private\New-MgPlannerTask_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of buckets in the plan.
.Description
Read-only.
Nullable.
Collection of buckets in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mggroupplannerplanbucket
#>
function Remove-MgGroupPlannerPlanBucket {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgGroupPlannerPlanBucket_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgGroupPlannerPlanBucket_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the plan.
.Description
Read-only.
Nullable.
Additional details about the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mggroupplannerplandetail
#>
function Remove-MgGroupPlannerPlanDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgGroupPlannerPlanDetail_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgGroupPlannerPlanDetail_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of tasks in the plan.
.Description
Read-only.
Nullable.
Collection of tasks in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mggroupplannerplantask
#>
function Remove-MgGroupPlannerPlanTask {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgGroupPlannerPlanTask_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgGroupPlannerPlanTask_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerbuckettaskassignedtotaskboardformat
#>
function Remove-MgPlannerBucketTaskAssignedToTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucketTaskAssignedToTaskBoardFormat_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucketTaskAssignedToTaskBoardFormat_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerbuckettaskboardformat
#>
function Remove-MgPlannerBucketTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucketTaskBoardFormat_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucketTaskBoardFormat_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerbuckettaskdetail
#>
function Remove-MgPlannerBucketTaskDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucketTaskDetail_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucketTaskDetail_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerbuckettaskprogresstaskboardformat
#>
function Remove-MgPlannerBucketTaskProgressTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucketTaskProgressTaskBoardFormat_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucketTaskProgressTaskBoardFormat_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
The collection of tasks in the bucket.
.Description
Read-only.
Nullable.
The collection of tasks in the bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerbuckettask
#>
function Remove-MgPlannerBucketTask {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucketTask_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucketTask_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified buckets
.Description
Read-only.
Nullable.
Returns a collection of the specified buckets

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerbucket
#>
function Remove-MgPlannerBucket {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucket_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerBucket_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplanbuckettaskassignedtotaskboardformat
#>
function Remove-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplanbuckettaskboardformat
#>
function Remove-MgPlannerPlanBucketTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucketTaskBoardFormat_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucketTaskBoardFormat_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplanbuckettaskdetail
#>
function Remove-MgPlannerPlanBucketTaskDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucketTaskDetail_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucketTaskDetail_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplanbuckettaskprogresstaskboardformat
#>
function Remove-MgPlannerPlanBucketTaskProgressTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucketTaskProgressTaskBoardFormat_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucketTaskProgressTaskBoardFormat_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
The collection of tasks in the bucket.
.Description
Read-only.
Nullable.
The collection of tasks in the bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplanbuckettask
#>
function Remove-MgPlannerPlanBucketTask {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucketTask_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucketTask_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of buckets in the plan.
.Description
Read-only.
Nullable.
Collection of buckets in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplanbucket
#>
function Remove-MgPlannerPlanBucket {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucket_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanBucket_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the plan.
.Description
Read-only.
Nullable.
Additional details about the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplandetail
#>
function Remove-MgPlannerPlanDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanDetail_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanDetail_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplantaskassignedtotaskboardformat
#>
function Remove-MgPlannerPlanTaskAssignedToTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanTaskAssignedToTaskBoardFormat_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanTaskAssignedToTaskBoardFormat_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplantaskbuckettaskboardformat
#>
function Remove-MgPlannerPlanTaskBucketTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanTaskBucketTaskBoardFormat_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanTaskBucketTaskBoardFormat_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplantaskdetail
#>
function Remove-MgPlannerPlanTaskDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanTaskDetail_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanTaskDetail_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplantaskprogresstaskboardformat
#>
function Remove-MgPlannerPlanTaskProgressTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanTaskProgressTaskBoardFormat_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanTaskProgressTaskBoardFormat_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of tasks in the plan.
.Description
Read-only.
Nullable.
Collection of tasks in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplantask
#>
function Remove-MgPlannerPlanTask {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanTask_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlanTask_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified plans
.Description
Read-only.
Nullable.
Returns a collection of the specified plans

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannerplan
#>
function Remove-MgPlannerPlan {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlan_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Planner.private\Remove-MgPlannerPlan_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannertaskassignedtotaskboardformat
#>
function Remove-MgPlannerTaskAssignedToTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerTaskAssignedToTaskBoardFormat_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerTaskAssignedToTaskBoardFormat_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannertaskbuckettaskboardformat
#>
function Remove-MgPlannerTaskBucketTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerTaskBucketTaskBoardFormat_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerTaskBucketTaskBoardFormat_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannertaskdetail
#>
function Remove-MgPlannerTaskDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerTaskDetail_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerTaskDetail_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannertaskprogresstaskboardformat
#>
function Remove-MgPlannerTaskProgressTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerTaskProgressTaskBoardFormat_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerTaskProgressTaskBoardFormat_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified tasks
.Description
Read-only.
Nullable.
Returns a collection of the specified tasks

.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/remove-mgplannertask
#>
function Remove-MgPlannerTask {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
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
            Delete1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerTask_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Planner.private\Remove-MgPlannerTask_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of buckets in the plan.
.Description
Read-only.
Nullable.
Collection of buckets in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerBucket>: plannerBucket
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Name <String>]: Name of the bucket.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PlanId <String>]: Plan ID to which the bucket belongs.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
    [Id <String>]: Read-only.
    [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
    [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
      [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
        [(Any) <Object>]: This indicates any property can be added to this object.
      [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
    [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
      [(Any) <Object>]: This indicates any property can be added to this object.
    [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
    [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
    [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
    [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
        [(Any) <Object>]: This indicates any property can be added to this object.
      [Description <String>]: Description of the task
      [PreviewType <String>]: plannerPreviewType
      [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
        [(Any) <Object>]: This indicates any property can be added to this object.
    [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
    [PlanId <String>]: Plan ID to which the task belongs.
    [PreviewType <String>]: plannerPreviewType
    [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
    [ReferenceCount <Int32?>]: Number of external references that exist on the task.
    [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Title <String>]: Title of the task.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

TASKS <IMicrosoftGraphPlannerTask[]>: Read-only. Nullable. The collection of tasks in the bucket.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mggroupplannerplanbucket
#>
function Update-MgGroupPlannerPlanBucket {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket]
    # plannerBucket
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
    [System.String]
    # Name of the bucket.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the bucket belongs.
    ${PlanId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask[]]
    # Read-only.
    # Nullable.
    # The collection of tasks in the bucket.
    # To construct, see NOTES section for TASKS properties and create a hash table.
    ${Tasks},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanBucket_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanBucket_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanBucket_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanBucket_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the plan.
.Description
Read-only.
Nullable.
Additional details about the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlanDetails
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerPlanDetails>: plannerPlanDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Category1 <String>]: The label associated with Category 1
    [Category2 <String>]: The label associated with Category 2
    [Category3 <String>]: The label associated with Category 3
    [Category4 <String>]: The label associated with Category 4
    [Category5 <String>]: The label associated with Category 5
    [Category6 <String>]: The label associated with Category 6
  [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
    [(Any) <Object>]: This indicates any property can be added to this object.

CATEGORYDESCRIPTIONS <IMicrosoftGraphPlannerCategoryDescriptions>: plannerCategoryDescriptions
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Category1 <String>]: The label associated with Category 1
  [Category2 <String>]: The label associated with Category 2
  [Category3 <String>]: The label associated with Category 3
  [Category4 <String>]: The label associated with Category 4
  [Category5 <String>]: The label associated with Category 5
  [Category6 <String>]: The label associated with Category 6

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mggroupplannerplandetail
#>
function Update-MgGroupPlannerPlanDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlanDetails]
    # plannerPlanDetails
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerCategoryDescriptions]
    # plannerCategoryDescriptions
    # To construct, see NOTES section for CATEGORYDESCRIPTIONS properties and create a hash table.
    ${CategoryDescriptions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerUserIds]))]
    [System.Collections.Hashtable]
    # plannerUserIds
    ${SharedWith},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanDetail_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanDetail_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanDetail_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanDetail_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of tasks in the plan.
.Description
Read-only.
Nullable.
Collection of tasks in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNEDTOTASKBOARDFORMAT <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

BODYPARAMETER <IMicrosoftGraphPlannerTask>: plannerTask
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.

BUCKETTASKBOARDFORMAT <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

COMPLETEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PROGRESSTASKBOARDFORMAT <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mggroupplannerplantask
#>
function Update-MgGroupPlannerPlanTask {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask]
    # plannerTask
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items with value set to false, representing incomplete items.
    ${ActiveChecklistItemCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAppliedCategories]))]
    [System.Collections.Hashtable]
    # plannerAppliedCategories
    ${AppliedCategories},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
    # To construct, see NOTES section for ASSIGNEDTOTASKBOARDFORMAT properties and create a hash table.
    ${AssignedToTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${AssigneePriority},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignments]))]
    [System.Collections.Hashtable]
    # plannerAssignments
    ${Assignments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Bucket ID to which the task belongs.
    # The bucket needs to be in the plan that the task is in.
    # It is 28 characters long and case-sensitive.
    # Format validation is done on the service.
    ${BucketId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
    # To construct, see NOTES section for BUCKETTASKBOARDFORMAT properties and create a hash table.
    ${BucketTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items that are present on the task.
    ${ChecklistItemCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for COMPLETEDBY properties and create a hash table.
    ${CompletedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the 'percentComplete' of the task is set to '100'.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Thread ID of the conversation on the task.
    # This is the ID of the conversation thread object created in the group.
    ${ConversationThreadId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the task is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task is due.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${DueDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Read-only.
    # Value is true if the details object of the task has a non-empty description and false otherwise.
    ${HasDescription},

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
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Percentage of task completion.
    # When set to 100, the task is considered completed.
    ${PercentComplete},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the task belongs.
    ${PlanId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
    # To construct, see NOTES section for PROGRESSTASKBOARDFORMAT properties and create a hash table.
    ${ProgressTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of external references that exist on the task.
    ${ReferenceCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task starts.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the task.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanTask_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanTask_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanTask_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgGroupPlannerPlanTask_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Entry-point to Planner resource that might exist for a Unified Group.
.Description
Entry-point to Planner resource that might exist for a Unified Group.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerGroup1
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerGroup1>: plannerGroup
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Plans <IMicrosoftGraphPlannerPlan[]>]: Read-only. Nullable. Returns the plannerPlans owned by the group.
    [Id <String>]: Read-only.
    [Buckets <IMicrosoftGraphPlannerBucket[]>]: Read-only. Nullable. Collection of buckets in the plan.
      [Id <String>]: Read-only.
      [Name <String>]: Name of the bucket.
      [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [PlanId <String>]: Plan ID to which the bucket belongs.
      [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
        [Id <String>]: Read-only.
        [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
        [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
          [(Any) <Object>]: This indicates any property can be added to this object.
        [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Id <String>]: Read-only.
          [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
            [(Any) <Object>]: This indicates any property can be added to this object.
          [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
        [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
        [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
          [(Any) <Object>]: This indicates any property can be added to this object.
        [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
        [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Id <String>]: Read-only.
          [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
        [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
        [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Application <IMicrosoftGraphIdentity>]: identity
            [(Any) <Object>]: This indicates any property can be added to this object.
            [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
            [Id <String>]: Unique identifier for the identity.
          [Device <IMicrosoftGraphIdentity>]: identity
          [User <IMicrosoftGraphIdentity>]: identity
        [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
        [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
        [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Id <String>]: Read-only.
          [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
            [(Any) <Object>]: This indicates any property can be added to this object.
          [Description <String>]: Description of the task
          [PreviewType <String>]: plannerPreviewType
          [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
            [(Any) <Object>]: This indicates any property can be added to this object.
        [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
        [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
        [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
        [PlanId <String>]: Plan ID to which the task belongs.
        [PreviewType <String>]: plannerPreviewType
        [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Id <String>]: Read-only.
          [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
        [ReferenceCount <Int32?>]: Number of external references that exist on the task.
        [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [Title <String>]: Title of the task.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerPlanDetails>]: plannerPlanDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Category1 <String>]: The label associated with Category 1
        [Category2 <String>]: The label associated with Category 2
        [Category3 <String>]: The label associated with Category 3
        [Category4 <String>]: The label associated with Category 4
        [Category5 <String>]: The label associated with Category 5
        [Category6 <String>]: The label associated with Category 6
      [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
        [(Any) <Object>]: This indicates any property can be added to this object.
    [Owner <String>]: ID of the Group that owns the plan. A valid group must exist before this field can be set. After it is set, this property can’t be updated.
    [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. Collection of tasks in the plan.
    [Title <String>]: Required. Title of the plan.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PLANS <IMicrosoftGraphPlannerPlan[]>: Read-only. Nullable. Returns the plannerPlans owned by the group.
  [Id <String>]: Read-only.
  [Buckets <IMicrosoftGraphPlannerBucket[]>]: Read-only. Nullable. Collection of buckets in the plan.
    [Id <String>]: Read-only.
    [Name <String>]: Name of the bucket.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PlanId <String>]: Plan ID to which the bucket belongs.
    [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
      [Id <String>]: Read-only.
      [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
      [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
        [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
          [(Any) <Object>]: This indicates any property can be added to this object.
        [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
      [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
        [(Any) <Object>]: This indicates any property can be added to this object.
      [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
      [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
      [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
      [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
      [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
          [(Any) <Object>]: This indicates any property can be added to this object.
        [Description <String>]: Description of the task
        [PreviewType <String>]: plannerPreviewType
        [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
          [(Any) <Object>]: This indicates any property can be added to this object.
      [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
      [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
      [PlanId <String>]: Plan ID to which the task belongs.
      [PreviewType <String>]: plannerPreviewType
      [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
      [ReferenceCount <Int32?>]: Number of external references that exist on the task.
      [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Title <String>]: Title of the task.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerPlanDetails>]: plannerPlanDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Category1 <String>]: The label associated with Category 1
      [Category2 <String>]: The label associated with Category 2
      [Category3 <String>]: The label associated with Category 3
      [Category4 <String>]: The label associated with Category 4
      [Category5 <String>]: The label associated with Category 5
      [Category6 <String>]: The label associated with Category 6
    [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
      [(Any) <Object>]: This indicates any property can be added to this object.
  [Owner <String>]: ID of the Group that owns the plan. A valid group must exist before this field can be set. After it is set, this property can’t be updated.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. Collection of tasks in the plan.
  [Title <String>]: Required. Title of the plan.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mggroupplanner
#>
function Update-MgGroupPlanner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of group
    ${GroupId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerGroup1]
    # plannerGroup
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan[]]
    # Read-only.
    # Nullable.
    # Returns the plannerPlans owned by the group.
    # To construct, see NOTES section for PLANS properties and create a hash table.
    ${Plans},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgGroupPlanner_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgGroupPlanner_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgGroupPlanner_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgGroupPlanner_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerbuckettaskassignedtotaskboardformat
#>
function Update-MgPlannerBucketTaskAssignedToTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
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
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerOrderHintsByAssignee]))]
    [System.Collections.Hashtable]
    # plannerOrderHintsByAssignee
    ${OrderHintsByAssignee},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to.
    # The format is defined as outlined here.
    ${UnassignedOrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskAssignedToTaskBoardFormat_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskAssignedToTaskBoardFormat_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskAssignedToTaskBoardFormat_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskAssignedToTaskBoardFormat_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerbuckettaskboardformat
#>
function Update-MgPlannerBucketTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
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
    [System.String]
    # Hint used to order tasks in the Bucket view of the Task Board.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskBoardFormat_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskBoardFormat_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskBoardFormat_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskBoardFormat_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerbuckettaskdetail
#>
function Update-MgPlannerBucketTaskDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
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
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerChecklistItems]))]
    [System.Collections.Hashtable]
    # plannerChecklistItems
    ${Checklist},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the task
    ${Description},

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
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerExternalReferences]))]
    [System.Collections.Hashtable]
    # plannerExternalReferences
    ${References},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskDetail_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskDetail_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskDetail_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskDetail_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerbuckettaskprogresstaskboardformat
#>
function Update-MgPlannerBucketTaskProgressTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
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
    [System.String]
    # Hint value used to order the task on the Progress view of the Task Board.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskProgressTaskBoardFormat_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskProgressTaskBoardFormat_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskProgressTaskBoardFormat_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTaskProgressTaskBoardFormat_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
The collection of tasks in the bucket.
.Description
Read-only.
Nullable.
The collection of tasks in the bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNEDTOTASKBOARDFORMAT <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

BODYPARAMETER <IMicrosoftGraphPlannerTask>: plannerTask
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.

BUCKETTASKBOARDFORMAT <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

COMPLETEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PROGRESSTASKBOARDFORMAT <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerbuckettask
#>
function Update-MgPlannerBucketTask {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask]
    # plannerTask
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items with value set to false, representing incomplete items.
    ${ActiveChecklistItemCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAppliedCategories]))]
    [System.Collections.Hashtable]
    # plannerAppliedCategories
    ${AppliedCategories},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
    # To construct, see NOTES section for ASSIGNEDTOTASKBOARDFORMAT properties and create a hash table.
    ${AssignedToTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${AssigneePriority},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignments]))]
    [System.Collections.Hashtable]
    # plannerAssignments
    ${Assignments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Bucket ID to which the task belongs.
    # The bucket needs to be in the plan that the task is in.
    # It is 28 characters long and case-sensitive.
    # Format validation is done on the service.
    ${BucketId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
    # To construct, see NOTES section for BUCKETTASKBOARDFORMAT properties and create a hash table.
    ${BucketTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items that are present on the task.
    ${ChecklistItemCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for COMPLETEDBY properties and create a hash table.
    ${CompletedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the 'percentComplete' of the task is set to '100'.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Thread ID of the conversation on the task.
    # This is the ID of the conversation thread object created in the group.
    ${ConversationThreadId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the task is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task is due.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${DueDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Read-only.
    # Value is true if the details object of the task has a non-empty description and false otherwise.
    ${HasDescription},

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
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Percentage of task completion.
    # When set to 100, the task is considered completed.
    ${PercentComplete},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the task belongs.
    ${PlanId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
    # To construct, see NOTES section for PROGRESSTASKBOARDFORMAT properties and create a hash table.
    ${ProgressTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of external references that exist on the task.
    ${ReferenceCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task starts.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the task.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTask_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTask_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTask_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucketTask_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified buckets
.Description
Read-only.
Nullable.
Returns a collection of the specified buckets

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerBucket>: plannerBucket
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Name <String>]: Name of the bucket.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PlanId <String>]: Plan ID to which the bucket belongs.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
    [Id <String>]: Read-only.
    [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
    [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
      [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
        [(Any) <Object>]: This indicates any property can be added to this object.
      [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
    [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
      [(Any) <Object>]: This indicates any property can be added to this object.
    [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
    [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
    [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
    [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
        [(Any) <Object>]: This indicates any property can be added to this object.
      [Description <String>]: Description of the task
      [PreviewType <String>]: plannerPreviewType
      [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
        [(Any) <Object>]: This indicates any property can be added to this object.
    [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
    [PlanId <String>]: Plan ID to which the task belongs.
    [PreviewType <String>]: plannerPreviewType
    [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
    [ReferenceCount <Int32?>]: Number of external references that exist on the task.
    [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Title <String>]: Title of the task.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

TASKS <IMicrosoftGraphPlannerTask[]>: Read-only. Nullable. The collection of tasks in the bucket.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerbucket
#>
function Update-MgPlannerBucket {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket]
    # plannerBucket
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
    [System.String]
    # Name of the bucket.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the bucket belongs.
    ${PlanId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask[]]
    # Read-only.
    # Nullable.
    # The collection of tasks in the bucket.
    # To construct, see NOTES section for TASKS properties and create a hash table.
    ${Tasks},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucket_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucket_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucket_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerBucket_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplanbuckettaskassignedtotaskboardformat
#>
function Update-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
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
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerOrderHintsByAssignee]))]
    [System.Collections.Hashtable]
    # plannerOrderHintsByAssignee
    ${OrderHintsByAssignee},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to.
    # The format is defined as outlined here.
    ${UnassignedOrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskAssignedToTaskBoardFormat_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplanbuckettaskboardformat
#>
function Update-MgPlannerPlanBucketTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
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
    [System.String]
    # Hint used to order tasks in the Bucket view of the Task Board.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskBoardFormat_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskBoardFormat_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskBoardFormat_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskBoardFormat_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplanbuckettaskdetail
#>
function Update-MgPlannerPlanBucketTaskDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
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
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerChecklistItems]))]
    [System.Collections.Hashtable]
    # plannerChecklistItems
    ${Checklist},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the task
    ${Description},

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
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerExternalReferences]))]
    [System.Collections.Hashtable]
    # plannerExternalReferences
    ${References},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskDetail_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskDetail_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskDetail_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskDetail_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplanbuckettaskprogresstaskboardformat
#>
function Update-MgPlannerPlanBucketTaskProgressTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
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
    [System.String]
    # Hint value used to order the task on the Progress view of the Task Board.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskProgressTaskBoardFormat_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskProgressTaskBoardFormat_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskProgressTaskBoardFormat_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTaskProgressTaskBoardFormat_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
The collection of tasks in the bucket.
.Description
Read-only.
Nullable.
The collection of tasks in the bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNEDTOTASKBOARDFORMAT <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

BODYPARAMETER <IMicrosoftGraphPlannerTask>: plannerTask
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.

BUCKETTASKBOARDFORMAT <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

COMPLETEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PROGRESSTASKBOARDFORMAT <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplanbuckettask
#>
function Update-MgPlannerPlanBucketTask {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask]
    # plannerTask
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items with value set to false, representing incomplete items.
    ${ActiveChecklistItemCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAppliedCategories]))]
    [System.Collections.Hashtable]
    # plannerAppliedCategories
    ${AppliedCategories},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
    # To construct, see NOTES section for ASSIGNEDTOTASKBOARDFORMAT properties and create a hash table.
    ${AssignedToTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${AssigneePriority},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignments]))]
    [System.Collections.Hashtable]
    # plannerAssignments
    ${Assignments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Bucket ID to which the task belongs.
    # The bucket needs to be in the plan that the task is in.
    # It is 28 characters long and case-sensitive.
    # Format validation is done on the service.
    ${BucketId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
    # To construct, see NOTES section for BUCKETTASKBOARDFORMAT properties and create a hash table.
    ${BucketTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items that are present on the task.
    ${ChecklistItemCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for COMPLETEDBY properties and create a hash table.
    ${CompletedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the 'percentComplete' of the task is set to '100'.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Thread ID of the conversation on the task.
    # This is the ID of the conversation thread object created in the group.
    ${ConversationThreadId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the task is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task is due.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${DueDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Read-only.
    # Value is true if the details object of the task has a non-empty description and false otherwise.
    ${HasDescription},

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
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Percentage of task completion.
    # When set to 100, the task is considered completed.
    ${PercentComplete},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the task belongs.
    ${PlanId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
    # To construct, see NOTES section for PROGRESSTASKBOARDFORMAT properties and create a hash table.
    ${ProgressTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of external references that exist on the task.
    ${ReferenceCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task starts.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the task.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTask_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTask_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTask_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucketTask_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of buckets in the plan.
.Description
Read-only.
Nullable.
Collection of buckets in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerBucket>: plannerBucket
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Name <String>]: Name of the bucket.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PlanId <String>]: Plan ID to which the bucket belongs.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
    [Id <String>]: Read-only.
    [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
    [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
      [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
        [(Any) <Object>]: This indicates any property can be added to this object.
      [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
    [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
      [(Any) <Object>]: This indicates any property can be added to this object.
    [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
    [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
    [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
    [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
        [(Any) <Object>]: This indicates any property can be added to this object.
      [Description <String>]: Description of the task
      [PreviewType <String>]: plannerPreviewType
      [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
        [(Any) <Object>]: This indicates any property can be added to this object.
    [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
    [PlanId <String>]: Plan ID to which the task belongs.
    [PreviewType <String>]: plannerPreviewType
    [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
    [ReferenceCount <Int32?>]: Number of external references that exist on the task.
    [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Title <String>]: Title of the task.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

TASKS <IMicrosoftGraphPlannerTask[]>: Read-only. Nullable. The collection of tasks in the bucket.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplanbucket
#>
function Update-MgPlannerPlanBucket {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerBucket
    ${PlannerBucketId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket]
    # plannerBucket
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
    [System.String]
    # Name of the bucket.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the bucket belongs.
    ${PlanId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask[]]
    # Read-only.
    # Nullable.
    # The collection of tasks in the bucket.
    # To construct, see NOTES section for TASKS properties and create a hash table.
    ${Tasks},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucket_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucket_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucket_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanBucket_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the plan.
.Description
Read-only.
Nullable.
Additional details about the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlanDetails
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerPlanDetails>: plannerPlanDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Category1 <String>]: The label associated with Category 1
    [Category2 <String>]: The label associated with Category 2
    [Category3 <String>]: The label associated with Category 3
    [Category4 <String>]: The label associated with Category 4
    [Category5 <String>]: The label associated with Category 5
    [Category6 <String>]: The label associated with Category 6
  [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
    [(Any) <Object>]: This indicates any property can be added to this object.

CATEGORYDESCRIPTIONS <IMicrosoftGraphPlannerCategoryDescriptions>: plannerCategoryDescriptions
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Category1 <String>]: The label associated with Category 1
  [Category2 <String>]: The label associated with Category 2
  [Category3 <String>]: The label associated with Category 3
  [Category4 <String>]: The label associated with Category 4
  [Category5 <String>]: The label associated with Category 5
  [Category6 <String>]: The label associated with Category 6

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplandetail
#>
function Update-MgPlannerPlanDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlanDetails]
    # plannerPlanDetails
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerCategoryDescriptions]
    # plannerCategoryDescriptions
    # To construct, see NOTES section for CATEGORYDESCRIPTIONS properties and create a hash table.
    ${CategoryDescriptions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerUserIds]))]
    [System.Collections.Hashtable]
    # plannerUserIds
    ${SharedWith},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanDetail_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanDetail_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanDetail_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanDetail_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplantaskassignedtotaskboardformat
#>
function Update-MgPlannerPlanTaskAssignedToTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
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
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerOrderHintsByAssignee]))]
    [System.Collections.Hashtable]
    # plannerOrderHintsByAssignee
    ${OrderHintsByAssignee},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to.
    # The format is defined as outlined here.
    ${UnassignedOrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskAssignedToTaskBoardFormat_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskAssignedToTaskBoardFormat_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskAssignedToTaskBoardFormat_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskAssignedToTaskBoardFormat_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplantaskbuckettaskboardformat
#>
function Update-MgPlannerPlanTaskBucketTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
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
    [System.String]
    # Hint used to order tasks in the Bucket view of the Task Board.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskBucketTaskBoardFormat_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskBucketTaskBoardFormat_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskBucketTaskBoardFormat_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskBucketTaskBoardFormat_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplantaskdetail
#>
function Update-MgPlannerPlanTaskDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
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
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerChecklistItems]))]
    [System.Collections.Hashtable]
    # plannerChecklistItems
    ${Checklist},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the task
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
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerExternalReferences]))]
    [System.Collections.Hashtable]
    # plannerExternalReferences
    ${References},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskDetail_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskDetail_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskDetail_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskDetail_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplantaskprogresstaskboardformat
#>
function Update-MgPlannerPlanTaskProgressTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
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
    [System.String]
    # Hint value used to order the task on the Progress view of the Task Board.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskProgressTaskBoardFormat_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskProgressTaskBoardFormat_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskProgressTaskBoardFormat_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTaskProgressTaskBoardFormat_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Collection of tasks in the plan.
.Description
Read-only.
Nullable.
Collection of tasks in the plan.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNEDTOTASKBOARDFORMAT <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

BODYPARAMETER <IMicrosoftGraphPlannerTask>: plannerTask
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.

BUCKETTASKBOARDFORMAT <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

COMPLETEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PROGRESSTASKBOARDFORMAT <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplantask
#>
function Update-MgPlannerPlanTask {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask]
    # plannerTask
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items with value set to false, representing incomplete items.
    ${ActiveChecklistItemCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAppliedCategories]))]
    [System.Collections.Hashtable]
    # plannerAppliedCategories
    ${AppliedCategories},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
    # To construct, see NOTES section for ASSIGNEDTOTASKBOARDFORMAT properties and create a hash table.
    ${AssignedToTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${AssigneePriority},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignments]))]
    [System.Collections.Hashtable]
    # plannerAssignments
    ${Assignments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Bucket ID to which the task belongs.
    # The bucket needs to be in the plan that the task is in.
    # It is 28 characters long and case-sensitive.
    # Format validation is done on the service.
    ${BucketId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
    # To construct, see NOTES section for BUCKETTASKBOARDFORMAT properties and create a hash table.
    ${BucketTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items that are present on the task.
    ${ChecklistItemCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for COMPLETEDBY properties and create a hash table.
    ${CompletedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the 'percentComplete' of the task is set to '100'.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Thread ID of the conversation on the task.
    # This is the ID of the conversation thread object created in the group.
    ${ConversationThreadId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the task is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task is due.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${DueDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Read-only.
    # Value is true if the details object of the task has a non-empty description and false otherwise.
    ${HasDescription},

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
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Percentage of task completion.
    # When set to 100, the task is considered completed.
    ${PercentComplete},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the task belongs.
    ${PlanId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
    # To construct, see NOTES section for PROGRESSTASKBOARDFORMAT properties and create a hash table.
    ${ProgressTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of external references that exist on the task.
    ${ReferenceCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task starts.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the task.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTask_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTask_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTask_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlanTask_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified plans
.Description
Read-only.
Nullable.
Returns a collection of the specified plans

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerPlan>: plannerPlan
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Buckets <IMicrosoftGraphPlannerBucket[]>]: Read-only. Nullable. Collection of buckets in the plan.
    [Id <String>]: Read-only.
    [Name <String>]: Name of the bucket.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PlanId <String>]: Plan ID to which the bucket belongs.
    [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
      [Id <String>]: Read-only.
      [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
      [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
        [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
          [(Any) <Object>]: This indicates any property can be added to this object.
        [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
      [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
        [(Any) <Object>]: This indicates any property can be added to this object.
      [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
      [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
      [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
      [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
      [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
          [(Any) <Object>]: This indicates any property can be added to this object.
        [Description <String>]: Description of the task
        [PreviewType <String>]: plannerPreviewType
        [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
          [(Any) <Object>]: This indicates any property can be added to this object.
      [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
      [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
      [PlanId <String>]: Plan ID to which the task belongs.
      [PreviewType <String>]: plannerPreviewType
      [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
      [ReferenceCount <Int32?>]: Number of external references that exist on the task.
      [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Title <String>]: Title of the task.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerPlanDetails>]: plannerPlanDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Category1 <String>]: The label associated with Category 1
      [Category2 <String>]: The label associated with Category 2
      [Category3 <String>]: The label associated with Category 3
      [Category4 <String>]: The label associated with Category 4
      [Category5 <String>]: The label associated with Category 5
      [Category6 <String>]: The label associated with Category 6
    [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
      [(Any) <Object>]: This indicates any property can be added to this object.
  [Owner <String>]: ID of the Group that owns the plan. A valid group must exist before this field can be set. After it is set, this property can’t be updated.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. Collection of tasks in the plan.
  [Title <String>]: Required. Title of the plan.

BUCKETS <IMicrosoftGraphPlannerBucket[]>: Read-only. Nullable. Collection of buckets in the plan.
  [Id <String>]: Read-only.
  [Name <String>]: Name of the bucket.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PlanId <String>]: Plan ID to which the bucket belongs.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
    [Id <String>]: Read-only.
    [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
    [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
      [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
        [(Any) <Object>]: This indicates any property can be added to this object.
      [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
    [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
      [(Any) <Object>]: This indicates any property can be added to this object.
    [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
    [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
    [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
    [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
        [(Any) <Object>]: This indicates any property can be added to this object.
      [Description <String>]: Description of the task
      [PreviewType <String>]: plannerPreviewType
      [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
        [(Any) <Object>]: This indicates any property can be added to this object.
    [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
    [PlanId <String>]: Plan ID to which the task belongs.
    [PreviewType <String>]: plannerPreviewType
    [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
    [ReferenceCount <Int32?>]: Number of external references that exist on the task.
    [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Title <String>]: Title of the task.

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerPlanDetails>: plannerPlanDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Category1 <String>]: The label associated with Category 1
    [Category2 <String>]: The label associated with Category 2
    [Category3 <String>]: The label associated with Category 3
    [Category4 <String>]: The label associated with Category 4
    [Category5 <String>]: The label associated with Category 5
    [Category6 <String>]: The label associated with Category 6
  [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

TASKS <IMicrosoftGraphPlannerTask[]>: Read-only. Nullable. Collection of tasks in the plan.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannerplan
#>
function Update-MgPlannerPlan {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerPlan
    ${PlannerPlanId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan]
    # plannerPlan
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket[]]
    # Read-only.
    # Nullable.
    # Collection of buckets in the plan.
    # To construct, see NOTES section for BUCKETS properties and create a hash table.
    ${Buckets},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the plan is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlanDetails]
    # plannerPlanDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

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
    # ID of the Group that owns the plan.
    # A valid group must exist before this field can be set.
    # After it is set, this property can’t be updated.
    ${Owner},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask[]]
    # Read-only.
    # Nullable.
    # Collection of tasks in the plan.
    # To construct, see NOTES section for TASKS properties and create a hash table.
    ${Tasks},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # Title of the plan.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlan_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlan_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlan_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlannerPlan_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by assignedTo.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by assignedTo.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannertaskassignedtotaskboardformat
#>
function Update-MgPlannerTaskAssignedToTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
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
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerOrderHintsByAssignee]))]
    [System.Collections.Hashtable]
    # plannerOrderHintsByAssignee
    ${OrderHintsByAssignee},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to.
    # The format is defined as outlined here.
    ${UnassignedOrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskAssignedToTaskBoardFormat_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskAssignedToTaskBoardFormat_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskAssignedToTaskBoardFormat_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskAssignedToTaskBoardFormat_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by bucket.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by bucket.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannertaskbuckettaskboardformat
#>
function Update-MgPlannerTaskBucketTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
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
    [System.String]
    # Hint used to order tasks in the Bucket view of the Task Board.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskBucketTaskBoardFormat_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskBucketTaskBoardFormat_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskBucketTaskBoardFormat_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskBucketTaskBoardFormat_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Additional details about the task.
.Description
Read-only.
Nullable.
Additional details about the task.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannertaskdetail
#>
function Update-MgPlannerTaskDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
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
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerChecklistItems]))]
    [System.Collections.Hashtable]
    # plannerChecklistItems
    ${Checklist},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the task
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
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerExternalReferences]))]
    [System.Collections.Hashtable]
    # plannerExternalReferences
    ${References},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskDetail_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskDetail_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskDetail_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskDetail_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Used to render the task correctly in the task board view when grouped by progress.
.Description
Read-only.
Nullable.
Used to render the task correctly in the task board view when grouped by progress.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannertaskprogresstaskboardformat
#>
function Update-MgPlannerTaskProgressTaskBoardFormat {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
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
    [System.String]
    # Hint value used to order the task on the Progress view of the Task Board.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskProgressTaskBoardFormat_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskProgressTaskBoardFormat_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskProgressTaskBoardFormat_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTaskProgressTaskBoardFormat_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Returns a collection of the specified tasks
.Description
Read-only.
Nullable.
Returns a collection of the specified tasks

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNEDTOTASKBOARDFORMAT <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>: plannerAssignedToTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
    [(Any) <Object>]: This indicates any property can be added to this object.
  [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.

BODYPARAMETER <IMicrosoftGraphPlannerTask>: plannerTask
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.

BUCKETTASKBOARDFORMAT <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>: plannerBucketTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.

COMPLETEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

CREATEDBY <IMicrosoftGraphIdentitySet>: identitySet
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Application <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Device <IMicrosoftGraphIdentity>]: identity
  [User <IMicrosoftGraphIdentity>]: identity

DETAILS <IMicrosoftGraphPlannerTaskDetails>: plannerTaskDetails
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Description of the task
  [PreviewType <String>]: plannerPreviewType
  [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PROGRESSTASKBOARDFORMAT <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>: plannerProgressTaskBoardTaskFormat
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplannertask
#>
function Update-MgPlannerTask {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of plannerTask
    ${PlannerTaskId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask]
    # plannerTask
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items with value set to false, representing incomplete items.
    ${ActiveChecklistItemCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAppliedCategories]))]
    [System.Collections.Hashtable]
    # plannerAppliedCategories
    ${AppliedCategories},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat]
    # plannerAssignedToTaskBoardTaskFormat
    # To construct, see NOTES section for ASSIGNEDTOTASKBOARDFORMAT properties and create a hash table.
    ${AssignedToTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${AssigneePriority},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerAssignments]))]
    [System.Collections.Hashtable]
    # plannerAssignments
    ${Assignments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Bucket ID to which the task belongs.
    # The bucket needs to be in the plan that the task is in.
    # It is 28 characters long and case-sensitive.
    # Format validation is done on the service.
    ${BucketId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucketTaskBoardTaskFormat]
    # plannerBucketTaskBoardTaskFormat
    # To construct, see NOTES section for BUCKETTASKBOARDFORMAT properties and create a hash table.
    ${BucketTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of checklist items that are present on the task.
    ${ChecklistItemCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for COMPLETEDBY properties and create a hash table.
    ${CompletedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the 'percentComplete' of the task is set to '100'.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Thread ID of the conversation on the task.
    # This is the ID of the conversation thread object created in the group.
    ${ConversationThreadId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Read-only.
    # Date and time at which the task is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTaskDetails]
    # plannerTaskDetails
    # To construct, see NOTES section for DETAILS properties and create a hash table.
    ${Details},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task is due.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${DueDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Read-only.
    # Value is true if the details object of the task has a non-empty description and false otherwise.
    ${HasDescription},

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
    # Hint used to order items of this type in a list view.
    # The format is defined as outlined here.
    ${OrderHint},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Percentage of task completion.
    # When set to 100, the task is considered completed.
    ${PercentComplete},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Plan ID to which the task belongs.
    ${PlanId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # plannerPreviewType
    ${PreviewType},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerProgressTaskBoardTaskFormat]
    # plannerProgressTaskBoardTaskFormat
    # To construct, see NOTES section for PROGRESSTASKBOARDFORMAT properties and create a hash table.
    ${ProgressTaskBoardFormat},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Number of external references that exist on the task.
    ${ReferenceCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the task starts.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the task.
    ${Title},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTask_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTask_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTask_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgPlannerTask_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update planner
.Description
Update planner

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlanner1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlanner1>: planner
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Buckets <IMicrosoftGraphPlannerBucket[]>]: Read-only. Nullable. Returns a collection of the specified buckets
    [Id <String>]: Read-only.
    [Name <String>]: Name of the bucket.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PlanId <String>]: Plan ID to which the bucket belongs.
    [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
      [Id <String>]: Read-only.
      [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
      [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
        [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
          [(Any) <Object>]: This indicates any property can be added to this object.
        [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
      [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
        [(Any) <Object>]: This indicates any property can be added to this object.
      [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
      [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
      [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
      [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
      [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
          [(Any) <Object>]: This indicates any property can be added to this object.
        [Description <String>]: Description of the task
        [PreviewType <String>]: plannerPreviewType
        [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
          [(Any) <Object>]: This indicates any property can be added to this object.
      [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
      [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
      [PlanId <String>]: Plan ID to which the task belongs.
      [PreviewType <String>]: plannerPreviewType
      [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
      [ReferenceCount <Int32?>]: Number of external references that exist on the task.
      [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Title <String>]: Title of the task.
  [Plans <IMicrosoftGraphPlannerPlan[]>]: Read-only. Nullable. Returns a collection of the specified plans
    [Id <String>]: Read-only.
    [Buckets <IMicrosoftGraphPlannerBucket[]>]: Read-only. Nullable. Collection of buckets in the plan.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerPlanDetails>]: plannerPlanDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Category1 <String>]: The label associated with Category 1
        [Category2 <String>]: The label associated with Category 2
        [Category3 <String>]: The label associated with Category 3
        [Category4 <String>]: The label associated with Category 4
        [Category5 <String>]: The label associated with Category 5
        [Category6 <String>]: The label associated with Category 6
      [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
        [(Any) <Object>]: This indicates any property can be added to this object.
    [Owner <String>]: ID of the Group that owns the plan. A valid group must exist before this field can be set. After it is set, this property can’t be updated.
    [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. Collection of tasks in the plan.
    [Title <String>]: Required. Title of the plan.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. Returns a collection of the specified tasks

BUCKETS <IMicrosoftGraphPlannerBucket[]>: Read-only. Nullable. Returns a collection of the specified buckets
  [Id <String>]: Read-only.
  [Name <String>]: Name of the bucket.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PlanId <String>]: Plan ID to which the bucket belongs.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
    [Id <String>]: Read-only.
    [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
    [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
      [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
        [(Any) <Object>]: This indicates any property can be added to this object.
      [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
    [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
      [(Any) <Object>]: This indicates any property can be added to this object.
    [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
    [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
    [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
    [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
        [(Any) <Object>]: This indicates any property can be added to this object.
      [Description <String>]: Description of the task
      [PreviewType <String>]: plannerPreviewType
      [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
        [(Any) <Object>]: This indicates any property can be added to this object.
    [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
    [PlanId <String>]: Plan ID to which the task belongs.
    [PreviewType <String>]: plannerPreviewType
    [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
    [ReferenceCount <Int32?>]: Number of external references that exist on the task.
    [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Title <String>]: Title of the task.

PLANS <IMicrosoftGraphPlannerPlan[]>: Read-only. Nullable. Returns a collection of the specified plans
  [Id <String>]: Read-only.
  [Buckets <IMicrosoftGraphPlannerBucket[]>]: Read-only. Nullable. Collection of buckets in the plan.
    [Id <String>]: Read-only.
    [Name <String>]: Name of the bucket.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PlanId <String>]: Plan ID to which the bucket belongs.
    [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
      [Id <String>]: Read-only.
      [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
      [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
        [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
          [(Any) <Object>]: This indicates any property can be added to this object.
        [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
      [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
        [(Any) <Object>]: This indicates any property can be added to this object.
      [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
      [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
      [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
      [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
      [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
          [(Any) <Object>]: This indicates any property can be added to this object.
        [Description <String>]: Description of the task
        [PreviewType <String>]: plannerPreviewType
        [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
          [(Any) <Object>]: This indicates any property can be added to this object.
      [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
      [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
      [PlanId <String>]: Plan ID to which the task belongs.
      [PreviewType <String>]: plannerPreviewType
      [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
      [ReferenceCount <Int32?>]: Number of external references that exist on the task.
      [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Title <String>]: Title of the task.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerPlanDetails>]: plannerPlanDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Category1 <String>]: The label associated with Category 1
      [Category2 <String>]: The label associated with Category 2
      [Category3 <String>]: The label associated with Category 3
      [Category4 <String>]: The label associated with Category 4
      [Category5 <String>]: The label associated with Category 5
      [Category6 <String>]: The label associated with Category 6
    [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
      [(Any) <Object>]: This indicates any property can be added to this object.
  [Owner <String>]: ID of the Group that owns the plan. A valid group must exist before this field can be set. After it is set, this property can’t be updated.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. Collection of tasks in the plan.
  [Title <String>]: Required. Title of the plan.

TASKS <IMicrosoftGraphPlannerTask[]>: Read-only. Nullable. Returns a collection of the specified tasks
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mgplanner
#>
function Update-MgPlanner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlanner1]
    # planner
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerBucket[]]
    # Read-only.
    # Nullable.
    # Returns a collection of the specified buckets
    # To construct, see NOTES section for BUCKETS properties and create a hash table.
    ${Buckets},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan[]]
    # Read-only.
    # Nullable.
    # Returns a collection of the specified plans
    # To construct, see NOTES section for PLANS properties and create a hash table.
    ${Plans},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask[]]
    # Read-only.
    # Nullable.
    # Returns a collection of the specified tasks
    # To construct, see NOTES section for TASKS properties and create a hash table.
    ${Tasks},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Planner.private\Update-MgPlanner_Update';
            UpdateExpanded = 'Microsoft.Graph.Planner.private\Update-MgPlanner_UpdateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Entry-point to the Planner resource that might exist for a user.
Read-only.
.Description
Entry-point to the Planner resource that might exist for a user.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerUser1
.Inputs
Microsoft.Graph.PowerShell.Models.IPlannerIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPlannerUser1>: plannerUser
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Plans <IMicrosoftGraphPlannerPlan[]>]: Read-only. Nullable. Returns the plannerTasks assigned to the user.
    [Id <String>]: Read-only.
    [Buckets <IMicrosoftGraphPlannerBucket[]>]: Read-only. Nullable. Collection of buckets in the plan.
      [Id <String>]: Read-only.
      [Name <String>]: Name of the bucket.
      [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [PlanId <String>]: Plan ID to which the bucket belongs.
      [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
        [Id <String>]: Read-only.
        [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
        [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
          [(Any) <Object>]: This indicates any property can be added to this object.
        [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Id <String>]: Read-only.
          [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
            [(Any) <Object>]: This indicates any property can be added to this object.
          [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
        [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
        [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
          [(Any) <Object>]: This indicates any property can be added to this object.
        [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
        [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Id <String>]: Read-only.
          [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
        [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
        [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Application <IMicrosoftGraphIdentity>]: identity
            [(Any) <Object>]: This indicates any property can be added to this object.
            [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
            [Id <String>]: Unique identifier for the identity.
          [Device <IMicrosoftGraphIdentity>]: identity
          [User <IMicrosoftGraphIdentity>]: identity
        [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
        [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
        [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Id <String>]: Read-only.
          [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
            [(Any) <Object>]: This indicates any property can be added to this object.
          [Description <String>]: Description of the task
          [PreviewType <String>]: plannerPreviewType
          [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
            [(Any) <Object>]: This indicates any property can be added to this object.
        [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
        [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
        [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
        [PlanId <String>]: Plan ID to which the task belongs.
        [PreviewType <String>]: plannerPreviewType
        [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Id <String>]: Read-only.
          [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
        [ReferenceCount <Int32?>]: Number of external references that exist on the task.
        [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [Title <String>]: Title of the task.
    [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Details <IMicrosoftGraphPlannerPlanDetails>]: plannerPlanDetails
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
      [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Category1 <String>]: The label associated with Category 1
        [Category2 <String>]: The label associated with Category 2
        [Category3 <String>]: The label associated with Category 3
        [Category4 <String>]: The label associated with Category 4
        [Category5 <String>]: The label associated with Category 5
        [Category6 <String>]: The label associated with Category 6
      [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
        [(Any) <Object>]: This indicates any property can be added to this object.
    [Owner <String>]: ID of the Group that owns the plan. A valid group must exist before this field can be set. After it is set, this property can’t be updated.
    [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. Collection of tasks in the plan.
    [Title <String>]: Required. Title of the plan.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. Returns the plannerPlans shared with the user.

INPUTOBJECT <IPlannerIdentity>: Identity Parameter
  [GroupId <String>]: key: id of group
  [PlannerBucketId <String>]: key: id of plannerBucket
  [PlannerDeltaId <String>]: key: id of plannerDelta
  [PlannerPlanId <String>]: key: id of plannerPlan
  [PlannerRosterId <String>]: key: id of plannerRoster
  [PlannerRosterMemberId <String>]: key: id of plannerRosterMember
  [PlannerTaskId <String>]: key: id of plannerTask
  [UserId <String>]: key: id of user

PLANS <IMicrosoftGraphPlannerPlan[]>: Read-only. Nullable. Returns the plannerTasks assigned to the user.
  [Id <String>]: Read-only.
  [Buckets <IMicrosoftGraphPlannerBucket[]>]: Read-only. Nullable. Collection of buckets in the plan.
    [Id <String>]: Read-only.
    [Name <String>]: Name of the bucket.
    [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
    [PlanId <String>]: Plan ID to which the bucket belongs.
    [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. The collection of tasks in the bucket.
      [Id <String>]: Read-only.
      [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
      [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
        [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
          [(Any) <Object>]: This indicates any property can be added to this object.
        [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
      [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
        [(Any) <Object>]: This indicates any property can be added to this object.
      [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
      [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
      [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
      [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
      [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
      [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
          [(Any) <Object>]: This indicates any property can be added to this object.
        [Description <String>]: Description of the task
        [PreviewType <String>]: plannerPreviewType
        [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
          [(Any) <Object>]: This indicates any property can be added to this object.
      [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
      [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
      [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
      [PlanId <String>]: Plan ID to which the task belongs.
      [PreviewType <String>]: plannerPreviewType
      [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Id <String>]: Read-only.
        [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
      [ReferenceCount <Int32?>]: Number of external references that exist on the task.
      [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Title <String>]: Title of the task.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerPlanDetails>]: plannerPlanDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [CategoryDescriptions <IMicrosoftGraphPlannerCategoryDescriptions>]: plannerCategoryDescriptions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Category1 <String>]: The label associated with Category 1
      [Category2 <String>]: The label associated with Category 2
      [Category3 <String>]: The label associated with Category 3
      [Category4 <String>]: The label associated with Category 4
      [Category5 <String>]: The label associated with Category 5
      [Category6 <String>]: The label associated with Category 6
    [SharedWith <IMicrosoftGraphPlannerUserIds>]: plannerUserIds
      [(Any) <Object>]: This indicates any property can be added to this object.
  [Owner <String>]: ID of the Group that owns the plan. A valid group must exist before this field can be set. After it is set, this property can’t be updated.
  [Tasks <IMicrosoftGraphPlannerTask[]>]: Read-only. Nullable. Collection of tasks in the plan.
  [Title <String>]: Required. Title of the plan.

TASKS <IMicrosoftGraphPlannerTask[]>: Read-only. Nullable. Returns the plannerPlans shared with the user.
  [Id <String>]: Read-only.
  [ActiveChecklistItemCount <Int32?>]: Number of checklist items with value set to false, representing incomplete items.
  [AppliedCategories <IMicrosoftGraphPlannerAppliedCategories>]: plannerAppliedCategories
    [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignedToTaskBoardFormat <IMicrosoftGraphPlannerAssignedToTaskBoardTaskFormat>]: plannerAssignedToTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHintsByAssignee <IMicrosoftGraphPlannerOrderHintsByAssignee>]: plannerOrderHintsByAssignee
      [(Any) <Object>]: This indicates any property can be added to this object.
    [UnassignedOrderHint <String>]: Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
  [AssigneePriority <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [Assignments <IMicrosoftGraphPlannerAssignments>]: plannerAssignments
    [(Any) <Object>]: This indicates any property can be added to this object.
  [BucketId <String>]: Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
  [BucketTaskBoardFormat <IMicrosoftGraphPlannerBucketTaskBoardTaskFormat>]: plannerBucketTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint used to order tasks in the Bucket view of the Task Board. The format is defined as outlined here.
  [ChecklistItemCount <Int32?>]: Number of checklist items that are present on the task.
  [CompletedBy <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [CompletedDateTime <DateTime?>]: Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ConversationThreadId <String>]: Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
  [CreatedBy <IMicrosoftGraphIdentitySet>]: identitySet
  [CreatedDateTime <DateTime?>]: Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Details <IMicrosoftGraphPlannerTaskDetails>]: plannerTaskDetails
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [Checklist <IMicrosoftGraphPlannerChecklistItems>]: plannerChecklistItems
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Description <String>]: Description of the task
    [PreviewType <String>]: plannerPreviewType
    [References <IMicrosoftGraphPlannerExternalReferences>]: plannerExternalReferences
      [(Any) <Object>]: This indicates any property can be added to this object.
  [DueDateTime <DateTime?>]: Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [HasDescription <Boolean?>]: Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
  [OrderHint <String>]: Hint used to order items of this type in a list view. The format is defined as outlined here.
  [PercentComplete <Int32?>]: Percentage of task completion. When set to 100, the task is considered completed.
  [PlanId <String>]: Plan ID to which the task belongs.
  [PreviewType <String>]: plannerPreviewType
  [ProgressTaskBoardFormat <IMicrosoftGraphPlannerProgressTaskBoardTaskFormat>]: plannerProgressTaskBoardTaskFormat
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [OrderHint <String>]: Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined here.
  [ReferenceCount <Int32?>]: Number of external references that exist on the task.
  [StartDateTime <DateTime?>]: Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Title <String>]: Title of the task.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.planner/update-mguserplanner
#>
function Update-MgUserPlanner {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IPlannerIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerUser1]
    # plannerUser
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerPlan[]]
    # Read-only.
    # Nullable.
    # Returns the plannerTasks assigned to the user.
    # To construct, see NOTES section for PLANS properties and create a hash table.
    ${Plans},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerTask[]]
    # Read-only.
    # Nullable.
    # Returns the plannerPlans shared with the user.
    # To construct, see NOTES section for TASKS properties and create a hash table.
    ${Tasks},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Planner.private\Update-MgUserPlanner_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgUserPlanner_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Planner.private\Update-MgUserPlanner_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Planner.private\Update-MgUserPlanner_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDKKqfvKS+ekDh6
# SfBsZjIeHjZweS89vzRBmLtRDZ1s4qCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgP0k8tcG7
# SyIQitECEcqoTfmC0PXJ7xZRJ5FCLVLN6aYwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBMAh4cqlZ5/1xWpsp/psPoaXx1fKpjjK2X13JvfL6c
# JUajps0ElXHyJ/OLctXDykYhtzyLKPir8eQOBk7Nn9+dmt4FGsaeq0B1OIsqh0/k
# Uwsr6uRoZ30bRZaf9NVLyaXWmeN8IaBifZ+NfZOi3SVPMmIAOdQYL+MvT2rLwOCj
# nrnY3O8zjv4L1f14Gomyy32hJtxNtBDmYy/A0RxvnWjbs4MnK5eIYcrR0mDEjoD9
# FkrYJGfnSW55/GsjlhdgUcDN6vbo/xEhpP0bd4TokKWL+MV2RMIBxpPVuebTv0k9
# Go1sgBVDtOt8ZPMVHq0NOMGTXDQZt4mxeefAESgLKS3BoYIS/jCCEvoGCisGAQQB
# gjcDAwExghLqMIIS5gYJKoZIhvcNAQcCoIIS1zCCEtMCAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIHik1yCRV3yiqes6FK5Y48IVVBuHeMcgz+bUmZRd
# NCCoAgZhcIeMkWUYEzIwMjExMDI3MDcxMTI0LjM2N1owBIACAfSggdikgdUwgdIx
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
# AQQwLwYJKoZIhvcNAQkEMSIEIPa2FGtc7prAo7bgHJS8csdEIxCm3lYLV0AoxnDe
# RGfuMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgn6/QhAepLF/7Bdsvfu8G
# OT+ihL9c4cgo5Nf1aUN8tG0wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAATqNjTH3d0lJwgAAAAABOjAiBCCad1sT4fODZN4IPSh9v6at
# bbtTBV3axXkL6x81mXZBgDANBgkqhkiG9w0BAQsFAASCAQC+D+ABENwHKB6n7Mds
# AkVP7wkWWyAB8OE0r+Ay1pEmD6YDCvgAzCm3FEC7Y9JWiWF7C9OCtt/15ZS73I3D
# PERz2Vhq8GT3S6NNzFx9sKNbr5Xh3JgcKICQbU2ftbST0bBIX/Ja3g3nBU1Wt49r
# MxsgnTQswtfAPVu7jW03KNiYSqLxRkpnuKiHxTQNfx5vQOvLyFnUIuogJhAda/d0
# qld5jcb1KYlEDb/a1vTenBoxulmICy5OgsLXSlAqVvV6nGiM7nmyEq7iDQ6tvxkJ
# x9X+skB/2m6JrEvGPa4aIACeY0HxA9vj2oitcHegbtsN6Z53FEoyvL6dmyDG439I
# n6uk
# SIG # End signature block
