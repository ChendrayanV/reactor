
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get securityActions from security
.Description
Get securityActions from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityAction
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecurityaction
#>
function Get-MgSecurityAction {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityAction])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of securityAction
    ${SecurityActionId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityAction_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityAction_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityAction_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecurityalert
#>
function Get-MgSecurityAlert {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of alert
    ${AlertId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityAlert_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityAlert_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityAlert_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Represent attack simulation and training campaign of a tenant.
.Description
Represent attack simulation and training campaign of a tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttackSimulationRoot
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSimulation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecurityattacksimulation
#>
function Get-MgSecurityAttackSimulation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSimulation], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttackSimulationRoot])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of simulation
    ${SimulationId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityAttackSimulation_Get';
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityAttackSimulation_Get1';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityAttackSimulation_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityAttackSimulation_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get cloudAppSecurityProfiles from security
.Description
Get cloudAppSecurityProfiles from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycloudappsecurityprofile
#>
function Get-MgSecurityCloudAppSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of cloudAppSecurityProfile
    ${CloudAppSecurityProfileId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCloudAppSecurityProfile_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCloudAppSecurityProfile_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityCloudAppSecurityProfile_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get domainSecurityProfiles from security
.Description
Get domainSecurityProfiles from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDomainSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritydomainsecurityprofile
#>
function Get-MgSecurityDomainSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDomainSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of domainSecurityProfile
    ${DomainSecurityProfileId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityDomainSecurityProfile_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityDomainSecurityProfile_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityDomainSecurityProfile_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get fileSecurityProfiles from security
.Description
Get fileSecurityProfiles from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecurityfilesecurityprofile
#>
function Get-MgSecurityFileSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of fileSecurityProfile
    ${FileSecurityProfileId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityFileSecurityProfile_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityFileSecurityProfile_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityFileSecurityProfile_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get hostSecurityProfiles from security
.Description
Get hostSecurityProfiles from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecurityhostsecurityprofile
#>
function Get-MgSecurityHostSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of hostSecurityProfile
    ${HostSecurityProfileId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityHostSecurityProfile_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityHostSecurityProfile_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityHostSecurityProfile_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get incidents from security
.Description
Get incidents from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncident
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecurityincident
#>
function Get-MgSecurityIncident {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncident])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of incident
    ${IncidentId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityIncident_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityIncident_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityIncident_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get ipSecurityProfiles from security
.Description
Get ipSecurityProfiles from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecurityipsecurityprofile
#>
function Get-MgSecurityIPSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ipSecurityProfile
    ${IPSecurityProfileId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityIPSecurityProfile_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityIPSecurityProfile_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityIPSecurityProfile_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get providerTenantSettings from security
.Description
Get providerTenantSettings from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProviderTenantSetting
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecurityprovidertenantsetting
#>
function Get-MgSecurityProviderTenantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProviderTenantSetting])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of providerTenantSetting
    ${ProviderTenantSettingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityProviderTenantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityProviderTenantSetting_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityProviderTenantSetting_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get secureScoreControlProfiles from security
.Description
Get secureScoreControlProfiles from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritysecurescorecontrolprofile
#>
function Get-MgSecuritySecureScoreControlProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScoreControlProfile
    ${SecureScoreControlProfileId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScoreControlProfile_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScoreControlProfile_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScoreControlProfile_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get secureScores from security
.Description
Get secureScores from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritysecurescore
#>
function Get-MgSecuritySecureScore {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScore
    ${SecureScoreId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScore_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScore_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScore_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get tiIndicators from security
.Description
Get tiIndicators from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritytiindicator
#>
function Get-MgSecurityTiIndicator {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of tiIndicator
    ${TiIndicatorId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityTiIndicator_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityTiIndicator_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityTiIndicator_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get userSecurityProfiles from security
.Description
Get userSecurityProfiles from security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecurityusersecurityprofile
#>
function Get-MgSecurityUserSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userSecurityProfile
    ${UserSecurityProfileId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityUserSecurityProfile_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityUserSecurityProfile_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityUserSecurityProfile_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to securityActions for security
.Description
Create new navigation property to securityActions for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityAction
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityAction
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSecurityAction>: securityAction
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActionReason <String>]: Reason for invoking this action.
  [AppId <String>]: The Application ID of the calling application that submitted (POST) the action. The appId should be extracted from the auth token and not entered manually by the calling application.
  [AzureTenantId <String>]: Azure tenant ID of the entity to determine which tenant the entity belongs to (multi-tenancy support). The azureTenantId should be extracted from the auth token and not entered manually by the calling application.
  [ClientContext <String>]: 
  [CompletedDateTime <DateTime?>]: Timestamp when the action was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [CreatedDateTime <DateTime?>]: Timestamp when the action is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ErrorInfo <IMicrosoftGraphResultInfo>]: resultInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Code <Int32?>]: The result code.
    [Message <String>]: The message.
    [Subcode <Int32?>]: The result sub-code.
  [LastActionDateTime <DateTime?>]: Timestamp when this action was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Name <String>]: Action name.
  [Parameters <IMicrosoftGraphKeyValuePair[]>]: Collection of parameters (key-value pairs) necessary to invoke the action, e.g. URL or fileHash to block, etc.). Required
    [Name <String>]: Name for this key-value pair
    [Value <String>]: Value for this key-value pair
  [States <IMicrosoftGraphSecurityActionState[]>]: Collection of securityActionState to keep the history of an action.
    [AppId <String>]: The Application ID of the calling application that submitted an update (PATCH) to the action. The appId should be extracted from the auth token and not entered manually by the calling application.
    [Status <String>]: operationStatus
    [UpdatedDateTime <DateTime?>]: Timestamp when the actionState was updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [User <String>]: The user principal name of the signed-in user that submitted an update (PATCH) to the action. The user should be extracted from the auth token and not entered manually by the calling application.
  [Status <String>]: operationStatus
  [User <String>]: The user principal name of the signed-in user that submitted  (POST) the action. The user should be extracted from the auth token and not entered manually by the calling application.
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

ERRORINFO <IMicrosoftGraphResultInfo>: resultInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Code <Int32?>]: The result code.
  [Message <String>]: The message.
  [Subcode <Int32?>]: The result sub-code.

PARAMETERS <IMicrosoftGraphKeyValuePair[]>: Collection of parameters (key-value pairs) necessary to invoke the action, e.g. URL or fileHash to block, etc.). Required
  [Name <String>]: Name for this key-value pair
  [Value <String>]: Value for this key-value pair

STATES <IMicrosoftGraphSecurityActionState[]>: Collection of securityActionState to keep the history of an action.
  [AppId <String>]: The Application ID of the calling application that submitted an update (PATCH) to the action. The appId should be extracted from the auth token and not entered manually by the calling application.
  [Status <String>]: operationStatus
  [UpdatedDateTime <DateTime?>]: Timestamp when the actionState was updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [User <String>]: The user principal name of the signed-in user that submitted an update (PATCH) to the action. The user should be extracted from the auth token and not entered manually by the calling application.

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecurityaction
#>
function New-MgSecurityAction {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityAction])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityAction]
    # securityAction
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Reason for invoking this action.
    ${ActionReason},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The Application ID of the calling application that submitted (POST) the action.
    # The appId should be extracted from the auth token and not entered manually by the calling application.
    ${AppId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure tenant ID of the entity to determine which tenant the entity belongs to (multi-tenancy support).
    # The azureTenantId should be extracted from the auth token and not entered manually by the calling application.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp when the action was completed.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp when the action is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, see NOTES section for ERRORINFO properties and create a hash table.
    ${ErrorInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp when this action was last updated.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastActionDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Action name.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphKeyValuePair[]]
    # Collection of parameters (key-value pairs) necessary to invoke the action, e.g.
    # URL or fileHash to block, etc.).
    # Required
    # To construct, see NOTES section for PARAMETERS properties and create a hash table.
    ${Parameters},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityActionState[]]
    # Collection of securityActionState to keep the history of an action.
    # To construct, see NOTES section for STATES properties and create a hash table.
    ${States},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # operationStatus
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The user principal name of the signed-in user that submitted (POST) the action.
    # The user should be extracted from the auth token and not entered manually by the calling application.
    ${User},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityAction_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityAction_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ALERTDETECTIONS <IMicrosoftGraphAlertDetection[]>: .
  [DetectionType <String>]: 
  [Method <String>]: 
  [Name <String>]: 

BODYPARAMETER <IMicrosoftGraphAlert>: alert
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivityGroupName <String>]: Name or alias of the activity group (attacker) this alert is attributed to.
  [AlertDetections <IMicrosoftGraphAlertDetection[]>]: 
    [DetectionType <String>]: 
    [Method <String>]: 
    [Name <String>]: 
  [AssignedTo <String>]: Name of the analyst the alert is assigned to for triage, investigation, or remediation (supports update).
  [AzureSubscriptionId <String>]: Azure subscription ID, present if this alert is related to an Azure resource.
  [AzureTenantId <String>]: Azure Active Directory tenant ID. Required.
  [Category <String>]: Category of the alert (for example, credentialTheft, ransomware, etc.).
  [ClosedDateTime <DateTime?>]: Time at which the alert was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z (supports update).
  [CloudAppStates <IMicrosoftGraphCloudAppSecurityState[]>]: Security-related stateful information generated by the provider about the cloud application/s related to this alert.
    [DestinationServiceIP <String>]: Destination IP Address of the connection to the cloud application/service.
    [DestinationServiceName <String>]: Cloud application/service name (for example 'Salesforce', 'DropBox', etc.).
    [RiskScore <String>]: Provider-generated/calculated risk score of the Cloud Application/Service. Recommended value range of 0-1, which equates to a percentage.
  [Comments <String[]>]: Customer-provided comments on alert (for customer alert management) (supports update).
  [Confidence <Int32?>]: Confidence of the detection logic (percentage between 1-100).
  [CreatedDateTime <DateTime?>]: Time at which the alert was created by the alert provider. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
  [Description <String>]: Alert description.
  [DetectionIds <String[]>]: Set of alerts related to this alert entity (each alert is pushed to the SIEM as a separate record).
  [EventDateTime <DateTime?>]: Time at which the event(s) that served as the trigger(s) to generate the alert occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
  [Feedback <String>]: alertFeedback
  [FileStates <IMicrosoftGraphFileSecurityState[]>]: Security-related stateful information generated by the provider about the file(s) related to this alert.
    [FileHash <IMicrosoftGraphFileHash>]: fileHash
      [(Any) <Object>]: This indicates any property can be added to this object.
      [HashType <String>]: fileHashType
      [HashValue <String>]: Value of the file hash.
    [Name <String>]: File name (without path).
    [Path <String>]: Full file path of the file/imageFile.
    [RiskScore <String>]: Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.
  [HistoryStates <IMicrosoftGraphAlertHistoryState[]>]: A collection of alertHistoryStates comprising an audit log of all updates made to an alert.
    [AppId <String>]: The Application ID of the calling application that submitted an update (PATCH) to the alert. The appId should be extracted from the auth token and not entered manually by the calling application.
    [AssignedTo <String>]: UPN of user the alert was assigned to (note: alert.assignedTo only stores the last value/UPN).
    [Comments <String[]>]: Comment entered by signed-in user.
    [Feedback <String>]: alertFeedback
    [Status <String>]: alertStatus
    [UpdatedDateTime <DateTime?>]: Date and time of the alert update. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [User <String>]: UPN of the signed-in user that updated the alert (taken from the bearer token - if in user/delegated auth mode).
  [HostStates <IMicrosoftGraphHostSecurityState[]>]: Security-related stateful information generated by the provider about the host(s) related to this alert.
    [Fqdn <String>]: Host FQDN (Fully Qualified Domain Name) (for example, machine.company.com).
    [IsAzureAdJoined <Boolean?>]: 
    [IsAzureAdRegistered <Boolean?>]: 
    [IsHybridAzureDomainJoined <Boolean?>]: True if the host is domain joined to an on-premises Active Directory domain.
    [NetBiosName <String>]: The local host name, without the DNS domain name.
    [OS <String>]: Host Operating System. (For example, Windows10, MacOS, RHEL, etc.).
    [PrivateIPAddress <String>]: Private (not routable) IPv4 or IPv6 address (see RFC 1918) at the time of the alert.
    [PublicIPAddress <String>]: Publicly routable IPv4 or IPv6 address (see RFC 1918) at time of the alert.
    [RiskScore <String>]: Provider-generated/calculated risk score of the host.  Recommended value range of 0-1, which equates to a percentage.
  [IncidentIds <String[]>]: IDs of incidents related to current alert.
  [InvestigationSecurityStates <IMicrosoftGraphInvestigationSecurityState[]>]: 
    [Name <String>]: 
    [Status <String>]: 
  [LastEventDateTime <DateTime?>]: 
  [LastModifiedDateTime <DateTime?>]: Time at which the alert entity was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [MalwareStates <IMicrosoftGraphMalwareState[]>]: Threat Intelligence pertaining to malware related to this alert.
    [Category <String>]: Provider-generated malware category (for example, trojan, ransomware, etc.).
    [Family <String>]: Provider-generated malware family (for example, 'wannacry', 'notpetya', etc.).
    [Name <String>]: Provider-generated malware variant name (for example, Trojan:Win32/Powessere.H).
    [Severity <String>]: Provider-determined severity of this malware.
    [WasRunning <Boolean?>]: Indicates whether the detected file (malware/vulnerability) was running at the time of detection or was detected at rest on the disk.
  [MessageSecurityStates <IMicrosoftGraphMessageSecurityState[]>]: 
    [ConnectingIP <String>]: 
    [DeliveryAction <String>]: 
    [DeliveryLocation <String>]: 
    [Directionality <String>]: 
    [InternetMessageId <String>]: 
    [MessageFingerprint <String>]: 
    [MessageReceivedDateTime <DateTime?>]: 
    [MessageSubject <String>]: 
    [NetworkMessageId <String>]: 
  [NetworkConnections <IMicrosoftGraphNetworkConnection[]>]: Security-related stateful information generated by the provider about the network connection(s) related to this alert.
    [ApplicationName <String>]: Name of the application managing the network connection (for example, Facebook or SMTP).
    [DestinationAddress <String>]: Destination IP address (of the network connection).
    [DestinationDomain <String>]: Destination domain portion of the destination URL. (for example 'www.contoso.com').
    [DestinationLocation <String>]: Location (by IP address mapping) associated with the destination of a network connection.
    [DestinationPort <String>]: Destination port (of the network connection).
    [DestinationUrl <String>]: Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')
    [Direction <String>]: connectionDirection
    [DomainRegisteredDateTime <DateTime?>]: Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LocalDnsName <String>]: The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).
    [NatDestinationAddress <String>]: Network Address Translation destination IP address.
    [NatDestinationPort <String>]: Network Address Translation destination port.
    [NatSourceAddress <String>]: Network Address Translation source IP address.
    [NatSourcePort <String>]: Network Address Translation source port.
    [Protocol <String>]: securityNetworkProtocol
    [RiskScore <String>]: Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.
    [SourceAddress <String>]: Source (i.e. origin) IP address (of the network connection).
    [SourceLocation <String>]: Location (by IP address mapping) associated with the source of a network connection.
    [SourcePort <String>]: Source (i.e. origin) IP port (of the network connection).
    [Status <String>]: connectionStatus
    [UrlParameters <String>]: Parameters (suffix) of the destination URL.
  [Processes <IMicrosoftGraphProcess[]>]: Security-related stateful information generated by the provider about the process or processes related to this alert.
    [AccountName <String>]: User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.
    [CommandLine <String>]: The full process invocation commandline including all parameters.
    [CreatedDateTime <DateTime?>]: Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [FileHash <IMicrosoftGraphFileHash>]: fileHash
    [IntegrityLevel <String>]: processIntegrityLevel
    [IsElevated <Boolean?>]: True if the process is elevated.
    [Name <String>]: The name of the process' Image file.
    [ParentProcessCreatedDateTime <DateTime?>]: DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [ParentProcessId <Int32?>]: The Process ID (PID) of the parent process.
    [ParentProcessName <String>]: The name of the image file of the parent process.
    [Path <String>]: Full path, including filename.
    [ProcessId <Int32?>]: The Process ID (PID) of the process.
  [RecommendedActions <String[]>]: Vendor/provider recommended action(s) to take as a result of the alert (for example, isolate machine, enforce2FA, reimage host).
  [RegistryKeyStates <IMicrosoftGraphRegistryKeyState[]>]: Security-related stateful information generated by the provider about the registry keys related to this alert.
    [Hive <String>]: registryHive
    [Key <String>]: Current (i.e. changed) registry key (excludes HIVE).
    [OldKey <String>]: Previous (i.e. before changed) registry key (excludes HIVE).
    [OldValueData <String>]: Previous (i.e. before changed) registry key value data (contents).
    [OldValueName <String>]: Previous (i.e. before changed) registry key value name.
    [Operation <String>]: registryOperation
    [ProcessId <Int32?>]: Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).
    [ValueData <String>]: Current (i.e. changed) registry key value data (contents).
    [ValueName <String>]: Current (i.e. changed) registry key value name
    [ValueType <String>]: registryValueType
  [SecurityResources <IMicrosoftGraphSecurityResource[]>]: Resources related to current alert. For example, for some alerts this can have the Azure Resource value.
    [Resource <String>]: Name of the resource that is related to current alert. Required.
    [ResourceType <String>]: securityResourceType
  [Severity <String>]: alertSeverity
  [SourceMaterials <String[]>]: Hyperlinks (URIs) to the source material related to the alert, for example, provider's user interface for alerts or log search, etc.
  [Status <String>]: alertStatus
  [Tags <String[]>]: User-definable labels that can be applied to an alert and can serve as filter conditions (for example 'HVA', 'SAW', etc.) (supports update).
  [Title <String>]: Alert title. Required.
  [Triggers <IMicrosoftGraphAlertTrigger[]>]: Security-related information about the specific properties that triggered the alert (properties appearing in the alert). Alerts might contain information about multiple users, hosts, files, ip addresses. This field indicates which properties triggered the alert generation.
    [Name <String>]: Name of the property serving as a detection trigger.
    [Type <String>]: Type of the property in the key:value pair for interpretation. For example, String, Boolean etc.
    [Value <String>]: Value of the property serving as a detection trigger.
  [UriClickSecurityStates <IMicrosoftGraphUriClickSecurityState[]>]: 
    [ClickAction <String>]: 
    [ClickDateTime <DateTime?>]: 
    [Id <String>]: 
    [SourceId <String>]: 
    [UriDomain <String>]: 
    [Verdict <String>]: 
  [UserStates <IMicrosoftGraphUserSecurityState[]>]: Security-related stateful information generated by the provider about the user accounts related to this alert.
    [AadUserId <String>]: AAD User object identifier (GUID) - represents the physical/multi-account user entity.
    [AccountName <String>]: Account name of user account (without Active Directory domain or DNS domain) - (also called mailNickName).
    [DomainName <String>]: NetBIOS/Active Directory domain of user account (that is, domain/account format).
    [EmailRole <String>]: emailRole
    [IsVpn <Boolean?>]: Indicates whether the user logged on through a VPN.
    [LogonDateTime <DateTime?>]: Time at which the sign-in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [LogonIP <String>]: IP Address the sign-in request originated from.
    [LogonId <String>]: User sign-in ID.
    [LogonLocation <String>]: Location (by IP address mapping) associated with a user sign-in event by this user.
    [LogonType <String>]: logonType
    [OnPremisesSecurityIdentifier <String>]: Active Directory (on-premises) Security Identifier (SID) of the user.
    [RiskScore <String>]: Provider-generated/calculated risk score of the user account. Recommended value range of 0-1, which equates to a percentage.
    [UserAccountType <String>]: userAccountSecurityType
    [UserPrincipalName <String>]: User sign-in name - internet format: (user account name)@(user account DNS domain name).
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
  [VulnerabilityStates <IMicrosoftGraphVulnerabilityState[]>]: Threat intelligence pertaining to one or more vulnerabilities related to this alert.
    [Cve <String>]: Common Vulnerabilities and Exposures (CVE) for the vulnerability.
    [Severity <String>]: Base Common Vulnerability Scoring System (CVSS) severity score for this vulnerability.
    [WasRunning <Boolean?>]: Indicates whether the detected vulnerability (file) was running at the time of detection or was the file detected at rest on the disk.

CLOUDAPPSTATES <IMicrosoftGraphCloudAppSecurityState[]>: Security-related stateful information generated by the provider about the cloud application/s related to this alert.
  [DestinationServiceIP <String>]: Destination IP Address of the connection to the cloud application/service.
  [DestinationServiceName <String>]: Cloud application/service name (for example 'Salesforce', 'DropBox', etc.).
  [RiskScore <String>]: Provider-generated/calculated risk score of the Cloud Application/Service. Recommended value range of 0-1, which equates to a percentage.

FILESTATES <IMicrosoftGraphFileSecurityState[]>: Security-related stateful information generated by the provider about the file(s) related to this alert.
  [FileHash <IMicrosoftGraphFileHash>]: fileHash
    [(Any) <Object>]: This indicates any property can be added to this object.
    [HashType <String>]: fileHashType
    [HashValue <String>]: Value of the file hash.
  [Name <String>]: File name (without path).
  [Path <String>]: Full file path of the file/imageFile.
  [RiskScore <String>]: Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.

HISTORYSTATES <IMicrosoftGraphAlertHistoryState[]>: A collection of alertHistoryStates comprising an audit log of all updates made to an alert.
  [AppId <String>]: The Application ID of the calling application that submitted an update (PATCH) to the alert. The appId should be extracted from the auth token and not entered manually by the calling application.
  [AssignedTo <String>]: UPN of user the alert was assigned to (note: alert.assignedTo only stores the last value/UPN).
  [Comments <String[]>]: Comment entered by signed-in user.
  [Feedback <String>]: alertFeedback
  [Status <String>]: alertStatus
  [UpdatedDateTime <DateTime?>]: Date and time of the alert update. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [User <String>]: UPN of the signed-in user that updated the alert (taken from the bearer token - if in user/delegated auth mode).

HOSTSTATES <IMicrosoftGraphHostSecurityState[]>: Security-related stateful information generated by the provider about the host(s) related to this alert.
  [Fqdn <String>]: Host FQDN (Fully Qualified Domain Name) (for example, machine.company.com).
  [IsAzureAdJoined <Boolean?>]: 
  [IsAzureAdRegistered <Boolean?>]: 
  [IsHybridAzureDomainJoined <Boolean?>]: True if the host is domain joined to an on-premises Active Directory domain.
  [NetBiosName <String>]: The local host name, without the DNS domain name.
  [OS <String>]: Host Operating System. (For example, Windows10, MacOS, RHEL, etc.).
  [PrivateIPAddress <String>]: Private (not routable) IPv4 or IPv6 address (see RFC 1918) at the time of the alert.
  [PublicIPAddress <String>]: Publicly routable IPv4 or IPv6 address (see RFC 1918) at time of the alert.
  [RiskScore <String>]: Provider-generated/calculated risk score of the host.  Recommended value range of 0-1, which equates to a percentage.

INVESTIGATIONSECURITYSTATES <IMicrosoftGraphInvestigationSecurityState[]>: .
  [Name <String>]: 
  [Status <String>]: 

MALWARESTATES <IMicrosoftGraphMalwareState[]>: Threat Intelligence pertaining to malware related to this alert.
  [Category <String>]: Provider-generated malware category (for example, trojan, ransomware, etc.).
  [Family <String>]: Provider-generated malware family (for example, 'wannacry', 'notpetya', etc.).
  [Name <String>]: Provider-generated malware variant name (for example, Trojan:Win32/Powessere.H).
  [Severity <String>]: Provider-determined severity of this malware.
  [WasRunning <Boolean?>]: Indicates whether the detected file (malware/vulnerability) was running at the time of detection or was detected at rest on the disk.

MESSAGESECURITYSTATES <IMicrosoftGraphMessageSecurityState[]>: .
  [ConnectingIP <String>]: 
  [DeliveryAction <String>]: 
  [DeliveryLocation <String>]: 
  [Directionality <String>]: 
  [InternetMessageId <String>]: 
  [MessageFingerprint <String>]: 
  [MessageReceivedDateTime <DateTime?>]: 
  [MessageSubject <String>]: 
  [NetworkMessageId <String>]: 

NETWORKCONNECTIONS <IMicrosoftGraphNetworkConnection[]>: Security-related stateful information generated by the provider about the network connection(s) related to this alert.
  [ApplicationName <String>]: Name of the application managing the network connection (for example, Facebook or SMTP).
  [DestinationAddress <String>]: Destination IP address (of the network connection).
  [DestinationDomain <String>]: Destination domain portion of the destination URL. (for example 'www.contoso.com').
  [DestinationLocation <String>]: Location (by IP address mapping) associated with the destination of a network connection.
  [DestinationPort <String>]: Destination port (of the network connection).
  [DestinationUrl <String>]: Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')
  [Direction <String>]: connectionDirection
  [DomainRegisteredDateTime <DateTime?>]: Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [LocalDnsName <String>]: The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).
  [NatDestinationAddress <String>]: Network Address Translation destination IP address.
  [NatDestinationPort <String>]: Network Address Translation destination port.
  [NatSourceAddress <String>]: Network Address Translation source IP address.
  [NatSourcePort <String>]: Network Address Translation source port.
  [Protocol <String>]: securityNetworkProtocol
  [RiskScore <String>]: Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.
  [SourceAddress <String>]: Source (i.e. origin) IP address (of the network connection).
  [SourceLocation <String>]: Location (by IP address mapping) associated with the source of a network connection.
  [SourcePort <String>]: Source (i.e. origin) IP port (of the network connection).
  [Status <String>]: connectionStatus
  [UrlParameters <String>]: Parameters (suffix) of the destination URL.

PROCESSES <IMicrosoftGraphProcess[]>: Security-related stateful information generated by the provider about the process or processes related to this alert.
  [AccountName <String>]: User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.
  [CommandLine <String>]: The full process invocation commandline including all parameters.
  [CreatedDateTime <DateTime?>]: Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [FileHash <IMicrosoftGraphFileHash>]: fileHash
    [(Any) <Object>]: This indicates any property can be added to this object.
    [HashType <String>]: fileHashType
    [HashValue <String>]: Value of the file hash.
  [IntegrityLevel <String>]: processIntegrityLevel
  [IsElevated <Boolean?>]: True if the process is elevated.
  [Name <String>]: The name of the process' Image file.
  [ParentProcessCreatedDateTime <DateTime?>]: DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [ParentProcessId <Int32?>]: The Process ID (PID) of the parent process.
  [ParentProcessName <String>]: The name of the image file of the parent process.
  [Path <String>]: Full path, including filename.
  [ProcessId <Int32?>]: The Process ID (PID) of the process.

REGISTRYKEYSTATES <IMicrosoftGraphRegistryKeyState[]>: Security-related stateful information generated by the provider about the registry keys related to this alert.
  [Hive <String>]: registryHive
  [Key <String>]: Current (i.e. changed) registry key (excludes HIVE).
  [OldKey <String>]: Previous (i.e. before changed) registry key (excludes HIVE).
  [OldValueData <String>]: Previous (i.e. before changed) registry key value data (contents).
  [OldValueName <String>]: Previous (i.e. before changed) registry key value name.
  [Operation <String>]: registryOperation
  [ProcessId <Int32?>]: Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).
  [ValueData <String>]: Current (i.e. changed) registry key value data (contents).
  [ValueName <String>]: Current (i.e. changed) registry key value name
  [ValueType <String>]: registryValueType

SECURITYRESOURCES <IMicrosoftGraphSecurityResource[]>: Resources related to current alert. For example, for some alerts this can have the Azure Resource value.
  [Resource <String>]: Name of the resource that is related to current alert. Required.
  [ResourceType <String>]: securityResourceType

TRIGGERS <IMicrosoftGraphAlertTrigger[]>: Security-related information about the specific properties that triggered the alert (properties appearing in the alert). Alerts might contain information about multiple users, hosts, files, ip addresses. This field indicates which properties triggered the alert generation.
  [Name <String>]: Name of the property serving as a detection trigger.
  [Type <String>]: Type of the property in the key:value pair for interpretation. For example, String, Boolean etc.
  [Value <String>]: Value of the property serving as a detection trigger.

URICLICKSECURITYSTATES <IMicrosoftGraphUriClickSecurityState[]>: .
  [ClickAction <String>]: 
  [ClickDateTime <DateTime?>]: 
  [Id <String>]: 
  [SourceId <String>]: 
  [UriDomain <String>]: 
  [Verdict <String>]: 

USERSTATES <IMicrosoftGraphUserSecurityState[]>: Security-related stateful information generated by the provider about the user accounts related to this alert.
  [AadUserId <String>]: AAD User object identifier (GUID) - represents the physical/multi-account user entity.
  [AccountName <String>]: Account name of user account (without Active Directory domain or DNS domain) - (also called mailNickName).
  [DomainName <String>]: NetBIOS/Active Directory domain of user account (that is, domain/account format).
  [EmailRole <String>]: emailRole
  [IsVpn <Boolean?>]: Indicates whether the user logged on through a VPN.
  [LogonDateTime <DateTime?>]: Time at which the sign-in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [LogonIP <String>]: IP Address the sign-in request originated from.
  [LogonId <String>]: User sign-in ID.
  [LogonLocation <String>]: Location (by IP address mapping) associated with a user sign-in event by this user.
  [LogonType <String>]: logonType
  [OnPremisesSecurityIdentifier <String>]: Active Directory (on-premises) Security Identifier (SID) of the user.
  [RiskScore <String>]: Provider-generated/calculated risk score of the user account. Recommended value range of 0-1, which equates to a percentage.
  [UserAccountType <String>]: userAccountSecurityType
  [UserPrincipalName <String>]: User sign-in name - internet format: (user account name)@(user account DNS domain name).

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

VULNERABILITYSTATES <IMicrosoftGraphVulnerabilityState[]>: Threat intelligence pertaining to one or more vulnerabilities related to this alert.
  [Cve <String>]: Common Vulnerabilities and Exposures (CVE) for the vulnerability.
  [Severity <String>]: Base Common Vulnerability Scoring System (CVSS) severity score for this vulnerability.
  [WasRunning <Boolean?>]: Indicates whether the detected vulnerability (file) was running at the time of detection or was the file detected at rest on the disk.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecurityalert
#>
function New-MgSecurityAlert {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert]
    # alert
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name or alias of the activity group (attacker) this alert is attributed to.
    ${ActivityGroupName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertDetection[]]
    # .
    # To construct, see NOTES section for ALERTDETECTIONS properties and create a hash table.
    ${AlertDetections},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name of the analyst the alert is assigned to for triage, investigation, or remediation (supports update).
    ${AssignedTo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure subscription ID, present if this alert is related to an Azure resource.
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure Active Directory tenant ID.
    # Required.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Category of the alert (for example, credentialTheft, ransomware, etc.).
    ${Category},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was closed.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z (supports update).
    ${ClosedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityState[]]
    # Security-related stateful information generated by the provider about the cloud application/s related to this alert.
    # To construct, see NOTES section for CLOUDAPPSTATES properties and create a hash table.
    ${CloudAppStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Customer-provided comments on alert (for customer alert management) (supports update).
    ${Comments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Confidence of the detection logic (percentage between 1-100).
    ${Confidence},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was created by the alert provider.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert description.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Set of alerts related to this alert entity (each alert is pushed to the SIEM as a separate record).
    ${DetectionIds},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the event(s) that served as the trigger(s) to generate the alert occurred.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${EventDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertFeedback
    ${Feedback},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityState[]]
    # Security-related stateful information generated by the provider about the file(s) related to this alert.
    # To construct, see NOTES section for FILESTATES properties and create a hash table.
    ${FileStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertHistoryState[]]
    # A collection of alertHistoryStates comprising an audit log of all updates made to an alert.
    # To construct, see NOTES section for HISTORYSTATES properties and create a hash table.
    ${HistoryStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityState[]]
    # Security-related stateful information generated by the provider about the host(s) related to this alert.
    # To construct, see NOTES section for HOSTSTATES properties and create a hash table.
    ${HostStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # IDs of incidents related to current alert.
    ${IncidentIds},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvestigationSecurityState[]]
    # .
    # To construct, see NOTES section for INVESTIGATIONSECURITYSTATES properties and create a hash table.
    ${InvestigationSecurityStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastEventDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert entity was last modified.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMalwareState[]]
    # Threat Intelligence pertaining to malware related to this alert.
    # To construct, see NOTES section for MALWARESTATES properties and create a hash table.
    ${MalwareStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageSecurityState[]]
    # .
    # To construct, see NOTES section for MESSAGESECURITYSTATES properties and create a hash table.
    ${MessageSecurityStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphNetworkConnection[]]
    # Security-related stateful information generated by the provider about the network connection(s) related to this alert.
    # To construct, see NOTES section for NETWORKCONNECTIONS properties and create a hash table.
    ${NetworkConnections},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProcess[]]
    # Security-related stateful information generated by the provider about the process or processes related to this alert.
    # To construct, see NOTES section for PROCESSES properties and create a hash table.
    ${Processes},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Vendor/provider recommended action(s) to take as a result of the alert (for example, isolate machine, enforce2FA, reimage host).
    ${RecommendedActions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRegistryKeyState[]]
    # Security-related stateful information generated by the provider about the registry keys related to this alert.
    # To construct, see NOTES section for REGISTRYKEYSTATES properties and create a hash table.
    ${RegistryKeyStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityResource[]]
    # Resources related to current alert.
    # For example, for some alerts this can have the Azure Resource value.
    # To construct, see NOTES section for SECURITYRESOURCES properties and create a hash table.
    ${SecurityResources},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertSeverity
    ${Severity},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Hyperlinks (URIs) to the source material related to the alert, for example, provider's user interface for alerts or log search, etc.
    ${SourceMaterials},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertStatus
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # User-definable labels that can be applied to an alert and can serve as filter conditions (for example 'HVA', 'SAW', etc.) (supports update).
    ${Tags},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert title.
    # Required.
    ${Title},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertTrigger[]]
    # Security-related information about the specific properties that triggered the alert (properties appearing in the alert).
    # Alerts might contain information about multiple users, hosts, files, ip addresses.
    # This field indicates which properties triggered the alert generation.
    # To construct, see NOTES section for TRIGGERS properties and create a hash table.
    ${Triggers},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUriClickSecurityState[]]
    # .
    # To construct, see NOTES section for URICLICKSECURITYSTATES properties and create a hash table.
    ${UriClickSecurityStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityState[]]
    # Security-related stateful information generated by the provider about the user accounts related to this alert.
    # To construct, see NOTES section for USERSTATES properties and create a hash table.
    ${UserStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVulnerabilityState[]]
    # Threat intelligence pertaining to one or more vulnerabilities related to this alert.
    # To construct, see NOTES section for VULNERABILITYSTATES properties and create a hash table.
    ${VulnerabilityStates},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityAlert_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityAlert_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Represent attack simulation and training campaign of a tenant.
.Description
Represent attack simulation and training campaign of a tenant.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSimulation
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSimulation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSimulation>: simulation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AttackTechnique <String>]: simulationAttackTechnique
  [AttackType <String>]: simulationAttackType
  [CleanupArtifacts <Boolean?>]: Flag representing if artifacts were cleaned up in the attack simulation and training campaign.
  [CompletionDateTime <DateTime?>]: Date and time of completion of the attack simulation and training campaign. Supports $filter and $orderby.
  [CreatedBy <IMicrosoftGraphEmailIdentity>]: emailIdentity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
    [Email <String>]: Email address of the user.
  [CreatedDateTime <DateTime?>]: Date and time of creation of the attack simulation and training campaign.
  [Description <String>]: Description of the attack simulation and training campaign.
  [DisplayName <String>]: Display name of the attack simulation and training campaign. Supports $filter and $orderby.
  [EnableRegionTimezoneDelivery <Boolean?>]: Flag representing whether to enable or disable timezone-aware delivery of phishing payload in the attack simulation and training campaign.
  [IncludeAllAccountTargets <Boolean?>]: Flag representing inclusion of all the users of a tenant in the attack simulation and training campaign.
  [IsAutomated <Boolean?>]: Flag representing if the attack simulation and training campaign was created from a simulation automation flow. Supports $filter and $orderby.
  [LastModifiedBy <IMicrosoftGraphEmailIdentity>]: emailIdentity
  [LastModifiedDateTime <DateTime?>]: Date and time of the most recent modification of the attack simulation and training campaign.
  [LaunchDateTime <DateTime?>]: Date and time of the launch/start of the attack simulation and training campaign. Supports $filter and $orderby.
  [Mode <String>]: simulationMode
  [PayloadDeliveryPlatform <String>]: payloadDeliveryPlatform
  [PayloadSource <String>]: payloadSource
  [Report <IMicrosoftGraphSimulationReport>]: simulationReport
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Overview <IMicrosoftGraphSimulationReportOverview>]: simulationReportOverview
      [(Any) <Object>]: This indicates any property can be added to this object.
      [RecommendedActions <IMicrosoftGraphRecommendedAction[]>]: List of recommended actions for a tenant to improve its security posture based on the attack simulation and training campaign attack type.
        [ActionWebUrl <String>]: Web URL to the recommended action.
        [PotentialScoreImpact <Double?>]: Potential improvement in security score of the tenant from the recommended action.
        [Title <String>]: Title of the recommended action.
      [ResolvedTargetsCount <Int32?>]: Number of valid users in the attack simulation and training campaign.
      [SimulationEventsContent <IMicrosoftGraphSimulationEventsContent>]: simulationEventsContent
        [(Any) <Object>]: This indicates any property can be added to this object.
        [CompromisedRate <Double?>]: Actual percentage of users who fell for the simulated attack in an attack simulation and training campaign.
        [Events <IMicrosoftGraphSimulationEvent[]>]: List of simulation events in an attack simulation and training campaign.
          [Count <Int32?>]: Count of occurence of the simulation event in an attack simulation and training campaign.
          [EventName <String>]: Name of the simulation event in an attack simulation and training campaign.
      [TrainingEventsContent <IMicrosoftGraphTrainingEventsContent>]: trainingEventsContent
        [(Any) <Object>]: This indicates any property can be added to this object.
        [AssignedTrainingsInfos <IMicrosoftGraphAssignedTrainingInfo[]>]: List of assigned trainings and their information in an attack simulation and training campaign.
          [AssignedUserCount <Int32?>]: Number of users who were assigned the training in an attack simulation and training campaign.
          [CompletedUserCount <Int32?>]: Number of users who completed the training in an attack simulation and training campaign.
          [DisplayName <String>]: Display name of the training in an attack simulation and training campaign.
        [TrainingsAssignedUserCount <Int32?>]: Number of users who were assigned trainings in an attack simulation and training campaign.
    [SimulationUsers <IMicrosoftGraphUserSimulationDetails[]>]: Represents users of a tenant and their online actions in an attack simulation and training campaign.
      [AssignedTrainingsCount <Int32?>]: Number of trainings assigned to a user in an attack simulation and training campaign.
      [CompletedTrainingsCount <Int32?>]: Number of trainings completed by a user in an attack simulation and training campaign.
      [CompromisedDateTime <DateTime?>]: Date and time of the compromising online action by a user in an attack simulation and training campaign.
      [InProgressTrainingsCount <Int32?>]: Number of trainings in progress by a user in an attack simulation and training campaign.
      [IsCompromised <Boolean?>]: Flag representing if user was compromised in an attack simulation and training campaign.
      [ReportedPhishDateTime <DateTime?>]: Date and time when user reported delivered payload as phish in the attack simulation and training campaign.
      [SimulationEvents <IMicrosoftGraphUserSimulationEventInfo[]>]: List of simulation events of a user in the attack simulation and training campaign.
        [Browser <String>]: Browser information from where the simulation event was initiated by a user in an attack simulation and training campaign.
        [EventDateTime <DateTime?>]: Date and time of the simulation event by a user in an attack simulation and training campaign.
        [EventName <String>]: Name of the simulation event by a user in an attack simulation and training campaign.
        [IPAddress <String>]: IP address from where the simulation event was initiated by a user in an attack simulation and training campaign.
        [OSPlatformDeviceDetails <String>]: The operating system, platform, and device details from where the simulation event was initiated by a user in an attack simulation and training campaign.
      [SimulationUser <IMicrosoftGraphAttackSimulationUser>]: attackSimulationUser
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: Display name of the user.
        [Email <String>]: Email address of the user.
        [UserId <String>]: This is the id property value of the user resource that represents the user in the Azure AD tenant.
      [TrainingEvents <IMicrosoftGraphUserTrainingEventInfo[]>]: List of training events of a user in the attack simulation and training campaign.
        [DisplayName <String>]: Display name of the training.
        [LatestTrainingStatus <String>]: trainingStatus
        [TrainingAssignedProperties <IMicrosoftGraphUserTrainingContentEventInfo>]: userTrainingContentEventInfo
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Browser <String>]: Browser of the user from where the training event was generated.
          [ContentDateTime <DateTime?>]: Date and time of the training content playback by the user.
          [IPAddress <String>]: IP address of the user for the training event.
          [OSPlatformDeviceDetails <String>]: The operating system, platform, and device details of the user for the training event.
          [PotentialScoreImpact <Double?>]: Potential improvement in security posture of the tenant after completion of the training by the user.
        [TrainingCompletedProperties <IMicrosoftGraphUserTrainingContentEventInfo>]: userTrainingContentEventInfo
        [TrainingUpdatedProperties <IMicrosoftGraphUserTrainingContentEventInfo>]: userTrainingContentEventInfo
  [Status <String>]: simulationStatus
  [TrainingAssignmentPreference <String>]: trainingAssignmentPreference
  [TrainingContentPreference <String>]: trainingContentPreference
  [TrainingDueDateTime <DateTime?>]: Date and time before which the trainings need to be completed by users in the attack simulation and training campaign.

CREATEDBY <IMicrosoftGraphEmailIdentity>: emailIdentity
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
  [Id <String>]: Unique identifier for the identity.
  [Email <String>]: Email address of the user.

LASTMODIFIEDBY <IMicrosoftGraphEmailIdentity>: emailIdentity
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
  [Id <String>]: Unique identifier for the identity.
  [Email <String>]: Email address of the user.

REPORT <IMicrosoftGraphSimulationReport>: simulationReport
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Overview <IMicrosoftGraphSimulationReportOverview>]: simulationReportOverview
    [(Any) <Object>]: This indicates any property can be added to this object.
    [RecommendedActions <IMicrosoftGraphRecommendedAction[]>]: List of recommended actions for a tenant to improve its security posture based on the attack simulation and training campaign attack type.
      [ActionWebUrl <String>]: Web URL to the recommended action.
      [PotentialScoreImpact <Double?>]: Potential improvement in security score of the tenant from the recommended action.
      [Title <String>]: Title of the recommended action.
    [ResolvedTargetsCount <Int32?>]: Number of valid users in the attack simulation and training campaign.
    [SimulationEventsContent <IMicrosoftGraphSimulationEventsContent>]: simulationEventsContent
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CompromisedRate <Double?>]: Actual percentage of users who fell for the simulated attack in an attack simulation and training campaign.
      [Events <IMicrosoftGraphSimulationEvent[]>]: List of simulation events in an attack simulation and training campaign.
        [Count <Int32?>]: Count of occurence of the simulation event in an attack simulation and training campaign.
        [EventName <String>]: Name of the simulation event in an attack simulation and training campaign.
    [TrainingEventsContent <IMicrosoftGraphTrainingEventsContent>]: trainingEventsContent
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignedTrainingsInfos <IMicrosoftGraphAssignedTrainingInfo[]>]: List of assigned trainings and their information in an attack simulation and training campaign.
        [AssignedUserCount <Int32?>]: Number of users who were assigned the training in an attack simulation and training campaign.
        [CompletedUserCount <Int32?>]: Number of users who completed the training in an attack simulation and training campaign.
        [DisplayName <String>]: Display name of the training in an attack simulation and training campaign.
      [TrainingsAssignedUserCount <Int32?>]: Number of users who were assigned trainings in an attack simulation and training campaign.
  [SimulationUsers <IMicrosoftGraphUserSimulationDetails[]>]: Represents users of a tenant and their online actions in an attack simulation and training campaign.
    [AssignedTrainingsCount <Int32?>]: Number of trainings assigned to a user in an attack simulation and training campaign.
    [CompletedTrainingsCount <Int32?>]: Number of trainings completed by a user in an attack simulation and training campaign.
    [CompromisedDateTime <DateTime?>]: Date and time of the compromising online action by a user in an attack simulation and training campaign.
    [InProgressTrainingsCount <Int32?>]: Number of trainings in progress by a user in an attack simulation and training campaign.
    [IsCompromised <Boolean?>]: Flag representing if user was compromised in an attack simulation and training campaign.
    [ReportedPhishDateTime <DateTime?>]: Date and time when user reported delivered payload as phish in the attack simulation and training campaign.
    [SimulationEvents <IMicrosoftGraphUserSimulationEventInfo[]>]: List of simulation events of a user in the attack simulation and training campaign.
      [Browser <String>]: Browser information from where the simulation event was initiated by a user in an attack simulation and training campaign.
      [EventDateTime <DateTime?>]: Date and time of the simulation event by a user in an attack simulation and training campaign.
      [EventName <String>]: Name of the simulation event by a user in an attack simulation and training campaign.
      [IPAddress <String>]: IP address from where the simulation event was initiated by a user in an attack simulation and training campaign.
      [OSPlatformDeviceDetails <String>]: The operating system, platform, and device details from where the simulation event was initiated by a user in an attack simulation and training campaign.
    [SimulationUser <IMicrosoftGraphAttackSimulationUser>]: attackSimulationUser
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: Display name of the user.
      [Email <String>]: Email address of the user.
      [UserId <String>]: This is the id property value of the user resource that represents the user in the Azure AD tenant.
    [TrainingEvents <IMicrosoftGraphUserTrainingEventInfo[]>]: List of training events of a user in the attack simulation and training campaign.
      [DisplayName <String>]: Display name of the training.
      [LatestTrainingStatus <String>]: trainingStatus
      [TrainingAssignedProperties <IMicrosoftGraphUserTrainingContentEventInfo>]: userTrainingContentEventInfo
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Browser <String>]: Browser of the user from where the training event was generated.
        [ContentDateTime <DateTime?>]: Date and time of the training content playback by the user.
        [IPAddress <String>]: IP address of the user for the training event.
        [OSPlatformDeviceDetails <String>]: The operating system, platform, and device details of the user for the training event.
        [PotentialScoreImpact <Double?>]: Potential improvement in security posture of the tenant after completion of the training by the user.
      [TrainingCompletedProperties <IMicrosoftGraphUserTrainingContentEventInfo>]: userTrainingContentEventInfo
      [TrainingUpdatedProperties <IMicrosoftGraphUserTrainingContentEventInfo>]: userTrainingContentEventInfo
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecurityattacksimulation
#>
function New-MgSecurityAttackSimulation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSimulation])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSimulation]
    # simulation
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
    # simulationAttackTechnique
    ${AttackTechnique},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # simulationAttackType
    ${AttackType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag representing if artifacts were cleaned up in the attack simulation and training campaign.
    ${CleanupArtifacts},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time of completion of the attack simulation and training campaign.
    # Supports $filter and $orderby.
    ${CompletionDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailIdentity]
    # emailIdentity
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time of creation of the attack simulation and training campaign.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the attack simulation and training campaign.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the attack simulation and training campaign.
    # Supports $filter and $orderby.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag representing whether to enable or disable timezone-aware delivery of phishing payload in the attack simulation and training campaign.
    ${EnableRegionTimezoneDelivery},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag representing inclusion of all the users of a tenant in the attack simulation and training campaign.
    ${IncludeAllAccountTargets},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag representing if the attack simulation and training campaign was created from a simulation automation flow.
    # Supports $filter and $orderby.
    ${IsAutomated},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailIdentity]
    # emailIdentity
    # To construct, see NOTES section for LASTMODIFIEDBY properties and create a hash table.
    ${LastModifiedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time of the most recent modification of the attack simulation and training campaign.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time of the launch/start of the attack simulation and training campaign.
    # Supports $filter and $orderby.
    ${LaunchDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # simulationMode
    ${Mode},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # payloadDeliveryPlatform
    ${PayloadDeliveryPlatform},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # payloadSource
    ${PayloadSource},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSimulationReport]
    # simulationReport
    # To construct, see NOTES section for REPORT properties and create a hash table.
    ${Report},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # simulationStatus
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # trainingAssignmentPreference
    ${TrainingAssignmentPreference},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # trainingContentPreference
    ${TrainingContentPreference},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time before which the trainings need to be completed by users in the attack simulation and training campaign.
    ${TrainingDueDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityAttackSimulation_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityAttackSimulation_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to cloudAppSecurityProfiles for security
.Description
Create new navigation property to cloudAppSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityProfile
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphCloudAppSecurityProfile>: cloudAppSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [CreatedDateTime <DateTime?>]: 
  [DeploymentPackageUrl <String>]: 
  [DestinationServiceName <String>]: 
  [IsSigned <Boolean?>]: 
  [LastModifiedDateTime <DateTime?>]: 
  [Manifest <String>]: 
  [Name <String>]: 
  [PermissionsRequired <String>]: applicationPermissionsRequired
  [Platform <String>]: 
  [PolicyName <String>]: 
  [Publisher <String>]: 
  [RiskScore <String>]: 
  [Tags <String[]>]: 
  [Type <String>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycloudappsecurityprofile
#>
function New-MgSecurityCloudAppSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityProfile]
    # cloudAppSecurityProfile
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
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DeploymentPackageUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationServiceName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsSigned},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Manifest},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # applicationPermissionsRequired
    ${PermissionsRequired},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Platform},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${PolicyName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Publisher},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Type},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityCloudAppSecurityProfile_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCloudAppSecurityProfile_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to domainSecurityProfiles for security
.Description
Create new navigation property to domainSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDomainSecurityProfile
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDomainSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphDomainSecurityProfile>: domainSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivityGroupNames <String[]>]: 
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [CountHits <Int32?>]: 
  [CountInOrg <Int32?>]: 
  [DomainCategories <IMicrosoftGraphReputationCategory[]>]: 
    [Description <String>]: 
    [Name <String>]: 
    [Vendor <String>]: 
  [DomainRegisteredDateTime <DateTime?>]: 
  [FirstSeenDateTime <DateTime?>]: 
  [LastSeenDateTime <DateTime?>]: 
  [Name <String>]: 
  [Registrant <IMicrosoftGraphDomainRegistrant>]: domainRegistrant
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CountryOrRegionCode <String>]: 
    [Organization <String>]: 
    [Url <String>]: 
    [Vendor <String>]: 
  [RiskScore <String>]: 
  [Tags <String[]>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

DOMAINCATEGORIES <IMicrosoftGraphReputationCategory[]>: .
  [Description <String>]: 
  [Name <String>]: 
  [Vendor <String>]: 

REGISTRANT <IMicrosoftGraphDomainRegistrant>: domainRegistrant
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CountryOrRegionCode <String>]: 
  [Organization <String>]: 
  [Url <String>]: 
  [Vendor <String>]: 

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritydomainsecurityprofile
#>
function New-MgSecurityDomainSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDomainSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDomainSecurityProfile]
    # domainSecurityProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${ActivityGroupNames},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${CountHits},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${CountInOrg},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphReputationCategory[]]
    # .
    # To construct, see NOTES section for DOMAINCATEGORIES properties and create a hash table.
    ${DomainCategories},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${DomainRegisteredDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FirstSeenDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastSeenDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDomainRegistrant]
    # domainRegistrant
    # To construct, see NOTES section for REGISTRANT properties and create a hash table.
    ${Registrant},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityDomainSecurityProfile_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityDomainSecurityProfile_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to fileSecurityProfiles for security
.Description
Create new navigation property to fileSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityProfile
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphFileSecurityProfile>: fileSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivityGroupNames <String[]>]: 
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [CertificateThumbprint <String>]: 
  [Extensions <String[]>]: 
  [FileType <String>]: 
  [FirstSeenDateTime <DateTime?>]: 
  [Hashes <IMicrosoftGraphFileHash[]>]: 
    [HashType <String>]: fileHashType
    [HashValue <String>]: Value of the file hash.
  [LastSeenDateTime <DateTime?>]: 
  [MalwareStates <IMicrosoftGraphMalwareState[]>]: 
    [Category <String>]: Provider-generated malware category (for example, trojan, ransomware, etc.).
    [Family <String>]: Provider-generated malware family (for example, 'wannacry', 'notpetya', etc.).
    [Name <String>]: Provider-generated malware variant name (for example, Trojan:Win32/Powessere.H).
    [Severity <String>]: Provider-determined severity of this malware.
    [WasRunning <Boolean?>]: Indicates whether the detected file (malware/vulnerability) was running at the time of detection or was detected at rest on the disk.
  [Names <String[]>]: 
  [RiskScore <String>]: 
  [Size <Int64?>]: 
  [Tags <String[]>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
  [VulnerabilityStates <IMicrosoftGraphVulnerabilityState[]>]: 
    [Cve <String>]: Common Vulnerabilities and Exposures (CVE) for the vulnerability.
    [Severity <String>]: Base Common Vulnerability Scoring System (CVSS) severity score for this vulnerability.
    [WasRunning <Boolean?>]: Indicates whether the detected vulnerability (file) was running at the time of detection or was the file detected at rest on the disk.

HASHES <IMicrosoftGraphFileHash[]>: .
  [HashType <String>]: fileHashType
  [HashValue <String>]: Value of the file hash.

MALWARESTATES <IMicrosoftGraphMalwareState[]>: .
  [Category <String>]: Provider-generated malware category (for example, trojan, ransomware, etc.).
  [Family <String>]: Provider-generated malware family (for example, 'wannacry', 'notpetya', etc.).
  [Name <String>]: Provider-generated malware variant name (for example, Trojan:Win32/Powessere.H).
  [Severity <String>]: Provider-determined severity of this malware.
  [WasRunning <Boolean?>]: Indicates whether the detected file (malware/vulnerability) was running at the time of detection or was detected at rest on the disk.

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

VULNERABILITYSTATES <IMicrosoftGraphVulnerabilityState[]>: .
  [Cve <String>]: Common Vulnerabilities and Exposures (CVE) for the vulnerability.
  [Severity <String>]: Base Common Vulnerability Scoring System (CVSS) severity score for this vulnerability.
  [WasRunning <Boolean?>]: Indicates whether the detected vulnerability (file) was running at the time of detection or was the file detected at rest on the disk.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecurityfilesecurityprofile
#>
function New-MgSecurityFileSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityProfile]
    # fileSecurityProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${ActivityGroupNames},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CertificateThumbprint},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Extensions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FirstSeenDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileHash[]]
    # .
    # To construct, see NOTES section for HASHES properties and create a hash table.
    ${Hashes},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastSeenDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMalwareState[]]
    # .
    # To construct, see NOTES section for MALWARESTATES properties and create a hash table.
    ${MalwareStates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Names},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int64]
    # .
    ${Size},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVulnerabilityState[]]
    # .
    # To construct, see NOTES section for VULNERABILITYSTATES properties and create a hash table.
    ${VulnerabilityStates},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityFileSecurityProfile_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityFileSecurityProfile_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to hostSecurityProfiles for security
.Description
Create new navigation property to hostSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityProfile
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphHostSecurityProfile>: hostSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [FirstSeenDateTime <DateTime?>]: 
  [Fqdn <String>]: 
  [IsAzureAdJoined <Boolean?>]: 
  [IsAzureAdRegistered <Boolean?>]: 
  [IsHybridAzureDomainJoined <Boolean?>]: 
  [LastSeenDateTime <DateTime?>]: 
  [LogonUsers <IMicrosoftGraphLogonUser[]>]: 
    [AccountDomain <String>]: Domain of user account used to logon.
    [AccountName <String>]: Account name of user account used to logon.
    [AccountType <String>]: userAccountSecurityType
    [FirstSeenDateTime <DateTime?>]: DateTime at which the earliest logon by this user account occurred (provider-determined period). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [LastSeenDateTime <DateTime?>]: DateTime at which the latest logon by this user account occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [LogonId <String>]: User logon ID.
    [LogonTypes <String[]>]: Collection of the logon types observed for the logged on user from when first to last seen. Possible values are: unknown, interactive, remoteInteractive, network, batch, service.
  [NetBiosName <String>]: 
  [NetworkInterfaces <IMicrosoftGraphNetworkInterface[]>]: 
    [Description <String>]: Description of the NIC (e.g. Ethernet adapter, Wireless LAN adapter Local Area Connection <#/>, etc.).
    [IPV4Address <String>]: Last IPv4 address associated with this NIC.
    [IPV6Address <String>]: Last Public (aka global) IPv6 address associated with this NIC.
    [LocalIPV6Address <String>]: Last local (link-local or site-local) IPv6 address associated with this NIC.
    [MacAddress <String>]: MAC address of the NIC on this host.
  [OS <String>]: 
  [OSVersion <String>]: 
  [ParentHost <String>]: 
  [RelatedHostIds <String[]>]: 
  [RiskScore <String>]: 
  [Tags <String[]>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

LOGONUSERS <IMicrosoftGraphLogonUser[]>: .
  [AccountDomain <String>]: Domain of user account used to logon.
  [AccountName <String>]: Account name of user account used to logon.
  [AccountType <String>]: userAccountSecurityType
  [FirstSeenDateTime <DateTime?>]: DateTime at which the earliest logon by this user account occurred (provider-determined period). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [LastSeenDateTime <DateTime?>]: DateTime at which the latest logon by this user account occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [LogonId <String>]: User logon ID.
  [LogonTypes <String[]>]: Collection of the logon types observed for the logged on user from when first to last seen. Possible values are: unknown, interactive, remoteInteractive, network, batch, service.

NETWORKINTERFACES <IMicrosoftGraphNetworkInterface[]>: .
  [Description <String>]: Description of the NIC (e.g. Ethernet adapter, Wireless LAN adapter Local Area Connection <#/>, etc.).
  [IPV4Address <String>]: Last IPv4 address associated with this NIC.
  [IPV6Address <String>]: Last Public (aka global) IPv6 address associated with this NIC.
  [LocalIPV6Address <String>]: Last local (link-local or site-local) IPv6 address associated with this NIC.
  [MacAddress <String>]: MAC address of the NIC on this host.

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecurityhostsecurityprofile
#>
function New-MgSecurityHostSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityProfile]
    # hostSecurityProfile
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
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FirstSeenDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Fqdn},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsAzureAdJoined},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsAzureAdRegistered},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsHybridAzureDomainJoined},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastSeenDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLogonUser[]]
    # .
    # To construct, see NOTES section for LOGONUSERS properties and create a hash table.
    ${LogonUsers},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetBiosName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphNetworkInterface[]]
    # .
    # To construct, see NOTES section for NETWORKINTERFACES properties and create a hash table.
    ${NetworkInterfaces},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${OS},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${OSVersion},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ParentHost},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${RelatedHostIds},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityHostSecurityProfile_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityHostSecurityProfile_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to incidents for security
.Description
Create new navigation property to incidents for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncident
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncident
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphIncident>: incident
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AssignedTo <String>]: 
  [Classification <String>]: m365AlertClassification
  [Comments <IMicrosoftGraphM365AlertComment[]>]: 
    [Comment <String>]: 
    [CreatedByDisplayName <String>]: 
    [CreatedDateTime <DateTime?>]: 
  [CreatedDateTime <DateTime?>]: 
  [Determination <String>]: m365AlertDetermination
  [DisplayName <String>]: 
  [IncidentWebUrl <String>]: 
  [LastUpdateDateTime <DateTime?>]: 
  [RedirectIncidentId <String>]: 
  [Severity <String>]: m365AlertSeverity
  [Status <String>]: incidentStatus
  [Tags <String[]>]: 

COMMENTS <IMicrosoftGraphM365AlertComment[]>: .
  [Comment <String>]: 
  [CreatedByDisplayName <String>]: 
  [CreatedDateTime <DateTime?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecurityincident
#>
function New-MgSecurityIncident {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncident])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncident]
    # incident
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
    # .
    ${AssignedTo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # m365AlertClassification
    ${Classification},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphM365AlertComment[]]
    # .
    # To construct, see NOTES section for COMMENTS properties and create a hash table.
    ${Comments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # m365AlertDetermination
    ${Determination},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${IncidentWebUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastUpdateDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RedirectIncidentId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # m365AlertSeverity
    ${Severity},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # incidentStatus
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityIncident_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityIncident_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to ipSecurityProfiles for security
.Description
Create new navigation property to ipSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPSecurityProfile
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphIPSecurityProfile>: ipSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivityGroupNames <String[]>]: 
  [Address <String>]: 
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [CountHits <Int32?>]: 
  [CountHosts <Int32?>]: 
  [FirstSeenDateTime <DateTime?>]: 
  [IPCategories <IMicrosoftGraphIPCategory[]>]: 
    [Description <String>]: 
    [Name <String>]: 
    [Vendor <String>]: 
  [IPReferenceData <IMicrosoftGraphIPReferenceData[]>]: 
    [Asn <Int64?>]: 
    [City <String>]: 
    [CountryOrRegionCode <String>]: 
    [Organization <String>]: 
    [State <String>]: 
    [Vendor <String>]: 
  [LastSeenDateTime <DateTime?>]: 
  [RiskScore <String>]: 
  [Tags <String[]>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

IPCATEGORIES <IMicrosoftGraphIPCategory[]>: .
  [Description <String>]: 
  [Name <String>]: 
  [Vendor <String>]: 

IPREFERENCEDATA <IMicrosoftGraphIPReferenceData[]>: .
  [Asn <Int64?>]: 
  [City <String>]: 
  [CountryOrRegionCode <String>]: 
  [Organization <String>]: 
  [State <String>]: 
  [Vendor <String>]: 

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecurityipsecurityprofile
#>
function New-MgSecurityIPSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPSecurityProfile]
    # ipSecurityProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${ActivityGroupNames},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Address},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${CountHits},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${CountHosts},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FirstSeenDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPCategory[]]
    # .
    # To construct, see NOTES section for IPCATEGORIES properties and create a hash table.
    ${IPCategories},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPReferenceData[]]
    # .
    # To construct, see NOTES section for IPREFERENCEDATA properties and create a hash table.
    ${IPReferenceData},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastSeenDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityIPSecurityProfile_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityIPSecurityProfile_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to providerTenantSettings for security
.Description
Create new navigation property to providerTenantSettings for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProviderTenantSetting
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProviderTenantSetting
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphProviderTenantSetting>: providerTenantSetting
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AzureTenantId <String>]: 
  [Enabled <Boolean?>]: 
  [LastModifiedDateTime <DateTime?>]: 
  [Provider <String>]: 
  [Vendor <String>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecurityprovidertenantsetting
#>
function New-MgSecurityProviderTenantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProviderTenantSetting])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProviderTenantSetting]
    # providerTenantSetting
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
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${Enabled},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Provider},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Vendor},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityProviderTenantSetting_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityProviderTenantSetting_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to secureScoreControlProfiles for security
.Description
Create new navigation property to secureScoreControlProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSecureScoreControlProfile>: secureScoreControlProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActionType <String>]: Control action type (Config, Review, Behavior).
  [ActionUrl <String>]: URL to where the control can be actioned.
  [AzureTenantId <String>]: GUID string for tenant ID.
  [ComplianceInformation <IMicrosoftGraphComplianceInformation[]>]: The collection of compliance information associated with secure score control
    [CertificationControls <IMicrosoftGraphCertificationControl[]>]: Collection of the certification controls associated with certification
      [Name <String>]: Certification control name
      [Url <String>]: URL for the Microsoft Service Trust Portal
    [CertificationName <String>]: Compliance certification name (for example, ISO 27018:2014, GDPR, FedRAMP, NIST 800-171)
  [ControlCategory <String>]: Control action category (Identity, Data, Device, Apps, Infrastructure).
  [ControlStateUpdates <IMicrosoftGraphSecureScoreControlStateUpdate[]>]: Flag to indicate where the tenant has marked a control (ignore, thirdParty, reviewed) (supports update).
    [AssignedTo <String>]: 
    [Comment <String>]: 
    [State <String>]: 
    [UpdatedBy <String>]: 
    [UpdatedDateTime <DateTime?>]: 
  [Deprecated <Boolean?>]: Flag to indicate if a control is depreciated.
  [ImplementationCost <String>]: Resource cost of implemmentating control (low, moderate, high).
  [LastModifiedDateTime <DateTime?>]: Time at which the control profile entity was last modified. The Timestamp type represents date and time
  [MaxScore <Double?>]: max attainable score for the control.
  [Rank <Int32?>]: Microsoft's stack ranking of control.
  [Remediation <String>]: Description of what the control will help remediate.
  [RemediationImpact <String>]: Description of the impact on users of the remediation.
  [Service <String>]: Service that owns the control (Exchange, Sharepoint, Azure AD).
  [Threats <String[]>]: List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
  [Tier <String>]: Control tier (Core, Defense in Depth, Advanced.)
  [Title <String>]: Title of the control.
  [UserImpact <String>]: User impact of implementing control (low, moderate, high).
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

COMPLIANCEINFORMATION <IMicrosoftGraphComplianceInformation[]>: The collection of compliance information associated with secure score control
  [CertificationControls <IMicrosoftGraphCertificationControl[]>]: Collection of the certification controls associated with certification
    [Name <String>]: Certification control name
    [Url <String>]: URL for the Microsoft Service Trust Portal
  [CertificationName <String>]: Compliance certification name (for example, ISO 27018:2014, GDPR, FedRAMP, NIST 800-171)

CONTROLSTATEUPDATES <IMicrosoftGraphSecureScoreControlStateUpdate[]>: Flag to indicate where the tenant has marked a control (ignore, thirdParty, reviewed) (supports update).
  [AssignedTo <String>]: 
  [Comment <String>]: 
  [State <String>]: 
  [UpdatedBy <String>]: 
  [UpdatedDateTime <DateTime?>]: 

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritysecurescorecontrolprofile
#>
function New-MgSecuritySecureScoreControlProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile]
    # secureScoreControlProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action type (Config, Review, Behavior).
    ${ActionType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # URL to where the control can be actioned.
    ${ActionUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceInformation[]]
    # The collection of compliance information associated with secure score control
    # To construct, see NOTES section for COMPLIANCEINFORMATION properties and create a hash table.
    ${ComplianceInformation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action category (Identity, Data, Device, Apps, Infrastructure).
    ${ControlCategory},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlStateUpdate[]]
    # Flag to indicate where the tenant has marked a control (ignore, thirdParty, reviewed) (supports update).
    # To construct, see NOTES section for CONTROLSTATEUPDATES properties and create a hash table.
    ${ControlStateUpdates},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag to indicate if a control is depreciated.
    ${Deprecated},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Resource cost of implemmentating control (low, moderate, high).
    ${ImplementationCost},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the control profile entity was last modified.
    # The Timestamp type represents date and time
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # max attainable score for the control.
    ${MaxScore},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Microsoft's stack ranking of control.
    ${Rank},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of what the control will help remediate.
    ${Remediation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the impact on users of the remediation.
    ${RemediationImpact},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Service that owns the control (Exchange, Sharepoint, Azure AD).
    ${Service},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
    ${Threats},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control tier (Core, Defense in Depth, Advanced.)
    ${Tier},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the control.
    ${Title},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # User impact of implementing control (low, moderate, high).
    ${UserImpact},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScoreControlProfile_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScoreControlProfile_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to secureScores for security
.Description
Create new navigation property to secureScores for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

AVERAGECOMPARATIVESCORES <IMicrosoftGraphAverageComparativeScore[]>: Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
  [AverageScore <Double?>]: Average score within specified basis.
  [Basis <String>]: Scope type. The possible values are: AllTenants, TotalSeats, IndustryTypes.

BODYPARAMETER <IMicrosoftGraphSecureScore>: secureScore
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveUserCount <Int32?>]: Active user count of the given tenant.
  [AverageComparativeScores <IMicrosoftGraphAverageComparativeScore[]>]: Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
    [AverageScore <Double?>]: Average score within specified basis.
    [Basis <String>]: Scope type. The possible values are: AllTenants, TotalSeats, IndustryTypes.
  [AzureTenantId <String>]: GUID string for tenant ID.
  [ControlScores <IMicrosoftGraphControlScore[]>]: Contains tenant scores for a set of controls.
    [ControlCategory <String>]: Control action category (Identity, Data, Device, Apps, Infrastructure).
    [ControlName <String>]: Control unique name.
    [Description <String>]: Description of the control.
    [Score <Double?>]: Tenant achieved score for the control (it varies day by day depending on tenant operations on the control).
  [CreatedDateTime <DateTime?>]: The date when the entity is created.
  [CurrentScore <Double?>]: Tenant current attained score on specified date.
  [EnabledServices <String[]>]: Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
  [LicensedUserCount <Int32?>]: Licensed user count of the given tenant.
  [MaxScore <Double?>]: Tenant maximum possible score on specified date.
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

CONTROLSCORES <IMicrosoftGraphControlScore[]>: Contains tenant scores for a set of controls.
  [ControlCategory <String>]: Control action category (Identity, Data, Device, Apps, Infrastructure).
  [ControlName <String>]: Control unique name.
  [Description <String>]: Description of the control.
  [Score <Double?>]: Tenant achieved score for the control (it varies day by day depending on tenant operations on the control).

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritysecurescore
#>
function New-MgSecuritySecureScore {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore]
    # secureScore
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Active user count of the given tenant.
    ${ActiveUserCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAverageComparativeScore[]]
    # Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
    # To construct, see NOTES section for AVERAGECOMPARATIVESCORES properties and create a hash table.
    ${AverageComparativeScores},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphControlScore[]]
    # Contains tenant scores for a set of controls.
    # To construct, see NOTES section for CONTROLSCORES properties and create a hash table.
    ${ControlScores},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date when the entity is created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant current attained score on specified date.
    ${CurrentScore},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
    ${EnabledServices},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Licensed user count of the given tenant.
    ${LicensedUserCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant maximum possible score on specified date.
    ${MaxScore},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScore_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScore_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to tiIndicators for security
.Description
Create new navigation property to tiIndicators for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphTiIndicator>: tiIndicator
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Action <String>]: tiAction
  [ActivityGroupNames <String[]>]: The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
  [AdditionalInformation <String>]: A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
  [AzureTenantId <String>]: Stamped by the system when the indicator is ingested. The Azure Active Directory tenant id of submitting client. Required.
  [Confidence <Int32?>]: An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.
  [Description <String>]: Brief description (100 characters or less) of the threat represented by the indicator. Required.
  [DiamondModel <String>]: diamondModel
  [DomainName <String>]: 
  [EmailEncoding <String>]: 
  [EmailLanguage <String>]: 
  [EmailRecipient <String>]: 
  [EmailSenderAddress <String>]: 
  [EmailSenderName <String>]: 
  [EmailSourceDomain <String>]: 
  [EmailSourceIPAddress <String>]: 
  [EmailSubject <String>]: 
  [EmailXMailer <String>]: 
  [ExpirationDateTime <DateTime?>]: DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
  [ExternalId <String>]: An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key).
  [FileCompileDateTime <DateTime?>]: 
  [FileCreatedDateTime <DateTime?>]: 
  [FileHashType <String>]: fileHashType
  [FileHashValue <String>]: 
  [FileMutexName <String>]: 
  [FileName <String>]: 
  [FilePacker <String>]: 
  [FilePath <String>]: 
  [FileSize <Int64?>]: 
  [FileType <String>]: 
  [IngestedDateTime <DateTime?>]: Stamped by the system when the indicator is ingested. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [IsActive <Boolean?>]: Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
  [KillChain <String[]>]: A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See ‘killChain values’ below for exact values.
  [KnownFalsePositives <String>]: Scenarios in which the indicator may cause false positives. This should be human-readable text.
  [LastReportedDateTime <DateTime?>]: The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [MalwareFamilyNames <String[]>]: The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
  [NetworkCidrBlock <String>]: 
  [NetworkDestinationAsn <Int64?>]: 
  [NetworkDestinationCidrBlock <String>]: 
  [NetworkDestinationIPv4 <String>]: 
  [NetworkDestinationIPv6 <String>]: 
  [NetworkDestinationPort <Int32?>]: 
  [NetworkIPv4 <String>]: 
  [NetworkIPv6 <String>]: 
  [NetworkPort <Int32?>]: 
  [NetworkProtocol <Int32?>]: 
  [NetworkSourceAsn <Int64?>]: 
  [NetworkSourceCidrBlock <String>]: 
  [NetworkSourceIPv4 <String>]: 
  [NetworkSourceIPv6 <String>]: 
  [NetworkSourcePort <Int32?>]: 
  [PassiveOnly <Boolean?>]: Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false.
  [Severity <Int32?>]: An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3.
  [Tags <String[]>]: A JSON array of strings that stores arbitrary tags/keywords.
  [TargetProduct <String>]: A string value representing a single security product to which the indicator should be applied. Acceptable values are: Azure Sentinel, Microsoft Defender ATP. Required
  [ThreatType <String>]: Each indicator must have a valid Indicator Threat Type. Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList. Required.
  [TlpLevel <String>]: tlpLevel
  [Url <String>]: 
  [UserAgent <String>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritytiindicator
#>
function New-MgSecurityTiIndicator {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator]
    # tiIndicator
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # tiAction
    ${Action},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
    ${ActivityGroupNames},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed.
    # Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
    ${AdditionalInformation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Stamped by the system when the indicator is ingested.
    # The Azure Active Directory tenant id of submitting client.
    # Required.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # An integer representing the confidence the data within the indicator accurately identifies malicious behavior.
    # Acceptable values are 0 – 100 with 100 being the highest.
    ${Confidence},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Brief description (100 characters or less) of the threat represented by the indicator.
    # Required.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # diamondModel
    ${DiamondModel},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DomainName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailEncoding},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailLanguage},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailRecipient},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailSenderAddress},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailSenderName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailSourceDomain},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailSourceIPAddress},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailSubject},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailXMailer},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime string indicating when the Indicator expires.
    # All indicators must have an expiration date to avoid stale indicators persisting in the system.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # An identification number that ties the indicator back to the indicator provider’s system (e.g.
    # a foreign key).
    ${ExternalId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FileCompileDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FileCreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # fileHashType
    ${FileHashType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileHashValue},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileMutexName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FilePacker},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FilePath},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int64]
    # .
    ${FileSize},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Stamped by the system when the indicator is ingested.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${IngestedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Used to deactivate indicators within system.
    # By default, any indicator submitted is set as active.
    # However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
    ${IsActive},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # A JSON array of strings that describes which point or points on the Kill Chain this indicator targets.
    # See ‘killChain values’ below for exact values.
    ${KillChain},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Scenarios in which the indicator may cause false positives.
    # This should be human-readable text.
    ${KnownFalsePositives},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The last time the indicator was seen.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastReportedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The malware family name associated with an indicator if it exists.
    # Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
    ${MalwareFamilyNames},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkCidrBlock},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int64]
    # .
    ${NetworkDestinationAsn},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkDestinationCidrBlock},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkDestinationIPv4},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkDestinationIPv6},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${NetworkDestinationPort},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkIPv4},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkIPv6},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${NetworkPort},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${NetworkProtocol},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int64]
    # .
    ${NetworkSourceAsn},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkSourceCidrBlock},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkSourceIPv4},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkSourceIPv6},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${NetworkSourcePort},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Determines if the indicator should trigger an event that is visible to an end-user.
    # When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred.
    # This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action.
    # Default value is false.
    ${PassiveOnly},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # An integer representing the severity of the malicious behavior identified by the data within the indicator.
    # Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all.
    # Default value is 3.
    ${Severity},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # A JSON array of strings that stores arbitrary tags/keywords.
    ${Tags},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A string value representing a single security product to which the indicator should be applied.
    # Acceptable values are: Azure Sentinel, Microsoft Defender ATP.
    # Required
    ${TargetProduct},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Each indicator must have a valid Indicator Threat Type.
    # Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList.
    # Required.
    ${ThreatType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # tlpLevel
    ${TlpLevel},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Url},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${UserAgent},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityTiIndicator_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityTiIndicator_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to userSecurityProfiles for security
.Description
Create new navigation property to userSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityProfile
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACCOUNTS <IMicrosoftGraphUserAccount[]>: .
  [DisplayName <String>]: 
  [LastSeenDateTime <DateTime?>]: 
  [RiskScore <String>]: 
  [Service <String>]: 
  [SigninName <String>]: 
  [Status <String>]: accountStatus

BODYPARAMETER <IMicrosoftGraphUserSecurityProfile>: userSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Accounts <IMicrosoftGraphUserAccount[]>]: 
    [DisplayName <String>]: 
    [LastSeenDateTime <DateTime?>]: 
    [RiskScore <String>]: 
    [Service <String>]: 
    [SigninName <String>]: 
    [Status <String>]: accountStatus
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [LastModifiedDateTime <DateTime?>]: 
  [RiskScore <String>]: 
  [Tags <String[]>]: 
  [UserPrincipalName <String>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecurityusersecurityprofile
#>
function New-MgSecurityUserSecurityProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityProfile])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityProfile]
    # userSecurityProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserAccount[]]
    # .
    # To construct, see NOTES section for ACCOUNTS properties and create a hash table.
    ${Accounts},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${UserPrincipalName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityUserSecurityProfile_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityUserSecurityProfile_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property securityActions for security
.Description
Delete navigation property securityActions for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecurityaction
#>
function Remove-MgSecurityAction {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of securityAction
    ${SecurityActionId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityAction_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityAction_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecurityalert
#>
function Remove-MgSecurityAlert {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of alert
    ${AlertId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityAlert_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityAlert_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Provides tenants capability to launch a simulated and realistic phishing attack and learn from it.
.Description
Provides tenants capability to launch a simulated and realistic phishing attack and learn from it.

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecurityattacksimulation
#>
function Remove-MgSecurityAttackSimulation {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of simulation
    ${SimulationId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityAttackSimulation_Delete';
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityAttackSimulation_Delete1';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityAttackSimulation_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property cloudAppSecurityProfiles for security
.Description
Delete navigation property cloudAppSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycloudappsecurityprofile
#>
function Remove-MgSecurityCloudAppSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of cloudAppSecurityProfile
    ${CloudAppSecurityProfileId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityCloudAppSecurityProfile_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityCloudAppSecurityProfile_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property domainSecurityProfiles for security
.Description
Delete navigation property domainSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritydomainsecurityprofile
#>
function Remove-MgSecurityDomainSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of domainSecurityProfile
    ${DomainSecurityProfileId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityDomainSecurityProfile_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityDomainSecurityProfile_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property fileSecurityProfiles for security
.Description
Delete navigation property fileSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecurityfilesecurityprofile
#>
function Remove-MgSecurityFileSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of fileSecurityProfile
    ${FileSecurityProfileId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityFileSecurityProfile_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityFileSecurityProfile_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property hostSecurityProfiles for security
.Description
Delete navigation property hostSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecurityhostsecurityprofile
#>
function Remove-MgSecurityHostSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of hostSecurityProfile
    ${HostSecurityProfileId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityHostSecurityProfile_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityHostSecurityProfile_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property incidents for security
.Description
Delete navigation property incidents for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecurityincident
#>
function Remove-MgSecurityIncident {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of incident
    ${IncidentId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityIncident_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityIncident_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property ipSecurityProfiles for security
.Description
Delete navigation property ipSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecurityipsecurityprofile
#>
function Remove-MgSecurityIPSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ipSecurityProfile
    ${IPSecurityProfileId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityIPSecurityProfile_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityIPSecurityProfile_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property providerTenantSettings for security
.Description
Delete navigation property providerTenantSettings for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecurityprovidertenantsetting
#>
function Remove-MgSecurityProviderTenantSetting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of providerTenantSetting
    ${ProviderTenantSettingId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityProviderTenantSetting_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityProviderTenantSetting_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property secureScoreControlProfiles for security
.Description
Delete navigation property secureScoreControlProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritysecurescorecontrolprofile
#>
function Remove-MgSecuritySecureScoreControlProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScoreControlProfile
    ${SecureScoreControlProfileId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScoreControlProfile_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScoreControlProfile_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property secureScores for security
.Description
Delete navigation property secureScores for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritysecurescore
#>
function Remove-MgSecuritySecureScore {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScore
    ${SecureScoreId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScore_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScore_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action deleteTiIndicatorsByExternalId
.Description
Invoke action deleteTiIndicatorsByExternalId

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Jddi17SecurityTiindicatorsMicrosoftGraphDeletetiindicatorsbyexternalidPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Jddi17SecurityTiindicatorsMicrosoftGraphDeletetiindicatorsbyexternalidPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Value <String[]>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritytiindicatorbyexternalid
#>
function Remove-MgSecurityTiIndicatorByExternalId {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo])]
[CmdletBinding(DefaultParameterSetName='DeleteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Jddi17SecurityTiindicatorsMicrosoftGraphDeletetiindicatorsbyexternalidPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='DeleteExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='DeleteExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Delete2 = 'Microsoft.Graph.Security.private\Remove-MgSecurityTiIndicatorByExternalId_Delete2';
            DeleteExpanded1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityTiIndicatorByExternalId_DeleteExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action deleteTiIndicators
.Description
Invoke action deleteTiIndicators

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths9Mf33ASecurityTiindicatorsMicrosoftGraphDeletetiindicatorsPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths9Mf33ASecurityTiindicatorsMicrosoftGraphDeletetiindicatorsPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Value <String[]>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritytiindicatormultiple
#>
function Remove-MgSecurityTiIndicatorMultiple {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo])]
[CmdletBinding(DefaultParameterSetName='DeleteExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths9Mf33ASecurityTiindicatorsMicrosoftGraphDeletetiindicatorsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='DeleteExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='DeleteExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityTiIndicatorMultiple_Delete1';
            DeleteExpanded = 'Microsoft.Graph.Security.private\Remove-MgSecurityTiIndicatorMultiple_DeleteExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property tiIndicators for security
.Description
Delete navigation property tiIndicators for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritytiindicator
#>
function Remove-MgSecurityTiIndicator {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of tiIndicator
    ${TiIndicatorId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityTiIndicator_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityTiIndicator_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property userSecurityProfiles for security
.Description
Delete navigation property userSecurityProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecurityusersecurityprofile
#>
function Remove-MgSecurityUserSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userSecurityProfile
    ${UserSecurityProfileId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityUserSecurityProfile_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityUserSecurityProfile_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action runHuntingQuery
.Description
Invoke action runHuntingQuery

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsGnexr2SecurityMicrosoftGraphRunhuntingqueryPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHuntingQueryResults
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsGnexr2SecurityMicrosoftGraphRunhuntingqueryPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Query <String>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/start-mgsecurityhuntingquery
#>
function Start-MgSecurityHuntingQuery {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHuntingQueryResults])]
[CmdletBinding(DefaultParameterSetName='RunExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Run', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsGnexr2SecurityMicrosoftGraphRunhuntingqueryPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RunExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RunExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Query},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Run = 'Microsoft.Graph.Security.private\Start-MgSecurityHuntingQuery_Run';
            RunExpanded = 'Microsoft.Graph.Security.private\Start-MgSecurityHuntingQuery_RunExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action cancelSecurityAction
.Description
Invoke action cancelSecurityAction

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/stop-mgsecurityaction
#>
function Stop-MgSecurityAction {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Cancel', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Cancel', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of securityAction
    ${SecurityActionId},

    [Parameter(ParameterSetName='CancelViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Cancel = 'Microsoft.Graph.Security.private\Stop-MgSecurityAction_Cancel';
            CancelViaIdentity = 'Microsoft.Graph.Security.private\Stop-MgSecurityAction_CancelViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action submitTiIndicators
.Description
Invoke action submitTiIndicators

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths18Nbj75SecurityTiindicatorsMicrosoftGraphSubmittiindicatorsPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths18Nbj75SecurityTiindicatorsMicrosoftGraphSubmittiindicatorsPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Value <IMicrosoftGraphTiIndicator[]>]: 
    [Id <String>]: Read-only.
    [Action <String>]: tiAction
    [ActivityGroupNames <String[]>]: The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
    [AdditionalInformation <String>]: A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
    [AzureTenantId <String>]: Stamped by the system when the indicator is ingested. The Azure Active Directory tenant id of submitting client. Required.
    [Confidence <Int32?>]: An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.
    [Description <String>]: Brief description (100 characters or less) of the threat represented by the indicator. Required.
    [DiamondModel <String>]: diamondModel
    [DomainName <String>]: 
    [EmailEncoding <String>]: 
    [EmailLanguage <String>]: 
    [EmailRecipient <String>]: 
    [EmailSenderAddress <String>]: 
    [EmailSenderName <String>]: 
    [EmailSourceDomain <String>]: 
    [EmailSourceIPAddress <String>]: 
    [EmailSubject <String>]: 
    [EmailXMailer <String>]: 
    [ExpirationDateTime <DateTime?>]: DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
    [ExternalId <String>]: An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key).
    [FileCompileDateTime <DateTime?>]: 
    [FileCreatedDateTime <DateTime?>]: 
    [FileHashType <String>]: fileHashType
    [FileHashValue <String>]: 
    [FileMutexName <String>]: 
    [FileName <String>]: 
    [FilePacker <String>]: 
    [FilePath <String>]: 
    [FileSize <Int64?>]: 
    [FileType <String>]: 
    [IngestedDateTime <DateTime?>]: Stamped by the system when the indicator is ingested. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [IsActive <Boolean?>]: Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
    [KillChain <String[]>]: A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See ‘killChain values’ below for exact values.
    [KnownFalsePositives <String>]: Scenarios in which the indicator may cause false positives. This should be human-readable text.
    [LastReportedDateTime <DateTime?>]: The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [MalwareFamilyNames <String[]>]: The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
    [NetworkCidrBlock <String>]: 
    [NetworkDestinationAsn <Int64?>]: 
    [NetworkDestinationCidrBlock <String>]: 
    [NetworkDestinationIPv4 <String>]: 
    [NetworkDestinationIPv6 <String>]: 
    [NetworkDestinationPort <Int32?>]: 
    [NetworkIPv4 <String>]: 
    [NetworkIPv6 <String>]: 
    [NetworkPort <Int32?>]: 
    [NetworkProtocol <Int32?>]: 
    [NetworkSourceAsn <Int64?>]: 
    [NetworkSourceCidrBlock <String>]: 
    [NetworkSourceIPv4 <String>]: 
    [NetworkSourceIPv6 <String>]: 
    [NetworkSourcePort <Int32?>]: 
    [PassiveOnly <Boolean?>]: Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false.
    [Severity <Int32?>]: An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3.
    [Tags <String[]>]: A JSON array of strings that stores arbitrary tags/keywords.
    [TargetProduct <String>]: A string value representing a single security product to which the indicator should be applied. Acceptable values are: Azure Sentinel, Microsoft Defender ATP. Required
    [ThreatType <String>]: Each indicator must have a valid Indicator Threat Type. Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList. Required.
    [TlpLevel <String>]: tlpLevel
    [Url <String>]: 
    [UserAgent <String>]: 

VALUE <IMicrosoftGraphTiIndicator[]>: .
  [Id <String>]: Read-only.
  [Action <String>]: tiAction
  [ActivityGroupNames <String[]>]: The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
  [AdditionalInformation <String>]: A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
  [AzureTenantId <String>]: Stamped by the system when the indicator is ingested. The Azure Active Directory tenant id of submitting client. Required.
  [Confidence <Int32?>]: An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.
  [Description <String>]: Brief description (100 characters or less) of the threat represented by the indicator. Required.
  [DiamondModel <String>]: diamondModel
  [DomainName <String>]: 
  [EmailEncoding <String>]: 
  [EmailLanguage <String>]: 
  [EmailRecipient <String>]: 
  [EmailSenderAddress <String>]: 
  [EmailSenderName <String>]: 
  [EmailSourceDomain <String>]: 
  [EmailSourceIPAddress <String>]: 
  [EmailSubject <String>]: 
  [EmailXMailer <String>]: 
  [ExpirationDateTime <DateTime?>]: DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
  [ExternalId <String>]: An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key).
  [FileCompileDateTime <DateTime?>]: 
  [FileCreatedDateTime <DateTime?>]: 
  [FileHashType <String>]: fileHashType
  [FileHashValue <String>]: 
  [FileMutexName <String>]: 
  [FileName <String>]: 
  [FilePacker <String>]: 
  [FilePath <String>]: 
  [FileSize <Int64?>]: 
  [FileType <String>]: 
  [IngestedDateTime <DateTime?>]: Stamped by the system when the indicator is ingested. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [IsActive <Boolean?>]: Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
  [KillChain <String[]>]: A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See ‘killChain values’ below for exact values.
  [KnownFalsePositives <String>]: Scenarios in which the indicator may cause false positives. This should be human-readable text.
  [LastReportedDateTime <DateTime?>]: The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [MalwareFamilyNames <String[]>]: The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
  [NetworkCidrBlock <String>]: 
  [NetworkDestinationAsn <Int64?>]: 
  [NetworkDestinationCidrBlock <String>]: 
  [NetworkDestinationIPv4 <String>]: 
  [NetworkDestinationIPv6 <String>]: 
  [NetworkDestinationPort <Int32?>]: 
  [NetworkIPv4 <String>]: 
  [NetworkIPv6 <String>]: 
  [NetworkPort <Int32?>]: 
  [NetworkProtocol <Int32?>]: 
  [NetworkSourceAsn <Int64?>]: 
  [NetworkSourceCidrBlock <String>]: 
  [NetworkSourceIPv4 <String>]: 
  [NetworkSourceIPv6 <String>]: 
  [NetworkSourcePort <Int32?>]: 
  [PassiveOnly <Boolean?>]: Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false.
  [Severity <Int32?>]: An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3.
  [Tags <String[]>]: A JSON array of strings that stores arbitrary tags/keywords.
  [TargetProduct <String>]: A string value representing a single security product to which the indicator should be applied. Acceptable values are: Azure Sentinel, Microsoft Defender ATP. Required
  [ThreatType <String>]: Each indicator must have a valid Indicator Threat Type. Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList. Required.
  [TlpLevel <String>]: tlpLevel
  [Url <String>]: 
  [UserAgent <String>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/submit-mgsecuritytiindicator
#>
function Submit-MgSecurityTiIndicator {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator])]
[CmdletBinding(DefaultParameterSetName='SubmitExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Submit', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths18Nbj75SecurityTiindicatorsMicrosoftGraphSubmittiindicatorsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SubmitExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SubmitExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator[]]
    # .
    # To construct, see NOTES section for VALUE properties and create a hash table.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Submit = 'Microsoft.Graph.Security.private\Submit-MgSecurityTiIndicator_Submit';
            SubmitExpanded = 'Microsoft.Graph.Security.private\Submit-MgSecurityTiIndicator_SubmitExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property securityActions in security
.Description
Update the navigation property securityActions in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityAction
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSecurityAction>: securityAction
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActionReason <String>]: Reason for invoking this action.
  [AppId <String>]: The Application ID of the calling application that submitted (POST) the action. The appId should be extracted from the auth token and not entered manually by the calling application.
  [AzureTenantId <String>]: Azure tenant ID of the entity to determine which tenant the entity belongs to (multi-tenancy support). The azureTenantId should be extracted from the auth token and not entered manually by the calling application.
  [ClientContext <String>]: 
  [CompletedDateTime <DateTime?>]: Timestamp when the action was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [CreatedDateTime <DateTime?>]: Timestamp when the action is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [ErrorInfo <IMicrosoftGraphResultInfo>]: resultInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Code <Int32?>]: The result code.
    [Message <String>]: The message.
    [Subcode <Int32?>]: The result sub-code.
  [LastActionDateTime <DateTime?>]: Timestamp when this action was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Name <String>]: Action name.
  [Parameters <IMicrosoftGraphKeyValuePair[]>]: Collection of parameters (key-value pairs) necessary to invoke the action, e.g. URL or fileHash to block, etc.). Required
    [Name <String>]: Name for this key-value pair
    [Value <String>]: Value for this key-value pair
  [States <IMicrosoftGraphSecurityActionState[]>]: Collection of securityActionState to keep the history of an action.
    [AppId <String>]: The Application ID of the calling application that submitted an update (PATCH) to the action. The appId should be extracted from the auth token and not entered manually by the calling application.
    [Status <String>]: operationStatus
    [UpdatedDateTime <DateTime?>]: Timestamp when the actionState was updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [User <String>]: The user principal name of the signed-in user that submitted an update (PATCH) to the action. The user should be extracted from the auth token and not entered manually by the calling application.
  [Status <String>]: operationStatus
  [User <String>]: The user principal name of the signed-in user that submitted  (POST) the action. The user should be extracted from the auth token and not entered manually by the calling application.
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

ERRORINFO <IMicrosoftGraphResultInfo>: resultInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Code <Int32?>]: The result code.
  [Message <String>]: The message.
  [Subcode <Int32?>]: The result sub-code.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile

PARAMETERS <IMicrosoftGraphKeyValuePair[]>: Collection of parameters (key-value pairs) necessary to invoke the action, e.g. URL or fileHash to block, etc.). Required
  [Name <String>]: Name for this key-value pair
  [Value <String>]: Value for this key-value pair

STATES <IMicrosoftGraphSecurityActionState[]>: Collection of securityActionState to keep the history of an action.
  [AppId <String>]: The Application ID of the calling application that submitted an update (PATCH) to the action. The appId should be extracted from the auth token and not entered manually by the calling application.
  [Status <String>]: operationStatus
  [UpdatedDateTime <DateTime?>]: Timestamp when the actionState was updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [User <String>]: The user principal name of the signed-in user that submitted an update (PATCH) to the action. The user should be extracted from the auth token and not entered manually by the calling application.

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecurityaction
#>
function Update-MgSecurityAction {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of securityAction
    ${SecurityActionId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityAction]
    # securityAction
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Reason for invoking this action.
    ${ActionReason},

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
    # The Application ID of the calling application that submitted (POST) the action.
    # The appId should be extracted from the auth token and not entered manually by the calling application.
    ${AppId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure tenant ID of the entity to determine which tenant the entity belongs to (multi-tenancy support).
    # The azureTenantId should be extracted from the auth token and not entered manually by the calling application.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp when the action was completed.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CompletedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Timestamp when the action is created.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, see NOTES section for ERRORINFO properties and create a hash table.
    ${ErrorInfo},

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
    # Timestamp when this action was last updated.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastActionDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Action name.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphKeyValuePair[]]
    # Collection of parameters (key-value pairs) necessary to invoke the action, e.g.
    # URL or fileHash to block, etc.).
    # Required
    # To construct, see NOTES section for PARAMETERS properties and create a hash table.
    ${Parameters},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityActionState[]]
    # Collection of securityActionState to keep the history of an action.
    # To construct, see NOTES section for STATES properties and create a hash table.
    ${States},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # operationStatus
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The user principal name of the signed-in user that submitted (POST) the action.
    # The user should be extracted from the auth token and not entered manually by the calling application.
    ${User},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityAction_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityAction_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityAction_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityAction_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action updateAlerts
.Description
Invoke action updateAlerts

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Ehzqn7SecurityAlertsMicrosoftGraphUpdatealertsPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Ehzqn7SecurityAlertsMicrosoftGraphUpdatealertsPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Value <IMicrosoftGraphAlert[]>]: 
    [Id <String>]: Read-only.
    [ActivityGroupName <String>]: Name or alias of the activity group (attacker) this alert is attributed to.
    [AlertDetections <IMicrosoftGraphAlertDetection[]>]: 
      [DetectionType <String>]: 
      [Method <String>]: 
      [Name <String>]: 
    [AssignedTo <String>]: Name of the analyst the alert is assigned to for triage, investigation, or remediation (supports update).
    [AzureSubscriptionId <String>]: Azure subscription ID, present if this alert is related to an Azure resource.
    [AzureTenantId <String>]: Azure Active Directory tenant ID. Required.
    [Category <String>]: Category of the alert (for example, credentialTheft, ransomware, etc.).
    [ClosedDateTime <DateTime?>]: Time at which the alert was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z (supports update).
    [CloudAppStates <IMicrosoftGraphCloudAppSecurityState[]>]: Security-related stateful information generated by the provider about the cloud application/s related to this alert.
      [DestinationServiceIP <String>]: Destination IP Address of the connection to the cloud application/service.
      [DestinationServiceName <String>]: Cloud application/service name (for example 'Salesforce', 'DropBox', etc.).
      [RiskScore <String>]: Provider-generated/calculated risk score of the Cloud Application/Service. Recommended value range of 0-1, which equates to a percentage.
    [Comments <String[]>]: Customer-provided comments on alert (for customer alert management) (supports update).
    [Confidence <Int32?>]: Confidence of the detection logic (percentage between 1-100).
    [CreatedDateTime <DateTime?>]: Time at which the alert was created by the alert provider. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
    [Description <String>]: Alert description.
    [DetectionIds <String[]>]: Set of alerts related to this alert entity (each alert is pushed to the SIEM as a separate record).
    [EventDateTime <DateTime?>]: Time at which the event(s) that served as the trigger(s) to generate the alert occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
    [Feedback <String>]: alertFeedback
    [FileStates <IMicrosoftGraphFileSecurityState[]>]: Security-related stateful information generated by the provider about the file(s) related to this alert.
      [FileHash <IMicrosoftGraphFileHash>]: fileHash
        [(Any) <Object>]: This indicates any property can be added to this object.
        [HashType <String>]: fileHashType
        [HashValue <String>]: Value of the file hash.
      [Name <String>]: File name (without path).
      [Path <String>]: Full file path of the file/imageFile.
      [RiskScore <String>]: Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.
    [HistoryStates <IMicrosoftGraphAlertHistoryState[]>]: A collection of alertHistoryStates comprising an audit log of all updates made to an alert.
      [AppId <String>]: The Application ID of the calling application that submitted an update (PATCH) to the alert. The appId should be extracted from the auth token and not entered manually by the calling application.
      [AssignedTo <String>]: UPN of user the alert was assigned to (note: alert.assignedTo only stores the last value/UPN).
      [Comments <String[]>]: Comment entered by signed-in user.
      [Feedback <String>]: alertFeedback
      [Status <String>]: alertStatus
      [UpdatedDateTime <DateTime?>]: Date and time of the alert update. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [User <String>]: UPN of the signed-in user that updated the alert (taken from the bearer token - if in user/delegated auth mode).
    [HostStates <IMicrosoftGraphHostSecurityState[]>]: Security-related stateful information generated by the provider about the host(s) related to this alert.
      [Fqdn <String>]: Host FQDN (Fully Qualified Domain Name) (for example, machine.company.com).
      [IsAzureAdJoined <Boolean?>]: 
      [IsAzureAdRegistered <Boolean?>]: 
      [IsHybridAzureDomainJoined <Boolean?>]: True if the host is domain joined to an on-premises Active Directory domain.
      [NetBiosName <String>]: The local host name, without the DNS domain name.
      [OS <String>]: Host Operating System. (For example, Windows10, MacOS, RHEL, etc.).
      [PrivateIPAddress <String>]: Private (not routable) IPv4 or IPv6 address (see RFC 1918) at the time of the alert.
      [PublicIPAddress <String>]: Publicly routable IPv4 or IPv6 address (see RFC 1918) at time of the alert.
      [RiskScore <String>]: Provider-generated/calculated risk score of the host.  Recommended value range of 0-1, which equates to a percentage.
    [IncidentIds <String[]>]: IDs of incidents related to current alert.
    [InvestigationSecurityStates <IMicrosoftGraphInvestigationSecurityState[]>]: 
      [Name <String>]: 
      [Status <String>]: 
    [LastEventDateTime <DateTime?>]: 
    [LastModifiedDateTime <DateTime?>]: Time at which the alert entity was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [MalwareStates <IMicrosoftGraphMalwareState[]>]: Threat Intelligence pertaining to malware related to this alert.
      [Category <String>]: Provider-generated malware category (for example, trojan, ransomware, etc.).
      [Family <String>]: Provider-generated malware family (for example, 'wannacry', 'notpetya', etc.).
      [Name <String>]: Provider-generated malware variant name (for example, Trojan:Win32/Powessere.H).
      [Severity <String>]: Provider-determined severity of this malware.
      [WasRunning <Boolean?>]: Indicates whether the detected file (malware/vulnerability) was running at the time of detection or was detected at rest on the disk.
    [MessageSecurityStates <IMicrosoftGraphMessageSecurityState[]>]: 
      [ConnectingIP <String>]: 
      [DeliveryAction <String>]: 
      [DeliveryLocation <String>]: 
      [Directionality <String>]: 
      [InternetMessageId <String>]: 
      [MessageFingerprint <String>]: 
      [MessageReceivedDateTime <DateTime?>]: 
      [MessageSubject <String>]: 
      [NetworkMessageId <String>]: 
    [NetworkConnections <IMicrosoftGraphNetworkConnection[]>]: Security-related stateful information generated by the provider about the network connection(s) related to this alert.
      [ApplicationName <String>]: Name of the application managing the network connection (for example, Facebook or SMTP).
      [DestinationAddress <String>]: Destination IP address (of the network connection).
      [DestinationDomain <String>]: Destination domain portion of the destination URL. (for example 'www.contoso.com').
      [DestinationLocation <String>]: Location (by IP address mapping) associated with the destination of a network connection.
      [DestinationPort <String>]: Destination port (of the network connection).
      [DestinationUrl <String>]: Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')
      [Direction <String>]: connectionDirection
      [DomainRegisteredDateTime <DateTime?>]: Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [LocalDnsName <String>]: The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).
      [NatDestinationAddress <String>]: Network Address Translation destination IP address.
      [NatDestinationPort <String>]: Network Address Translation destination port.
      [NatSourceAddress <String>]: Network Address Translation source IP address.
      [NatSourcePort <String>]: Network Address Translation source port.
      [Protocol <String>]: securityNetworkProtocol
      [RiskScore <String>]: Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.
      [SourceAddress <String>]: Source (i.e. origin) IP address (of the network connection).
      [SourceLocation <String>]: Location (by IP address mapping) associated with the source of a network connection.
      [SourcePort <String>]: Source (i.e. origin) IP port (of the network connection).
      [Status <String>]: connectionStatus
      [UrlParameters <String>]: Parameters (suffix) of the destination URL.
    [Processes <IMicrosoftGraphProcess[]>]: Security-related stateful information generated by the provider about the process or processes related to this alert.
      [AccountName <String>]: User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.
      [CommandLine <String>]: The full process invocation commandline including all parameters.
      [CreatedDateTime <DateTime?>]: Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
      [FileHash <IMicrosoftGraphFileHash>]: fileHash
      [IntegrityLevel <String>]: processIntegrityLevel
      [IsElevated <Boolean?>]: True if the process is elevated.
      [Name <String>]: The name of the process' Image file.
      [ParentProcessCreatedDateTime <DateTime?>]: DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
      [ParentProcessId <Int32?>]: The Process ID (PID) of the parent process.
      [ParentProcessName <String>]: The name of the image file of the parent process.
      [Path <String>]: Full path, including filename.
      [ProcessId <Int32?>]: The Process ID (PID) of the process.
    [RecommendedActions <String[]>]: Vendor/provider recommended action(s) to take as a result of the alert (for example, isolate machine, enforce2FA, reimage host).
    [RegistryKeyStates <IMicrosoftGraphRegistryKeyState[]>]: Security-related stateful information generated by the provider about the registry keys related to this alert.
      [Hive <String>]: registryHive
      [Key <String>]: Current (i.e. changed) registry key (excludes HIVE).
      [OldKey <String>]: Previous (i.e. before changed) registry key (excludes HIVE).
      [OldValueData <String>]: Previous (i.e. before changed) registry key value data (contents).
      [OldValueName <String>]: Previous (i.e. before changed) registry key value name.
      [Operation <String>]: registryOperation
      [ProcessId <Int32?>]: Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).
      [ValueData <String>]: Current (i.e. changed) registry key value data (contents).
      [ValueName <String>]: Current (i.e. changed) registry key value name
      [ValueType <String>]: registryValueType
    [SecurityResources <IMicrosoftGraphSecurityResource[]>]: Resources related to current alert. For example, for some alerts this can have the Azure Resource value.
      [Resource <String>]: Name of the resource that is related to current alert. Required.
      [ResourceType <String>]: securityResourceType
    [Severity <String>]: alertSeverity
    [SourceMaterials <String[]>]: Hyperlinks (URIs) to the source material related to the alert, for example, provider's user interface for alerts or log search, etc.
    [Status <String>]: alertStatus
    [Tags <String[]>]: User-definable labels that can be applied to an alert and can serve as filter conditions (for example 'HVA', 'SAW', etc.) (supports update).
    [Title <String>]: Alert title. Required.
    [Triggers <IMicrosoftGraphAlertTrigger[]>]: Security-related information about the specific properties that triggered the alert (properties appearing in the alert). Alerts might contain information about multiple users, hosts, files, ip addresses. This field indicates which properties triggered the alert generation.
      [Name <String>]: Name of the property serving as a detection trigger.
      [Type <String>]: Type of the property in the key:value pair for interpretation. For example, String, Boolean etc.
      [Value <String>]: Value of the property serving as a detection trigger.
    [UriClickSecurityStates <IMicrosoftGraphUriClickSecurityState[]>]: 
      [ClickAction <String>]: 
      [ClickDateTime <DateTime?>]: 
      [Id <String>]: 
      [SourceId <String>]: 
      [UriDomain <String>]: 
      [Verdict <String>]: 
    [UserStates <IMicrosoftGraphUserSecurityState[]>]: Security-related stateful information generated by the provider about the user accounts related to this alert.
      [AadUserId <String>]: AAD User object identifier (GUID) - represents the physical/multi-account user entity.
      [AccountName <String>]: Account name of user account (without Active Directory domain or DNS domain) - (also called mailNickName).
      [DomainName <String>]: NetBIOS/Active Directory domain of user account (that is, domain/account format).
      [EmailRole <String>]: emailRole
      [IsVpn <Boolean?>]: Indicates whether the user logged on through a VPN.
      [LogonDateTime <DateTime?>]: Time at which the sign-in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
      [LogonIP <String>]: IP Address the sign-in request originated from.
      [LogonId <String>]: User sign-in ID.
      [LogonLocation <String>]: Location (by IP address mapping) associated with a user sign-in event by this user.
      [LogonType <String>]: logonType
      [OnPremisesSecurityIdentifier <String>]: Active Directory (on-premises) Security Identifier (SID) of the user.
      [RiskScore <String>]: Provider-generated/calculated risk score of the user account. Recommended value range of 0-1, which equates to a percentage.
      [UserAccountType <String>]: userAccountSecurityType
      [UserPrincipalName <String>]: User sign-in name - internet format: (user account name)@(user account DNS domain name).
    [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
      [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
      [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
      [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
    [VulnerabilityStates <IMicrosoftGraphVulnerabilityState[]>]: Threat intelligence pertaining to one or more vulnerabilities related to this alert.
      [Cve <String>]: Common Vulnerabilities and Exposures (CVE) for the vulnerability.
      [Severity <String>]: Base Common Vulnerability Scoring System (CVSS) severity score for this vulnerability.
      [WasRunning <Boolean?>]: Indicates whether the detected vulnerability (file) was running at the time of detection or was the file detected at rest on the disk.

VALUE <IMicrosoftGraphAlert[]>: .
  [Id <String>]: Read-only.
  [ActivityGroupName <String>]: Name or alias of the activity group (attacker) this alert is attributed to.
  [AlertDetections <IMicrosoftGraphAlertDetection[]>]: 
    [DetectionType <String>]: 
    [Method <String>]: 
    [Name <String>]: 
  [AssignedTo <String>]: Name of the analyst the alert is assigned to for triage, investigation, or remediation (supports update).
  [AzureSubscriptionId <String>]: Azure subscription ID, present if this alert is related to an Azure resource.
  [AzureTenantId <String>]: Azure Active Directory tenant ID. Required.
  [Category <String>]: Category of the alert (for example, credentialTheft, ransomware, etc.).
  [ClosedDateTime <DateTime?>]: Time at which the alert was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z (supports update).
  [CloudAppStates <IMicrosoftGraphCloudAppSecurityState[]>]: Security-related stateful information generated by the provider about the cloud application/s related to this alert.
    [DestinationServiceIP <String>]: Destination IP Address of the connection to the cloud application/service.
    [DestinationServiceName <String>]: Cloud application/service name (for example 'Salesforce', 'DropBox', etc.).
    [RiskScore <String>]: Provider-generated/calculated risk score of the Cloud Application/Service. Recommended value range of 0-1, which equates to a percentage.
  [Comments <String[]>]: Customer-provided comments on alert (for customer alert management) (supports update).
  [Confidence <Int32?>]: Confidence of the detection logic (percentage between 1-100).
  [CreatedDateTime <DateTime?>]: Time at which the alert was created by the alert provider. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
  [Description <String>]: Alert description.
  [DetectionIds <String[]>]: Set of alerts related to this alert entity (each alert is pushed to the SIEM as a separate record).
  [EventDateTime <DateTime?>]: Time at which the event(s) that served as the trigger(s) to generate the alert occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
  [Feedback <String>]: alertFeedback
  [FileStates <IMicrosoftGraphFileSecurityState[]>]: Security-related stateful information generated by the provider about the file(s) related to this alert.
    [FileHash <IMicrosoftGraphFileHash>]: fileHash
      [(Any) <Object>]: This indicates any property can be added to this object.
      [HashType <String>]: fileHashType
      [HashValue <String>]: Value of the file hash.
    [Name <String>]: File name (without path).
    [Path <String>]: Full file path of the file/imageFile.
    [RiskScore <String>]: Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.
  [HistoryStates <IMicrosoftGraphAlertHistoryState[]>]: A collection of alertHistoryStates comprising an audit log of all updates made to an alert.
    [AppId <String>]: The Application ID of the calling application that submitted an update (PATCH) to the alert. The appId should be extracted from the auth token and not entered manually by the calling application.
    [AssignedTo <String>]: UPN of user the alert was assigned to (note: alert.assignedTo only stores the last value/UPN).
    [Comments <String[]>]: Comment entered by signed-in user.
    [Feedback <String>]: alertFeedback
    [Status <String>]: alertStatus
    [UpdatedDateTime <DateTime?>]: Date and time of the alert update. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [User <String>]: UPN of the signed-in user that updated the alert (taken from the bearer token - if in user/delegated auth mode).
  [HostStates <IMicrosoftGraphHostSecurityState[]>]: Security-related stateful information generated by the provider about the host(s) related to this alert.
    [Fqdn <String>]: Host FQDN (Fully Qualified Domain Name) (for example, machine.company.com).
    [IsAzureAdJoined <Boolean?>]: 
    [IsAzureAdRegistered <Boolean?>]: 
    [IsHybridAzureDomainJoined <Boolean?>]: True if the host is domain joined to an on-premises Active Directory domain.
    [NetBiosName <String>]: The local host name, without the DNS domain name.
    [OS <String>]: Host Operating System. (For example, Windows10, MacOS, RHEL, etc.).
    [PrivateIPAddress <String>]: Private (not routable) IPv4 or IPv6 address (see RFC 1918) at the time of the alert.
    [PublicIPAddress <String>]: Publicly routable IPv4 or IPv6 address (see RFC 1918) at time of the alert.
    [RiskScore <String>]: Provider-generated/calculated risk score of the host.  Recommended value range of 0-1, which equates to a percentage.
  [IncidentIds <String[]>]: IDs of incidents related to current alert.
  [InvestigationSecurityStates <IMicrosoftGraphInvestigationSecurityState[]>]: 
    [Name <String>]: 
    [Status <String>]: 
  [LastEventDateTime <DateTime?>]: 
  [LastModifiedDateTime <DateTime?>]: Time at which the alert entity was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [MalwareStates <IMicrosoftGraphMalwareState[]>]: Threat Intelligence pertaining to malware related to this alert.
    [Category <String>]: Provider-generated malware category (for example, trojan, ransomware, etc.).
    [Family <String>]: Provider-generated malware family (for example, 'wannacry', 'notpetya', etc.).
    [Name <String>]: Provider-generated malware variant name (for example, Trojan:Win32/Powessere.H).
    [Severity <String>]: Provider-determined severity of this malware.
    [WasRunning <Boolean?>]: Indicates whether the detected file (malware/vulnerability) was running at the time of detection or was detected at rest on the disk.
  [MessageSecurityStates <IMicrosoftGraphMessageSecurityState[]>]: 
    [ConnectingIP <String>]: 
    [DeliveryAction <String>]: 
    [DeliveryLocation <String>]: 
    [Directionality <String>]: 
    [InternetMessageId <String>]: 
    [MessageFingerprint <String>]: 
    [MessageReceivedDateTime <DateTime?>]: 
    [MessageSubject <String>]: 
    [NetworkMessageId <String>]: 
  [NetworkConnections <IMicrosoftGraphNetworkConnection[]>]: Security-related stateful information generated by the provider about the network connection(s) related to this alert.
    [ApplicationName <String>]: Name of the application managing the network connection (for example, Facebook or SMTP).
    [DestinationAddress <String>]: Destination IP address (of the network connection).
    [DestinationDomain <String>]: Destination domain portion of the destination URL. (for example 'www.contoso.com').
    [DestinationLocation <String>]: Location (by IP address mapping) associated with the destination of a network connection.
    [DestinationPort <String>]: Destination port (of the network connection).
    [DestinationUrl <String>]: Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')
    [Direction <String>]: connectionDirection
    [DomainRegisteredDateTime <DateTime?>]: Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LocalDnsName <String>]: The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).
    [NatDestinationAddress <String>]: Network Address Translation destination IP address.
    [NatDestinationPort <String>]: Network Address Translation destination port.
    [NatSourceAddress <String>]: Network Address Translation source IP address.
    [NatSourcePort <String>]: Network Address Translation source port.
    [Protocol <String>]: securityNetworkProtocol
    [RiskScore <String>]: Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.
    [SourceAddress <String>]: Source (i.e. origin) IP address (of the network connection).
    [SourceLocation <String>]: Location (by IP address mapping) associated with the source of a network connection.
    [SourcePort <String>]: Source (i.e. origin) IP port (of the network connection).
    [Status <String>]: connectionStatus
    [UrlParameters <String>]: Parameters (suffix) of the destination URL.
  [Processes <IMicrosoftGraphProcess[]>]: Security-related stateful information generated by the provider about the process or processes related to this alert.
    [AccountName <String>]: User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.
    [CommandLine <String>]: The full process invocation commandline including all parameters.
    [CreatedDateTime <DateTime?>]: Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [FileHash <IMicrosoftGraphFileHash>]: fileHash
    [IntegrityLevel <String>]: processIntegrityLevel
    [IsElevated <Boolean?>]: True if the process is elevated.
    [Name <String>]: The name of the process' Image file.
    [ParentProcessCreatedDateTime <DateTime?>]: DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [ParentProcessId <Int32?>]: The Process ID (PID) of the parent process.
    [ParentProcessName <String>]: The name of the image file of the parent process.
    [Path <String>]: Full path, including filename.
    [ProcessId <Int32?>]: The Process ID (PID) of the process.
  [RecommendedActions <String[]>]: Vendor/provider recommended action(s) to take as a result of the alert (for example, isolate machine, enforce2FA, reimage host).
  [RegistryKeyStates <IMicrosoftGraphRegistryKeyState[]>]: Security-related stateful information generated by the provider about the registry keys related to this alert.
    [Hive <String>]: registryHive
    [Key <String>]: Current (i.e. changed) registry key (excludes HIVE).
    [OldKey <String>]: Previous (i.e. before changed) registry key (excludes HIVE).
    [OldValueData <String>]: Previous (i.e. before changed) registry key value data (contents).
    [OldValueName <String>]: Previous (i.e. before changed) registry key value name.
    [Operation <String>]: registryOperation
    [ProcessId <Int32?>]: Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).
    [ValueData <String>]: Current (i.e. changed) registry key value data (contents).
    [ValueName <String>]: Current (i.e. changed) registry key value name
    [ValueType <String>]: registryValueType
  [SecurityResources <IMicrosoftGraphSecurityResource[]>]: Resources related to current alert. For example, for some alerts this can have the Azure Resource value.
    [Resource <String>]: Name of the resource that is related to current alert. Required.
    [ResourceType <String>]: securityResourceType
  [Severity <String>]: alertSeverity
  [SourceMaterials <String[]>]: Hyperlinks (URIs) to the source material related to the alert, for example, provider's user interface for alerts or log search, etc.
  [Status <String>]: alertStatus
  [Tags <String[]>]: User-definable labels that can be applied to an alert and can serve as filter conditions (for example 'HVA', 'SAW', etc.) (supports update).
  [Title <String>]: Alert title. Required.
  [Triggers <IMicrosoftGraphAlertTrigger[]>]: Security-related information about the specific properties that triggered the alert (properties appearing in the alert). Alerts might contain information about multiple users, hosts, files, ip addresses. This field indicates which properties triggered the alert generation.
    [Name <String>]: Name of the property serving as a detection trigger.
    [Type <String>]: Type of the property in the key:value pair for interpretation. For example, String, Boolean etc.
    [Value <String>]: Value of the property serving as a detection trigger.
  [UriClickSecurityStates <IMicrosoftGraphUriClickSecurityState[]>]: 
    [ClickAction <String>]: 
    [ClickDateTime <DateTime?>]: 
    [Id <String>]: 
    [SourceId <String>]: 
    [UriDomain <String>]: 
    [Verdict <String>]: 
  [UserStates <IMicrosoftGraphUserSecurityState[]>]: Security-related stateful information generated by the provider about the user accounts related to this alert.
    [AadUserId <String>]: AAD User object identifier (GUID) - represents the physical/multi-account user entity.
    [AccountName <String>]: Account name of user account (without Active Directory domain or DNS domain) - (also called mailNickName).
    [DomainName <String>]: NetBIOS/Active Directory domain of user account (that is, domain/account format).
    [EmailRole <String>]: emailRole
    [IsVpn <Boolean?>]: Indicates whether the user logged on through a VPN.
    [LogonDateTime <DateTime?>]: Time at which the sign-in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [LogonIP <String>]: IP Address the sign-in request originated from.
    [LogonId <String>]: User sign-in ID.
    [LogonLocation <String>]: Location (by IP address mapping) associated with a user sign-in event by this user.
    [LogonType <String>]: logonType
    [OnPremisesSecurityIdentifier <String>]: Active Directory (on-premises) Security Identifier (SID) of the user.
    [RiskScore <String>]: Provider-generated/calculated risk score of the user account. Recommended value range of 0-1, which equates to a percentage.
    [UserAccountType <String>]: userAccountSecurityType
    [UserPrincipalName <String>]: User sign-in name - internet format: (user account name)@(user account DNS domain name).
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
  [VulnerabilityStates <IMicrosoftGraphVulnerabilityState[]>]: Threat intelligence pertaining to one or more vulnerabilities related to this alert.
    [Cve <String>]: Common Vulnerabilities and Exposures (CVE) for the vulnerability.
    [Severity <String>]: Base Common Vulnerability Scoring System (CVSS) severity score for this vulnerability.
    [WasRunning <Boolean?>]: Indicates whether the detected vulnerability (file) was running at the time of detection or was the file detected at rest on the disk.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecurityalertmultiple
#>
function Update-MgSecurityAlertMultiple {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ehzqn7SecurityAlertsMicrosoftGraphUpdatealertsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert[]]
    # .
    # To construct, see NOTES section for VALUE properties and create a hash table.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecurityAlertMultiple_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityAlertMultiple_UpdateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ALERTDETECTIONS <IMicrosoftGraphAlertDetection[]>: .
  [DetectionType <String>]: 
  [Method <String>]: 
  [Name <String>]: 

BODYPARAMETER <IMicrosoftGraphAlert>: alert
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivityGroupName <String>]: Name or alias of the activity group (attacker) this alert is attributed to.
  [AlertDetections <IMicrosoftGraphAlertDetection[]>]: 
    [DetectionType <String>]: 
    [Method <String>]: 
    [Name <String>]: 
  [AssignedTo <String>]: Name of the analyst the alert is assigned to for triage, investigation, or remediation (supports update).
  [AzureSubscriptionId <String>]: Azure subscription ID, present if this alert is related to an Azure resource.
  [AzureTenantId <String>]: Azure Active Directory tenant ID. Required.
  [Category <String>]: Category of the alert (for example, credentialTheft, ransomware, etc.).
  [ClosedDateTime <DateTime?>]: Time at which the alert was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z (supports update).
  [CloudAppStates <IMicrosoftGraphCloudAppSecurityState[]>]: Security-related stateful information generated by the provider about the cloud application/s related to this alert.
    [DestinationServiceIP <String>]: Destination IP Address of the connection to the cloud application/service.
    [DestinationServiceName <String>]: Cloud application/service name (for example 'Salesforce', 'DropBox', etc.).
    [RiskScore <String>]: Provider-generated/calculated risk score of the Cloud Application/Service. Recommended value range of 0-1, which equates to a percentage.
  [Comments <String[]>]: Customer-provided comments on alert (for customer alert management) (supports update).
  [Confidence <Int32?>]: Confidence of the detection logic (percentage between 1-100).
  [CreatedDateTime <DateTime?>]: Time at which the alert was created by the alert provider. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
  [Description <String>]: Alert description.
  [DetectionIds <String[]>]: Set of alerts related to this alert entity (each alert is pushed to the SIEM as a separate record).
  [EventDateTime <DateTime?>]: Time at which the event(s) that served as the trigger(s) to generate the alert occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
  [Feedback <String>]: alertFeedback
  [FileStates <IMicrosoftGraphFileSecurityState[]>]: Security-related stateful information generated by the provider about the file(s) related to this alert.
    [FileHash <IMicrosoftGraphFileHash>]: fileHash
      [(Any) <Object>]: This indicates any property can be added to this object.
      [HashType <String>]: fileHashType
      [HashValue <String>]: Value of the file hash.
    [Name <String>]: File name (without path).
    [Path <String>]: Full file path of the file/imageFile.
    [RiskScore <String>]: Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.
  [HistoryStates <IMicrosoftGraphAlertHistoryState[]>]: A collection of alertHistoryStates comprising an audit log of all updates made to an alert.
    [AppId <String>]: The Application ID of the calling application that submitted an update (PATCH) to the alert. The appId should be extracted from the auth token and not entered manually by the calling application.
    [AssignedTo <String>]: UPN of user the alert was assigned to (note: alert.assignedTo only stores the last value/UPN).
    [Comments <String[]>]: Comment entered by signed-in user.
    [Feedback <String>]: alertFeedback
    [Status <String>]: alertStatus
    [UpdatedDateTime <DateTime?>]: Date and time of the alert update. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [User <String>]: UPN of the signed-in user that updated the alert (taken from the bearer token - if in user/delegated auth mode).
  [HostStates <IMicrosoftGraphHostSecurityState[]>]: Security-related stateful information generated by the provider about the host(s) related to this alert.
    [Fqdn <String>]: Host FQDN (Fully Qualified Domain Name) (for example, machine.company.com).
    [IsAzureAdJoined <Boolean?>]: 
    [IsAzureAdRegistered <Boolean?>]: 
    [IsHybridAzureDomainJoined <Boolean?>]: True if the host is domain joined to an on-premises Active Directory domain.
    [NetBiosName <String>]: The local host name, without the DNS domain name.
    [OS <String>]: Host Operating System. (For example, Windows10, MacOS, RHEL, etc.).
    [PrivateIPAddress <String>]: Private (not routable) IPv4 or IPv6 address (see RFC 1918) at the time of the alert.
    [PublicIPAddress <String>]: Publicly routable IPv4 or IPv6 address (see RFC 1918) at time of the alert.
    [RiskScore <String>]: Provider-generated/calculated risk score of the host.  Recommended value range of 0-1, which equates to a percentage.
  [IncidentIds <String[]>]: IDs of incidents related to current alert.
  [InvestigationSecurityStates <IMicrosoftGraphInvestigationSecurityState[]>]: 
    [Name <String>]: 
    [Status <String>]: 
  [LastEventDateTime <DateTime?>]: 
  [LastModifiedDateTime <DateTime?>]: Time at which the alert entity was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [MalwareStates <IMicrosoftGraphMalwareState[]>]: Threat Intelligence pertaining to malware related to this alert.
    [Category <String>]: Provider-generated malware category (for example, trojan, ransomware, etc.).
    [Family <String>]: Provider-generated malware family (for example, 'wannacry', 'notpetya', etc.).
    [Name <String>]: Provider-generated malware variant name (for example, Trojan:Win32/Powessere.H).
    [Severity <String>]: Provider-determined severity of this malware.
    [WasRunning <Boolean?>]: Indicates whether the detected file (malware/vulnerability) was running at the time of detection or was detected at rest on the disk.
  [MessageSecurityStates <IMicrosoftGraphMessageSecurityState[]>]: 
    [ConnectingIP <String>]: 
    [DeliveryAction <String>]: 
    [DeliveryLocation <String>]: 
    [Directionality <String>]: 
    [InternetMessageId <String>]: 
    [MessageFingerprint <String>]: 
    [MessageReceivedDateTime <DateTime?>]: 
    [MessageSubject <String>]: 
    [NetworkMessageId <String>]: 
  [NetworkConnections <IMicrosoftGraphNetworkConnection[]>]: Security-related stateful information generated by the provider about the network connection(s) related to this alert.
    [ApplicationName <String>]: Name of the application managing the network connection (for example, Facebook or SMTP).
    [DestinationAddress <String>]: Destination IP address (of the network connection).
    [DestinationDomain <String>]: Destination domain portion of the destination URL. (for example 'www.contoso.com').
    [DestinationLocation <String>]: Location (by IP address mapping) associated with the destination of a network connection.
    [DestinationPort <String>]: Destination port (of the network connection).
    [DestinationUrl <String>]: Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')
    [Direction <String>]: connectionDirection
    [DomainRegisteredDateTime <DateTime?>]: Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LocalDnsName <String>]: The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).
    [NatDestinationAddress <String>]: Network Address Translation destination IP address.
    [NatDestinationPort <String>]: Network Address Translation destination port.
    [NatSourceAddress <String>]: Network Address Translation source IP address.
    [NatSourcePort <String>]: Network Address Translation source port.
    [Protocol <String>]: securityNetworkProtocol
    [RiskScore <String>]: Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.
    [SourceAddress <String>]: Source (i.e. origin) IP address (of the network connection).
    [SourceLocation <String>]: Location (by IP address mapping) associated with the source of a network connection.
    [SourcePort <String>]: Source (i.e. origin) IP port (of the network connection).
    [Status <String>]: connectionStatus
    [UrlParameters <String>]: Parameters (suffix) of the destination URL.
  [Processes <IMicrosoftGraphProcess[]>]: Security-related stateful information generated by the provider about the process or processes related to this alert.
    [AccountName <String>]: User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.
    [CommandLine <String>]: The full process invocation commandline including all parameters.
    [CreatedDateTime <DateTime?>]: Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [FileHash <IMicrosoftGraphFileHash>]: fileHash
    [IntegrityLevel <String>]: processIntegrityLevel
    [IsElevated <Boolean?>]: True if the process is elevated.
    [Name <String>]: The name of the process' Image file.
    [ParentProcessCreatedDateTime <DateTime?>]: DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [ParentProcessId <Int32?>]: The Process ID (PID) of the parent process.
    [ParentProcessName <String>]: The name of the image file of the parent process.
    [Path <String>]: Full path, including filename.
    [ProcessId <Int32?>]: The Process ID (PID) of the process.
  [RecommendedActions <String[]>]: Vendor/provider recommended action(s) to take as a result of the alert (for example, isolate machine, enforce2FA, reimage host).
  [RegistryKeyStates <IMicrosoftGraphRegistryKeyState[]>]: Security-related stateful information generated by the provider about the registry keys related to this alert.
    [Hive <String>]: registryHive
    [Key <String>]: Current (i.e. changed) registry key (excludes HIVE).
    [OldKey <String>]: Previous (i.e. before changed) registry key (excludes HIVE).
    [OldValueData <String>]: Previous (i.e. before changed) registry key value data (contents).
    [OldValueName <String>]: Previous (i.e. before changed) registry key value name.
    [Operation <String>]: registryOperation
    [ProcessId <Int32?>]: Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).
    [ValueData <String>]: Current (i.e. changed) registry key value data (contents).
    [ValueName <String>]: Current (i.e. changed) registry key value name
    [ValueType <String>]: registryValueType
  [SecurityResources <IMicrosoftGraphSecurityResource[]>]: Resources related to current alert. For example, for some alerts this can have the Azure Resource value.
    [Resource <String>]: Name of the resource that is related to current alert. Required.
    [ResourceType <String>]: securityResourceType
  [Severity <String>]: alertSeverity
  [SourceMaterials <String[]>]: Hyperlinks (URIs) to the source material related to the alert, for example, provider's user interface for alerts or log search, etc.
  [Status <String>]: alertStatus
  [Tags <String[]>]: User-definable labels that can be applied to an alert and can serve as filter conditions (for example 'HVA', 'SAW', etc.) (supports update).
  [Title <String>]: Alert title. Required.
  [Triggers <IMicrosoftGraphAlertTrigger[]>]: Security-related information about the specific properties that triggered the alert (properties appearing in the alert). Alerts might contain information about multiple users, hosts, files, ip addresses. This field indicates which properties triggered the alert generation.
    [Name <String>]: Name of the property serving as a detection trigger.
    [Type <String>]: Type of the property in the key:value pair for interpretation. For example, String, Boolean etc.
    [Value <String>]: Value of the property serving as a detection trigger.
  [UriClickSecurityStates <IMicrosoftGraphUriClickSecurityState[]>]: 
    [ClickAction <String>]: 
    [ClickDateTime <DateTime?>]: 
    [Id <String>]: 
    [SourceId <String>]: 
    [UriDomain <String>]: 
    [Verdict <String>]: 
  [UserStates <IMicrosoftGraphUserSecurityState[]>]: Security-related stateful information generated by the provider about the user accounts related to this alert.
    [AadUserId <String>]: AAD User object identifier (GUID) - represents the physical/multi-account user entity.
    [AccountName <String>]: Account name of user account (without Active Directory domain or DNS domain) - (also called mailNickName).
    [DomainName <String>]: NetBIOS/Active Directory domain of user account (that is, domain/account format).
    [EmailRole <String>]: emailRole
    [IsVpn <Boolean?>]: Indicates whether the user logged on through a VPN.
    [LogonDateTime <DateTime?>]: Time at which the sign-in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [LogonIP <String>]: IP Address the sign-in request originated from.
    [LogonId <String>]: User sign-in ID.
    [LogonLocation <String>]: Location (by IP address mapping) associated with a user sign-in event by this user.
    [LogonType <String>]: logonType
    [OnPremisesSecurityIdentifier <String>]: Active Directory (on-premises) Security Identifier (SID) of the user.
    [RiskScore <String>]: Provider-generated/calculated risk score of the user account. Recommended value range of 0-1, which equates to a percentage.
    [UserAccountType <String>]: userAccountSecurityType
    [UserPrincipalName <String>]: User sign-in name - internet format: (user account name)@(user account DNS domain name).
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
  [VulnerabilityStates <IMicrosoftGraphVulnerabilityState[]>]: Threat intelligence pertaining to one or more vulnerabilities related to this alert.
    [Cve <String>]: Common Vulnerabilities and Exposures (CVE) for the vulnerability.
    [Severity <String>]: Base Common Vulnerability Scoring System (CVSS) severity score for this vulnerability.
    [WasRunning <Boolean?>]: Indicates whether the detected vulnerability (file) was running at the time of detection or was the file detected at rest on the disk.

CLOUDAPPSTATES <IMicrosoftGraphCloudAppSecurityState[]>: Security-related stateful information generated by the provider about the cloud application/s related to this alert.
  [DestinationServiceIP <String>]: Destination IP Address of the connection to the cloud application/service.
  [DestinationServiceName <String>]: Cloud application/service name (for example 'Salesforce', 'DropBox', etc.).
  [RiskScore <String>]: Provider-generated/calculated risk score of the Cloud Application/Service. Recommended value range of 0-1, which equates to a percentage.

FILESTATES <IMicrosoftGraphFileSecurityState[]>: Security-related stateful information generated by the provider about the file(s) related to this alert.
  [FileHash <IMicrosoftGraphFileHash>]: fileHash
    [(Any) <Object>]: This indicates any property can be added to this object.
    [HashType <String>]: fileHashType
    [HashValue <String>]: Value of the file hash.
  [Name <String>]: File name (without path).
  [Path <String>]: Full file path of the file/imageFile.
  [RiskScore <String>]: Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.

HISTORYSTATES <IMicrosoftGraphAlertHistoryState[]>: A collection of alertHistoryStates comprising an audit log of all updates made to an alert.
  [AppId <String>]: The Application ID of the calling application that submitted an update (PATCH) to the alert. The appId should be extracted from the auth token and not entered manually by the calling application.
  [AssignedTo <String>]: UPN of user the alert was assigned to (note: alert.assignedTo only stores the last value/UPN).
  [Comments <String[]>]: Comment entered by signed-in user.
  [Feedback <String>]: alertFeedback
  [Status <String>]: alertStatus
  [UpdatedDateTime <DateTime?>]: Date and time of the alert update. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [User <String>]: UPN of the signed-in user that updated the alert (taken from the bearer token - if in user/delegated auth mode).

HOSTSTATES <IMicrosoftGraphHostSecurityState[]>: Security-related stateful information generated by the provider about the host(s) related to this alert.
  [Fqdn <String>]: Host FQDN (Fully Qualified Domain Name) (for example, machine.company.com).
  [IsAzureAdJoined <Boolean?>]: 
  [IsAzureAdRegistered <Boolean?>]: 
  [IsHybridAzureDomainJoined <Boolean?>]: True if the host is domain joined to an on-premises Active Directory domain.
  [NetBiosName <String>]: The local host name, without the DNS domain name.
  [OS <String>]: Host Operating System. (For example, Windows10, MacOS, RHEL, etc.).
  [PrivateIPAddress <String>]: Private (not routable) IPv4 or IPv6 address (see RFC 1918) at the time of the alert.
  [PublicIPAddress <String>]: Publicly routable IPv4 or IPv6 address (see RFC 1918) at time of the alert.
  [RiskScore <String>]: Provider-generated/calculated risk score of the host.  Recommended value range of 0-1, which equates to a percentage.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile

INVESTIGATIONSECURITYSTATES <IMicrosoftGraphInvestigationSecurityState[]>: .
  [Name <String>]: 
  [Status <String>]: 

MALWARESTATES <IMicrosoftGraphMalwareState[]>: Threat Intelligence pertaining to malware related to this alert.
  [Category <String>]: Provider-generated malware category (for example, trojan, ransomware, etc.).
  [Family <String>]: Provider-generated malware family (for example, 'wannacry', 'notpetya', etc.).
  [Name <String>]: Provider-generated malware variant name (for example, Trojan:Win32/Powessere.H).
  [Severity <String>]: Provider-determined severity of this malware.
  [WasRunning <Boolean?>]: Indicates whether the detected file (malware/vulnerability) was running at the time of detection or was detected at rest on the disk.

MESSAGESECURITYSTATES <IMicrosoftGraphMessageSecurityState[]>: .
  [ConnectingIP <String>]: 
  [DeliveryAction <String>]: 
  [DeliveryLocation <String>]: 
  [Directionality <String>]: 
  [InternetMessageId <String>]: 
  [MessageFingerprint <String>]: 
  [MessageReceivedDateTime <DateTime?>]: 
  [MessageSubject <String>]: 
  [NetworkMessageId <String>]: 

NETWORKCONNECTIONS <IMicrosoftGraphNetworkConnection[]>: Security-related stateful information generated by the provider about the network connection(s) related to this alert.
  [ApplicationName <String>]: Name of the application managing the network connection (for example, Facebook or SMTP).
  [DestinationAddress <String>]: Destination IP address (of the network connection).
  [DestinationDomain <String>]: Destination domain portion of the destination URL. (for example 'www.contoso.com').
  [DestinationLocation <String>]: Location (by IP address mapping) associated with the destination of a network connection.
  [DestinationPort <String>]: Destination port (of the network connection).
  [DestinationUrl <String>]: Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')
  [Direction <String>]: connectionDirection
  [DomainRegisteredDateTime <DateTime?>]: Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [LocalDnsName <String>]: The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).
  [NatDestinationAddress <String>]: Network Address Translation destination IP address.
  [NatDestinationPort <String>]: Network Address Translation destination port.
  [NatSourceAddress <String>]: Network Address Translation source IP address.
  [NatSourcePort <String>]: Network Address Translation source port.
  [Protocol <String>]: securityNetworkProtocol
  [RiskScore <String>]: Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.
  [SourceAddress <String>]: Source (i.e. origin) IP address (of the network connection).
  [SourceLocation <String>]: Location (by IP address mapping) associated with the source of a network connection.
  [SourcePort <String>]: Source (i.e. origin) IP port (of the network connection).
  [Status <String>]: connectionStatus
  [UrlParameters <String>]: Parameters (suffix) of the destination URL.

PROCESSES <IMicrosoftGraphProcess[]>: Security-related stateful information generated by the provider about the process or processes related to this alert.
  [AccountName <String>]: User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.
  [CommandLine <String>]: The full process invocation commandline including all parameters.
  [CreatedDateTime <DateTime?>]: Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [FileHash <IMicrosoftGraphFileHash>]: fileHash
    [(Any) <Object>]: This indicates any property can be added to this object.
    [HashType <String>]: fileHashType
    [HashValue <String>]: Value of the file hash.
  [IntegrityLevel <String>]: processIntegrityLevel
  [IsElevated <Boolean?>]: True if the process is elevated.
  [Name <String>]: The name of the process' Image file.
  [ParentProcessCreatedDateTime <DateTime?>]: DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [ParentProcessId <Int32?>]: The Process ID (PID) of the parent process.
  [ParentProcessName <String>]: The name of the image file of the parent process.
  [Path <String>]: Full path, including filename.
  [ProcessId <Int32?>]: The Process ID (PID) of the process.

REGISTRYKEYSTATES <IMicrosoftGraphRegistryKeyState[]>: Security-related stateful information generated by the provider about the registry keys related to this alert.
  [Hive <String>]: registryHive
  [Key <String>]: Current (i.e. changed) registry key (excludes HIVE).
  [OldKey <String>]: Previous (i.e. before changed) registry key (excludes HIVE).
  [OldValueData <String>]: Previous (i.e. before changed) registry key value data (contents).
  [OldValueName <String>]: Previous (i.e. before changed) registry key value name.
  [Operation <String>]: registryOperation
  [ProcessId <Int32?>]: Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).
  [ValueData <String>]: Current (i.e. changed) registry key value data (contents).
  [ValueName <String>]: Current (i.e. changed) registry key value name
  [ValueType <String>]: registryValueType

SECURITYRESOURCES <IMicrosoftGraphSecurityResource[]>: Resources related to current alert. For example, for some alerts this can have the Azure Resource value.
  [Resource <String>]: Name of the resource that is related to current alert. Required.
  [ResourceType <String>]: securityResourceType

TRIGGERS <IMicrosoftGraphAlertTrigger[]>: Security-related information about the specific properties that triggered the alert (properties appearing in the alert). Alerts might contain information about multiple users, hosts, files, ip addresses. This field indicates which properties triggered the alert generation.
  [Name <String>]: Name of the property serving as a detection trigger.
  [Type <String>]: Type of the property in the key:value pair for interpretation. For example, String, Boolean etc.
  [Value <String>]: Value of the property serving as a detection trigger.

URICLICKSECURITYSTATES <IMicrosoftGraphUriClickSecurityState[]>: .
  [ClickAction <String>]: 
  [ClickDateTime <DateTime?>]: 
  [Id <String>]: 
  [SourceId <String>]: 
  [UriDomain <String>]: 
  [Verdict <String>]: 

USERSTATES <IMicrosoftGraphUserSecurityState[]>: Security-related stateful information generated by the provider about the user accounts related to this alert.
  [AadUserId <String>]: AAD User object identifier (GUID) - represents the physical/multi-account user entity.
  [AccountName <String>]: Account name of user account (without Active Directory domain or DNS domain) - (also called mailNickName).
  [DomainName <String>]: NetBIOS/Active Directory domain of user account (that is, domain/account format).
  [EmailRole <String>]: emailRole
  [IsVpn <Boolean?>]: Indicates whether the user logged on through a VPN.
  [LogonDateTime <DateTime?>]: Time at which the sign-in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [LogonIP <String>]: IP Address the sign-in request originated from.
  [LogonId <String>]: User sign-in ID.
  [LogonLocation <String>]: Location (by IP address mapping) associated with a user sign-in event by this user.
  [LogonType <String>]: logonType
  [OnPremisesSecurityIdentifier <String>]: Active Directory (on-premises) Security Identifier (SID) of the user.
  [RiskScore <String>]: Provider-generated/calculated risk score of the user account. Recommended value range of 0-1, which equates to a percentage.
  [UserAccountType <String>]: userAccountSecurityType
  [UserPrincipalName <String>]: User sign-in name - internet format: (user account name)@(user account DNS domain name).

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

VULNERABILITYSTATES <IMicrosoftGraphVulnerabilityState[]>: Threat intelligence pertaining to one or more vulnerabilities related to this alert.
  [Cve <String>]: Common Vulnerabilities and Exposures (CVE) for the vulnerability.
  [Severity <String>]: Base Common Vulnerability Scoring System (CVSS) severity score for this vulnerability.
  [WasRunning <Boolean?>]: Indicates whether the detected vulnerability (file) was running at the time of detection or was the file detected at rest on the disk.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecurityalert
#>
function Update-MgSecurityAlert {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of alert
    ${AlertId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert]
    # alert
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name or alias of the activity group (attacker) this alert is attributed to.
    ${ActivityGroupName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertDetection[]]
    # .
    # To construct, see NOTES section for ALERTDETECTIONS properties and create a hash table.
    ${AlertDetections},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name of the analyst the alert is assigned to for triage, investigation, or remediation (supports update).
    ${AssignedTo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure subscription ID, present if this alert is related to an Azure resource.
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure Active Directory tenant ID.
    # Required.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Category of the alert (for example, credentialTheft, ransomware, etc.).
    ${Category},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was closed.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z (supports update).
    ${ClosedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityState[]]
    # Security-related stateful information generated by the provider about the cloud application/s related to this alert.
    # To construct, see NOTES section for CLOUDAPPSTATES properties and create a hash table.
    ${CloudAppStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Customer-provided comments on alert (for customer alert management) (supports update).
    ${Comments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Confidence of the detection logic (percentage between 1-100).
    ${Confidence},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was created by the alert provider.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert description.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Set of alerts related to this alert entity (each alert is pushed to the SIEM as a separate record).
    ${DetectionIds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the event(s) that served as the trigger(s) to generate the alert occurred.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${EventDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertFeedback
    ${Feedback},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityState[]]
    # Security-related stateful information generated by the provider about the file(s) related to this alert.
    # To construct, see NOTES section for FILESTATES properties and create a hash table.
    ${FileStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertHistoryState[]]
    # A collection of alertHistoryStates comprising an audit log of all updates made to an alert.
    # To construct, see NOTES section for HISTORYSTATES properties and create a hash table.
    ${HistoryStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityState[]]
    # Security-related stateful information generated by the provider about the host(s) related to this alert.
    # To construct, see NOTES section for HOSTSTATES properties and create a hash table.
    ${HostStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # IDs of incidents related to current alert.
    ${IncidentIds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvestigationSecurityState[]]
    # .
    # To construct, see NOTES section for INVESTIGATIONSECURITYSTATES properties and create a hash table.
    ${InvestigationSecurityStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastEventDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert entity was last modified.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMalwareState[]]
    # Threat Intelligence pertaining to malware related to this alert.
    # To construct, see NOTES section for MALWARESTATES properties and create a hash table.
    ${MalwareStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageSecurityState[]]
    # .
    # To construct, see NOTES section for MESSAGESECURITYSTATES properties and create a hash table.
    ${MessageSecurityStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphNetworkConnection[]]
    # Security-related stateful information generated by the provider about the network connection(s) related to this alert.
    # To construct, see NOTES section for NETWORKCONNECTIONS properties and create a hash table.
    ${NetworkConnections},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProcess[]]
    # Security-related stateful information generated by the provider about the process or processes related to this alert.
    # To construct, see NOTES section for PROCESSES properties and create a hash table.
    ${Processes},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Vendor/provider recommended action(s) to take as a result of the alert (for example, isolate machine, enforce2FA, reimage host).
    ${RecommendedActions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRegistryKeyState[]]
    # Security-related stateful information generated by the provider about the registry keys related to this alert.
    # To construct, see NOTES section for REGISTRYKEYSTATES properties and create a hash table.
    ${RegistryKeyStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityResource[]]
    # Resources related to current alert.
    # For example, for some alerts this can have the Azure Resource value.
    # To construct, see NOTES section for SECURITYRESOURCES properties and create a hash table.
    ${SecurityResources},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertSeverity
    ${Severity},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Hyperlinks (URIs) to the source material related to the alert, for example, provider's user interface for alerts or log search, etc.
    ${SourceMaterials},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertStatus
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # User-definable labels that can be applied to an alert and can serve as filter conditions (for example 'HVA', 'SAW', etc.) (supports update).
    ${Tags},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert title.
    # Required.
    ${Title},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertTrigger[]]
    # Security-related information about the specific properties that triggered the alert (properties appearing in the alert).
    # Alerts might contain information about multiple users, hosts, files, ip addresses.
    # This field indicates which properties triggered the alert generation.
    # To construct, see NOTES section for TRIGGERS properties and create a hash table.
    ${Triggers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUriClickSecurityState[]]
    # .
    # To construct, see NOTES section for URICLICKSECURITYSTATES properties and create a hash table.
    ${UriClickSecurityStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityState[]]
    # Security-related stateful information generated by the provider about the user accounts related to this alert.
    # To construct, see NOTES section for USERSTATES properties and create a hash table.
    ${UserStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVulnerabilityState[]]
    # Threat intelligence pertaining to one or more vulnerabilities related to this alert.
    # To construct, see NOTES section for VULNERABILITYSTATES properties and create a hash table.
    ${VulnerabilityStates},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property cloudAppSecurityProfiles in security
.Description
Update the navigation property cloudAppSecurityProfiles in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityProfile
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphCloudAppSecurityProfile>: cloudAppSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [CreatedDateTime <DateTime?>]: 
  [DeploymentPackageUrl <String>]: 
  [DestinationServiceName <String>]: 
  [IsSigned <Boolean?>]: 
  [LastModifiedDateTime <DateTime?>]: 
  [Manifest <String>]: 
  [Name <String>]: 
  [PermissionsRequired <String>]: applicationPermissionsRequired
  [Platform <String>]: 
  [PolicyName <String>]: 
  [Publisher <String>]: 
  [RiskScore <String>]: 
  [Tags <String[]>]: 
  [Type <String>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycloudappsecurityprofile
#>
function Update-MgSecurityCloudAppSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of cloudAppSecurityProfile
    ${CloudAppSecurityProfileId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityProfile]
    # cloudAppSecurityProfile
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
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

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
    ${DeploymentPackageUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationServiceName},

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
    ${IsSigned},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Manifest},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # applicationPermissionsRequired
    ${PermissionsRequired},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Platform},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${PolicyName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Publisher},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Type},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityCloudAppSecurityProfile_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCloudAppSecurityProfile_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityCloudAppSecurityProfile_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCloudAppSecurityProfile_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property domainSecurityProfiles in security
.Description
Update the navigation property domainSecurityProfiles in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDomainSecurityProfile
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphDomainSecurityProfile>: domainSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivityGroupNames <String[]>]: 
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [CountHits <Int32?>]: 
  [CountInOrg <Int32?>]: 
  [DomainCategories <IMicrosoftGraphReputationCategory[]>]: 
    [Description <String>]: 
    [Name <String>]: 
    [Vendor <String>]: 
  [DomainRegisteredDateTime <DateTime?>]: 
  [FirstSeenDateTime <DateTime?>]: 
  [LastSeenDateTime <DateTime?>]: 
  [Name <String>]: 
  [Registrant <IMicrosoftGraphDomainRegistrant>]: domainRegistrant
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CountryOrRegionCode <String>]: 
    [Organization <String>]: 
    [Url <String>]: 
    [Vendor <String>]: 
  [RiskScore <String>]: 
  [Tags <String[]>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

DOMAINCATEGORIES <IMicrosoftGraphReputationCategory[]>: .
  [Description <String>]: 
  [Name <String>]: 
  [Vendor <String>]: 

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile

REGISTRANT <IMicrosoftGraphDomainRegistrant>: domainRegistrant
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CountryOrRegionCode <String>]: 
  [Organization <String>]: 
  [Url <String>]: 
  [Vendor <String>]: 

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritydomainsecurityprofile
#>
function Update-MgSecurityDomainSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of domainSecurityProfile
    ${DomainSecurityProfileId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDomainSecurityProfile]
    # domainSecurityProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${ActivityGroupNames},

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
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${CountHits},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${CountInOrg},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphReputationCategory[]]
    # .
    # To construct, see NOTES section for DOMAINCATEGORIES properties and create a hash table.
    ${DomainCategories},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${DomainRegisteredDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FirstSeenDateTime},

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
    # .
    ${LastSeenDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDomainRegistrant]
    # domainRegistrant
    # To construct, see NOTES section for REGISTRANT properties and create a hash table.
    ${Registrant},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityDomainSecurityProfile_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityDomainSecurityProfile_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityDomainSecurityProfile_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityDomainSecurityProfile_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property fileSecurityProfiles in security
.Description
Update the navigation property fileSecurityProfiles in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityProfile
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphFileSecurityProfile>: fileSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivityGroupNames <String[]>]: 
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [CertificateThumbprint <String>]: 
  [Extensions <String[]>]: 
  [FileType <String>]: 
  [FirstSeenDateTime <DateTime?>]: 
  [Hashes <IMicrosoftGraphFileHash[]>]: 
    [HashType <String>]: fileHashType
    [HashValue <String>]: Value of the file hash.
  [LastSeenDateTime <DateTime?>]: 
  [MalwareStates <IMicrosoftGraphMalwareState[]>]: 
    [Category <String>]: Provider-generated malware category (for example, trojan, ransomware, etc.).
    [Family <String>]: Provider-generated malware family (for example, 'wannacry', 'notpetya', etc.).
    [Name <String>]: Provider-generated malware variant name (for example, Trojan:Win32/Powessere.H).
    [Severity <String>]: Provider-determined severity of this malware.
    [WasRunning <Boolean?>]: Indicates whether the detected file (malware/vulnerability) was running at the time of detection or was detected at rest on the disk.
  [Names <String[]>]: 
  [RiskScore <String>]: 
  [Size <Int64?>]: 
  [Tags <String[]>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
  [VulnerabilityStates <IMicrosoftGraphVulnerabilityState[]>]: 
    [Cve <String>]: Common Vulnerabilities and Exposures (CVE) for the vulnerability.
    [Severity <String>]: Base Common Vulnerability Scoring System (CVSS) severity score for this vulnerability.
    [WasRunning <Boolean?>]: Indicates whether the detected vulnerability (file) was running at the time of detection or was the file detected at rest on the disk.

HASHES <IMicrosoftGraphFileHash[]>: .
  [HashType <String>]: fileHashType
  [HashValue <String>]: Value of the file hash.

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile

MALWARESTATES <IMicrosoftGraphMalwareState[]>: .
  [Category <String>]: Provider-generated malware category (for example, trojan, ransomware, etc.).
  [Family <String>]: Provider-generated malware family (for example, 'wannacry', 'notpetya', etc.).
  [Name <String>]: Provider-generated malware variant name (for example, Trojan:Win32/Powessere.H).
  [Severity <String>]: Provider-determined severity of this malware.
  [WasRunning <Boolean?>]: Indicates whether the detected file (malware/vulnerability) was running at the time of detection or was detected at rest on the disk.

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

VULNERABILITYSTATES <IMicrosoftGraphVulnerabilityState[]>: .
  [Cve <String>]: Common Vulnerabilities and Exposures (CVE) for the vulnerability.
  [Severity <String>]: Base Common Vulnerability Scoring System (CVSS) severity score for this vulnerability.
  [WasRunning <Boolean?>]: Indicates whether the detected vulnerability (file) was running at the time of detection or was the file detected at rest on the disk.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecurityfilesecurityprofile
#>
function Update-MgSecurityFileSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of fileSecurityProfile
    ${FileSecurityProfileId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityProfile]
    # fileSecurityProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${ActivityGroupNames},

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
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CertificateThumbprint},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Extensions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FirstSeenDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileHash[]]
    # .
    # To construct, see NOTES section for HASHES properties and create a hash table.
    ${Hashes},

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
    # .
    ${LastSeenDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMalwareState[]]
    # .
    # To construct, see NOTES section for MALWARESTATES properties and create a hash table.
    ${MalwareStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Names},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int64]
    # .
    ${Size},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVulnerabilityState[]]
    # .
    # To construct, see NOTES section for VULNERABILITYSTATES properties and create a hash table.
    ${VulnerabilityStates},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityFileSecurityProfile_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityFileSecurityProfile_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityFileSecurityProfile_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityFileSecurityProfile_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property hostSecurityProfiles in security
.Description
Update the navigation property hostSecurityProfiles in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityProfile
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphHostSecurityProfile>: hostSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [FirstSeenDateTime <DateTime?>]: 
  [Fqdn <String>]: 
  [IsAzureAdJoined <Boolean?>]: 
  [IsAzureAdRegistered <Boolean?>]: 
  [IsHybridAzureDomainJoined <Boolean?>]: 
  [LastSeenDateTime <DateTime?>]: 
  [LogonUsers <IMicrosoftGraphLogonUser[]>]: 
    [AccountDomain <String>]: Domain of user account used to logon.
    [AccountName <String>]: Account name of user account used to logon.
    [AccountType <String>]: userAccountSecurityType
    [FirstSeenDateTime <DateTime?>]: DateTime at which the earliest logon by this user account occurred (provider-determined period). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [LastSeenDateTime <DateTime?>]: DateTime at which the latest logon by this user account occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    [LogonId <String>]: User logon ID.
    [LogonTypes <String[]>]: Collection of the logon types observed for the logged on user from when first to last seen. Possible values are: unknown, interactive, remoteInteractive, network, batch, service.
  [NetBiosName <String>]: 
  [NetworkInterfaces <IMicrosoftGraphNetworkInterface[]>]: 
    [Description <String>]: Description of the NIC (e.g. Ethernet adapter, Wireless LAN adapter Local Area Connection <#/>, etc.).
    [IPV4Address <String>]: Last IPv4 address associated with this NIC.
    [IPV6Address <String>]: Last Public (aka global) IPv6 address associated with this NIC.
    [LocalIPV6Address <String>]: Last local (link-local or site-local) IPv6 address associated with this NIC.
    [MacAddress <String>]: MAC address of the NIC on this host.
  [OS <String>]: 
  [OSVersion <String>]: 
  [ParentHost <String>]: 
  [RelatedHostIds <String[]>]: 
  [RiskScore <String>]: 
  [Tags <String[]>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile

LOGONUSERS <IMicrosoftGraphLogonUser[]>: .
  [AccountDomain <String>]: Domain of user account used to logon.
  [AccountName <String>]: Account name of user account used to logon.
  [AccountType <String>]: userAccountSecurityType
  [FirstSeenDateTime <DateTime?>]: DateTime at which the earliest logon by this user account occurred (provider-determined period). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [LastSeenDateTime <DateTime?>]: DateTime at which the latest logon by this user account occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
  [LogonId <String>]: User logon ID.
  [LogonTypes <String[]>]: Collection of the logon types observed for the logged on user from when first to last seen. Possible values are: unknown, interactive, remoteInteractive, network, batch, service.

NETWORKINTERFACES <IMicrosoftGraphNetworkInterface[]>: .
  [Description <String>]: Description of the NIC (e.g. Ethernet adapter, Wireless LAN adapter Local Area Connection <#/>, etc.).
  [IPV4Address <String>]: Last IPv4 address associated with this NIC.
  [IPV6Address <String>]: Last Public (aka global) IPv6 address associated with this NIC.
  [LocalIPV6Address <String>]: Last local (link-local or site-local) IPv6 address associated with this NIC.
  [MacAddress <String>]: MAC address of the NIC on this host.

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecurityhostsecurityprofile
#>
function Update-MgSecurityHostSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of hostSecurityProfile
    ${HostSecurityProfileId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityProfile]
    # hostSecurityProfile
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
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FirstSeenDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Fqdn},

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
    ${IsAzureAdJoined},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsAzureAdRegistered},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsHybridAzureDomainJoined},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastSeenDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLogonUser[]]
    # .
    # To construct, see NOTES section for LOGONUSERS properties and create a hash table.
    ${LogonUsers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetBiosName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphNetworkInterface[]]
    # .
    # To construct, see NOTES section for NETWORKINTERFACES properties and create a hash table.
    ${NetworkInterfaces},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${OS},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${OSVersion},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ParentHost},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${RelatedHostIds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityHostSecurityProfile_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityHostSecurityProfile_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityHostSecurityProfile_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityHostSecurityProfile_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property incidents in security
.Description
Update the navigation property incidents in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncident
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphIncident>: incident
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AssignedTo <String>]: 
  [Classification <String>]: m365AlertClassification
  [Comments <IMicrosoftGraphM365AlertComment[]>]: 
    [Comment <String>]: 
    [CreatedByDisplayName <String>]: 
    [CreatedDateTime <DateTime?>]: 
  [CreatedDateTime <DateTime?>]: 
  [Determination <String>]: m365AlertDetermination
  [DisplayName <String>]: 
  [IncidentWebUrl <String>]: 
  [LastUpdateDateTime <DateTime?>]: 
  [RedirectIncidentId <String>]: 
  [Severity <String>]: m365AlertSeverity
  [Status <String>]: incidentStatus
  [Tags <String[]>]: 

COMMENTS <IMicrosoftGraphM365AlertComment[]>: .
  [Comment <String>]: 
  [CreatedByDisplayName <String>]: 
  [CreatedDateTime <DateTime?>]: 

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecurityincident
#>
function Update-MgSecurityIncident {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of incident
    ${IncidentId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncident]
    # incident
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
    # .
    ${AssignedTo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # m365AlertClassification
    ${Classification},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphM365AlertComment[]]
    # .
    # To construct, see NOTES section for COMMENTS properties and create a hash table.
    ${Comments},

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
    # m365AlertDetermination
    ${Determination},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
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
    # .
    ${IncidentWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastUpdateDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RedirectIncidentId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # m365AlertSeverity
    ${Severity},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # incidentStatus
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityIncident_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityIncident_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityIncident_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityIncident_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property ipSecurityProfiles in security
.Description
Update the navigation property ipSecurityProfiles in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPSecurityProfile
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphIPSecurityProfile>: ipSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivityGroupNames <String[]>]: 
  [Address <String>]: 
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [CountHits <Int32?>]: 
  [CountHosts <Int32?>]: 
  [FirstSeenDateTime <DateTime?>]: 
  [IPCategories <IMicrosoftGraphIPCategory[]>]: 
    [Description <String>]: 
    [Name <String>]: 
    [Vendor <String>]: 
  [IPReferenceData <IMicrosoftGraphIPReferenceData[]>]: 
    [Asn <Int64?>]: 
    [City <String>]: 
    [CountryOrRegionCode <String>]: 
    [Organization <String>]: 
    [State <String>]: 
    [Vendor <String>]: 
  [LastSeenDateTime <DateTime?>]: 
  [RiskScore <String>]: 
  [Tags <String[]>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile

IPCATEGORIES <IMicrosoftGraphIPCategory[]>: .
  [Description <String>]: 
  [Name <String>]: 
  [Vendor <String>]: 

IPREFERENCEDATA <IMicrosoftGraphIPReferenceData[]>: .
  [Asn <Int64?>]: 
  [City <String>]: 
  [CountryOrRegionCode <String>]: 
  [Organization <String>]: 
  [State <String>]: 
  [Vendor <String>]: 

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecurityipsecurityprofile
#>
function Update-MgSecurityIPSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ipSecurityProfile
    ${IPSecurityProfileId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPSecurityProfile]
    # ipSecurityProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${ActivityGroupNames},

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
    # .
    ${Address},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${CountHits},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${CountHosts},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FirstSeenDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPCategory[]]
    # .
    # To construct, see NOTES section for IPCATEGORIES properties and create a hash table.
    ${IPCategories},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIPReferenceData[]]
    # .
    # To construct, see NOTES section for IPREFERENCEDATA properties and create a hash table.
    ${IPReferenceData},

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
    # .
    ${LastSeenDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityIPSecurityProfile_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityIPSecurityProfile_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityIPSecurityProfile_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityIPSecurityProfile_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property providerTenantSettings in security
.Description
Update the navigation property providerTenantSettings in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProviderTenantSetting
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphProviderTenantSetting>: providerTenantSetting
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AzureTenantId <String>]: 
  [Enabled <Boolean?>]: 
  [LastModifiedDateTime <DateTime?>]: 
  [Provider <String>]: 
  [Vendor <String>]: 

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecurityprovidertenantsetting
#>
function Update-MgSecurityProviderTenantSetting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of providerTenantSetting
    ${ProviderTenantSettingId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProviderTenantSetting]
    # providerTenantSetting
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
    # .
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${Enabled},

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
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Provider},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Vendor},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityProviderTenantSetting_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityProviderTenantSetting_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityProviderTenantSetting_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityProviderTenantSetting_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property secureScoreControlProfiles in security
.Description
Update the navigation property secureScoreControlProfiles in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSecureScoreControlProfile>: secureScoreControlProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActionType <String>]: Control action type (Config, Review, Behavior).
  [ActionUrl <String>]: URL to where the control can be actioned.
  [AzureTenantId <String>]: GUID string for tenant ID.
  [ComplianceInformation <IMicrosoftGraphComplianceInformation[]>]: The collection of compliance information associated with secure score control
    [CertificationControls <IMicrosoftGraphCertificationControl[]>]: Collection of the certification controls associated with certification
      [Name <String>]: Certification control name
      [Url <String>]: URL for the Microsoft Service Trust Portal
    [CertificationName <String>]: Compliance certification name (for example, ISO 27018:2014, GDPR, FedRAMP, NIST 800-171)
  [ControlCategory <String>]: Control action category (Identity, Data, Device, Apps, Infrastructure).
  [ControlStateUpdates <IMicrosoftGraphSecureScoreControlStateUpdate[]>]: Flag to indicate where the tenant has marked a control (ignore, thirdParty, reviewed) (supports update).
    [AssignedTo <String>]: 
    [Comment <String>]: 
    [State <String>]: 
    [UpdatedBy <String>]: 
    [UpdatedDateTime <DateTime?>]: 
  [Deprecated <Boolean?>]: Flag to indicate if a control is depreciated.
  [ImplementationCost <String>]: Resource cost of implemmentating control (low, moderate, high).
  [LastModifiedDateTime <DateTime?>]: Time at which the control profile entity was last modified. The Timestamp type represents date and time
  [MaxScore <Double?>]: max attainable score for the control.
  [Rank <Int32?>]: Microsoft's stack ranking of control.
  [Remediation <String>]: Description of what the control will help remediate.
  [RemediationImpact <String>]: Description of the impact on users of the remediation.
  [Service <String>]: Service that owns the control (Exchange, Sharepoint, Azure AD).
  [Threats <String[]>]: List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
  [Tier <String>]: Control tier (Core, Defense in Depth, Advanced.)
  [Title <String>]: Title of the control.
  [UserImpact <String>]: User impact of implementing control (low, moderate, high).
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

COMPLIANCEINFORMATION <IMicrosoftGraphComplianceInformation[]>: The collection of compliance information associated with secure score control
  [CertificationControls <IMicrosoftGraphCertificationControl[]>]: Collection of the certification controls associated with certification
    [Name <String>]: Certification control name
    [Url <String>]: URL for the Microsoft Service Trust Portal
  [CertificationName <String>]: Compliance certification name (for example, ISO 27018:2014, GDPR, FedRAMP, NIST 800-171)

CONTROLSTATEUPDATES <IMicrosoftGraphSecureScoreControlStateUpdate[]>: Flag to indicate where the tenant has marked a control (ignore, thirdParty, reviewed) (supports update).
  [AssignedTo <String>]: 
  [Comment <String>]: 
  [State <String>]: 
  [UpdatedBy <String>]: 
  [UpdatedDateTime <DateTime?>]: 

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritysecurescorecontrolprofile
#>
function Update-MgSecuritySecureScoreControlProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScoreControlProfile
    ${SecureScoreControlProfileId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile]
    # secureScoreControlProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action type (Config, Review, Behavior).
    ${ActionType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # URL to where the control can be actioned.
    ${ActionUrl},

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
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceInformation[]]
    # The collection of compliance information associated with secure score control
    # To construct, see NOTES section for COMPLIANCEINFORMATION properties and create a hash table.
    ${ComplianceInformation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action category (Identity, Data, Device, Apps, Infrastructure).
    ${ControlCategory},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlStateUpdate[]]
    # Flag to indicate where the tenant has marked a control (ignore, thirdParty, reviewed) (supports update).
    # To construct, see NOTES section for CONTROLSTATEUPDATES properties and create a hash table.
    ${ControlStateUpdates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag to indicate if a control is depreciated.
    ${Deprecated},

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
    # Resource cost of implemmentating control (low, moderate, high).
    ${ImplementationCost},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the control profile entity was last modified.
    # The Timestamp type represents date and time
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # max attainable score for the control.
    ${MaxScore},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Microsoft's stack ranking of control.
    ${Rank},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of what the control will help remediate.
    ${Remediation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the impact on users of the remediation.
    ${RemediationImpact},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Service that owns the control (Exchange, Sharepoint, Azure AD).
    ${Service},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
    ${Threats},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control tier (Core, Defense in Depth, Advanced.)
    ${Tier},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the control.
    ${Title},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # User impact of implementing control (low, moderate, high).
    ${UserImpact},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property secureScores in security
.Description
Update the navigation property secureScores in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

AVERAGECOMPARATIVESCORES <IMicrosoftGraphAverageComparativeScore[]>: Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
  [AverageScore <Double?>]: Average score within specified basis.
  [Basis <String>]: Scope type. The possible values are: AllTenants, TotalSeats, IndustryTypes.

BODYPARAMETER <IMicrosoftGraphSecureScore>: secureScore
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveUserCount <Int32?>]: Active user count of the given tenant.
  [AverageComparativeScores <IMicrosoftGraphAverageComparativeScore[]>]: Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
    [AverageScore <Double?>]: Average score within specified basis.
    [Basis <String>]: Scope type. The possible values are: AllTenants, TotalSeats, IndustryTypes.
  [AzureTenantId <String>]: GUID string for tenant ID.
  [ControlScores <IMicrosoftGraphControlScore[]>]: Contains tenant scores for a set of controls.
    [ControlCategory <String>]: Control action category (Identity, Data, Device, Apps, Infrastructure).
    [ControlName <String>]: Control unique name.
    [Description <String>]: Description of the control.
    [Score <Double?>]: Tenant achieved score for the control (it varies day by day depending on tenant operations on the control).
  [CreatedDateTime <DateTime?>]: The date when the entity is created.
  [CurrentScore <Double?>]: Tenant current attained score on specified date.
  [EnabledServices <String[]>]: Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
  [LicensedUserCount <Int32?>]: Licensed user count of the given tenant.
  [MaxScore <Double?>]: Tenant maximum possible score on specified date.
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

CONTROLSCORES <IMicrosoftGraphControlScore[]>: Contains tenant scores for a set of controls.
  [ControlCategory <String>]: Control action category (Identity, Data, Device, Apps, Infrastructure).
  [ControlName <String>]: Control unique name.
  [Description <String>]: Description of the control.
  [Score <Double?>]: Tenant achieved score for the control (it varies day by day depending on tenant operations on the control).

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritysecurescore
#>
function Update-MgSecuritySecureScore {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScore
    ${SecureScoreId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore]
    # secureScore
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Active user count of the given tenant.
    ${ActiveUserCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAverageComparativeScore[]]
    # Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
    # To construct, see NOTES section for AVERAGECOMPARATIVESCORES properties and create a hash table.
    ${AverageComparativeScores},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphControlScore[]]
    # Contains tenant scores for a set of controls.
    # To construct, see NOTES section for CONTROLSCORES properties and create a hash table.
    ${ControlScores},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date when the entity is created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant current attained score on specified date.
    ${CurrentScore},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
    ${EnabledServices},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Licensed user count of the given tenant.
    ${LicensedUserCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant maximum possible score on specified date.
    ${MaxScore},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action updateTiIndicators
.Description
Invoke action updateTiIndicators

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths3Ccfi6SecurityTiindicatorsMicrosoftGraphUpdatetiindicatorsPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths3Ccfi6SecurityTiindicatorsMicrosoftGraphUpdatetiindicatorsPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Value <IMicrosoftGraphTiIndicator[]>]: 
    [Id <String>]: Read-only.
    [Action <String>]: tiAction
    [ActivityGroupNames <String[]>]: The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
    [AdditionalInformation <String>]: A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
    [AzureTenantId <String>]: Stamped by the system when the indicator is ingested. The Azure Active Directory tenant id of submitting client. Required.
    [Confidence <Int32?>]: An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.
    [Description <String>]: Brief description (100 characters or less) of the threat represented by the indicator. Required.
    [DiamondModel <String>]: diamondModel
    [DomainName <String>]: 
    [EmailEncoding <String>]: 
    [EmailLanguage <String>]: 
    [EmailRecipient <String>]: 
    [EmailSenderAddress <String>]: 
    [EmailSenderName <String>]: 
    [EmailSourceDomain <String>]: 
    [EmailSourceIPAddress <String>]: 
    [EmailSubject <String>]: 
    [EmailXMailer <String>]: 
    [ExpirationDateTime <DateTime?>]: DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
    [ExternalId <String>]: An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key).
    [FileCompileDateTime <DateTime?>]: 
    [FileCreatedDateTime <DateTime?>]: 
    [FileHashType <String>]: fileHashType
    [FileHashValue <String>]: 
    [FileMutexName <String>]: 
    [FileName <String>]: 
    [FilePacker <String>]: 
    [FilePath <String>]: 
    [FileSize <Int64?>]: 
    [FileType <String>]: 
    [IngestedDateTime <DateTime?>]: Stamped by the system when the indicator is ingested. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [IsActive <Boolean?>]: Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
    [KillChain <String[]>]: A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See ‘killChain values’ below for exact values.
    [KnownFalsePositives <String>]: Scenarios in which the indicator may cause false positives. This should be human-readable text.
    [LastReportedDateTime <DateTime?>]: The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [MalwareFamilyNames <String[]>]: The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
    [NetworkCidrBlock <String>]: 
    [NetworkDestinationAsn <Int64?>]: 
    [NetworkDestinationCidrBlock <String>]: 
    [NetworkDestinationIPv4 <String>]: 
    [NetworkDestinationIPv6 <String>]: 
    [NetworkDestinationPort <Int32?>]: 
    [NetworkIPv4 <String>]: 
    [NetworkIPv6 <String>]: 
    [NetworkPort <Int32?>]: 
    [NetworkProtocol <Int32?>]: 
    [NetworkSourceAsn <Int64?>]: 
    [NetworkSourceCidrBlock <String>]: 
    [NetworkSourceIPv4 <String>]: 
    [NetworkSourceIPv6 <String>]: 
    [NetworkSourcePort <Int32?>]: 
    [PassiveOnly <Boolean?>]: Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false.
    [Severity <Int32?>]: An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3.
    [Tags <String[]>]: A JSON array of strings that stores arbitrary tags/keywords.
    [TargetProduct <String>]: A string value representing a single security product to which the indicator should be applied. Acceptable values are: Azure Sentinel, Microsoft Defender ATP. Required
    [ThreatType <String>]: Each indicator must have a valid Indicator Threat Type. Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList. Required.
    [TlpLevel <String>]: tlpLevel
    [Url <String>]: 
    [UserAgent <String>]: 

VALUE <IMicrosoftGraphTiIndicator[]>: .
  [Id <String>]: Read-only.
  [Action <String>]: tiAction
  [ActivityGroupNames <String[]>]: The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
  [AdditionalInformation <String>]: A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
  [AzureTenantId <String>]: Stamped by the system when the indicator is ingested. The Azure Active Directory tenant id of submitting client. Required.
  [Confidence <Int32?>]: An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.
  [Description <String>]: Brief description (100 characters or less) of the threat represented by the indicator. Required.
  [DiamondModel <String>]: diamondModel
  [DomainName <String>]: 
  [EmailEncoding <String>]: 
  [EmailLanguage <String>]: 
  [EmailRecipient <String>]: 
  [EmailSenderAddress <String>]: 
  [EmailSenderName <String>]: 
  [EmailSourceDomain <String>]: 
  [EmailSourceIPAddress <String>]: 
  [EmailSubject <String>]: 
  [EmailXMailer <String>]: 
  [ExpirationDateTime <DateTime?>]: DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
  [ExternalId <String>]: An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key).
  [FileCompileDateTime <DateTime?>]: 
  [FileCreatedDateTime <DateTime?>]: 
  [FileHashType <String>]: fileHashType
  [FileHashValue <String>]: 
  [FileMutexName <String>]: 
  [FileName <String>]: 
  [FilePacker <String>]: 
  [FilePath <String>]: 
  [FileSize <Int64?>]: 
  [FileType <String>]: 
  [IngestedDateTime <DateTime?>]: Stamped by the system when the indicator is ingested. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [IsActive <Boolean?>]: Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
  [KillChain <String[]>]: A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See ‘killChain values’ below for exact values.
  [KnownFalsePositives <String>]: Scenarios in which the indicator may cause false positives. This should be human-readable text.
  [LastReportedDateTime <DateTime?>]: The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [MalwareFamilyNames <String[]>]: The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
  [NetworkCidrBlock <String>]: 
  [NetworkDestinationAsn <Int64?>]: 
  [NetworkDestinationCidrBlock <String>]: 
  [NetworkDestinationIPv4 <String>]: 
  [NetworkDestinationIPv6 <String>]: 
  [NetworkDestinationPort <Int32?>]: 
  [NetworkIPv4 <String>]: 
  [NetworkIPv6 <String>]: 
  [NetworkPort <Int32?>]: 
  [NetworkProtocol <Int32?>]: 
  [NetworkSourceAsn <Int64?>]: 
  [NetworkSourceCidrBlock <String>]: 
  [NetworkSourceIPv4 <String>]: 
  [NetworkSourceIPv6 <String>]: 
  [NetworkSourcePort <Int32?>]: 
  [PassiveOnly <Boolean?>]: Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false.
  [Severity <Int32?>]: An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3.
  [Tags <String[]>]: A JSON array of strings that stores arbitrary tags/keywords.
  [TargetProduct <String>]: A string value representing a single security product to which the indicator should be applied. Acceptable values are: Azure Sentinel, Microsoft Defender ATP. Required
  [ThreatType <String>]: Each indicator must have a valid Indicator Threat Type. Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList. Required.
  [TlpLevel <String>]: tlpLevel
  [Url <String>]: 
  [UserAgent <String>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritytiindicatormultiple
#>
function Update-MgSecurityTiIndicatorMultiple {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths3Ccfi6SecurityTiindicatorsMicrosoftGraphUpdatetiindicatorsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator[]]
    # .
    # To construct, see NOTES section for VALUE properties and create a hash table.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecurityTiIndicatorMultiple_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityTiIndicatorMultiple_UpdateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property tiIndicators in security
.Description
Update the navigation property tiIndicators in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphTiIndicator>: tiIndicator
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Action <String>]: tiAction
  [ActivityGroupNames <String[]>]: The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
  [AdditionalInformation <String>]: A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
  [AzureTenantId <String>]: Stamped by the system when the indicator is ingested. The Azure Active Directory tenant id of submitting client. Required.
  [Confidence <Int32?>]: An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.
  [Description <String>]: Brief description (100 characters or less) of the threat represented by the indicator. Required.
  [DiamondModel <String>]: diamondModel
  [DomainName <String>]: 
  [EmailEncoding <String>]: 
  [EmailLanguage <String>]: 
  [EmailRecipient <String>]: 
  [EmailSenderAddress <String>]: 
  [EmailSenderName <String>]: 
  [EmailSourceDomain <String>]: 
  [EmailSourceIPAddress <String>]: 
  [EmailSubject <String>]: 
  [EmailXMailer <String>]: 
  [ExpirationDateTime <DateTime?>]: DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
  [ExternalId <String>]: An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key).
  [FileCompileDateTime <DateTime?>]: 
  [FileCreatedDateTime <DateTime?>]: 
  [FileHashType <String>]: fileHashType
  [FileHashValue <String>]: 
  [FileMutexName <String>]: 
  [FileName <String>]: 
  [FilePacker <String>]: 
  [FilePath <String>]: 
  [FileSize <Int64?>]: 
  [FileType <String>]: 
  [IngestedDateTime <DateTime?>]: Stamped by the system when the indicator is ingested. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [IsActive <Boolean?>]: Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
  [KillChain <String[]>]: A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See ‘killChain values’ below for exact values.
  [KnownFalsePositives <String>]: Scenarios in which the indicator may cause false positives. This should be human-readable text.
  [LastReportedDateTime <DateTime?>]: The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [MalwareFamilyNames <String[]>]: The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
  [NetworkCidrBlock <String>]: 
  [NetworkDestinationAsn <Int64?>]: 
  [NetworkDestinationCidrBlock <String>]: 
  [NetworkDestinationIPv4 <String>]: 
  [NetworkDestinationIPv6 <String>]: 
  [NetworkDestinationPort <Int32?>]: 
  [NetworkIPv4 <String>]: 
  [NetworkIPv6 <String>]: 
  [NetworkPort <Int32?>]: 
  [NetworkProtocol <Int32?>]: 
  [NetworkSourceAsn <Int64?>]: 
  [NetworkSourceCidrBlock <String>]: 
  [NetworkSourceIPv4 <String>]: 
  [NetworkSourceIPv6 <String>]: 
  [NetworkSourcePort <Int32?>]: 
  [PassiveOnly <Boolean?>]: Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false.
  [Severity <Int32?>]: An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3.
  [Tags <String[]>]: A JSON array of strings that stores arbitrary tags/keywords.
  [TargetProduct <String>]: A string value representing a single security product to which the indicator should be applied. Acceptable values are: Azure Sentinel, Microsoft Defender ATP. Required
  [ThreatType <String>]: Each indicator must have a valid Indicator Threat Type. Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList. Required.
  [TlpLevel <String>]: tlpLevel
  [Url <String>]: 
  [UserAgent <String>]: 

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritytiindicator
#>
function Update-MgSecurityTiIndicator {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of tiIndicator
    ${TiIndicatorId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTiIndicator]
    # tiIndicator
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # tiAction
    ${Action},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
    ${ActivityGroupNames},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed.
    # Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
    ${AdditionalInformation},

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
    # Stamped by the system when the indicator is ingested.
    # The Azure Active Directory tenant id of submitting client.
    # Required.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # An integer representing the confidence the data within the indicator accurately identifies malicious behavior.
    # Acceptable values are 0 – 100 with 100 being the highest.
    ${Confidence},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Brief description (100 characters or less) of the threat represented by the indicator.
    # Required.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # diamondModel
    ${DiamondModel},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DomainName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailEncoding},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailLanguage},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailRecipient},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailSenderAddress},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailSenderName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailSourceDomain},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailSourceIPAddress},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailSubject},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EmailXMailer},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # DateTime string indicating when the Indicator expires.
    # All indicators must have an expiration date to avoid stale indicators persisting in the system.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # An identification number that ties the indicator back to the indicator provider’s system (e.g.
    # a foreign key).
    ${ExternalId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FileCompileDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${FileCreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # fileHashType
    ${FileHashType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileHashValue},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileMutexName},

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
    # .
    ${FilePacker},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FilePath},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int64]
    # .
    ${FileSize},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${FileType},

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
    # Stamped by the system when the indicator is ingested.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${IngestedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Used to deactivate indicators within system.
    # By default, any indicator submitted is set as active.
    # However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
    ${IsActive},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # A JSON array of strings that describes which point or points on the Kill Chain this indicator targets.
    # See ‘killChain values’ below for exact values.
    ${KillChain},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Scenarios in which the indicator may cause false positives.
    # This should be human-readable text.
    ${KnownFalsePositives},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The last time the indicator was seen.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastReportedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The malware family name associated with an indicator if it exists.
    # Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
    ${MalwareFamilyNames},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkCidrBlock},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int64]
    # .
    ${NetworkDestinationAsn},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkDestinationCidrBlock},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkDestinationIPv4},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkDestinationIPv6},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${NetworkDestinationPort},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkIPv4},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkIPv6},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${NetworkPort},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${NetworkProtocol},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int64]
    # .
    ${NetworkSourceAsn},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkSourceCidrBlock},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkSourceIPv4},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NetworkSourceIPv6},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${NetworkSourcePort},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Determines if the indicator should trigger an event that is visible to an end-user.
    # When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred.
    # This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action.
    # Default value is false.
    ${PassiveOnly},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # An integer representing the severity of the malicious behavior identified by the data within the indicator.
    # Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all.
    # Default value is 3.
    ${Severity},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # A JSON array of strings that stores arbitrary tags/keywords.
    ${Tags},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A string value representing a single security product to which the indicator should be applied.
    # Acceptable values are: Azure Sentinel, Microsoft Defender ATP.
    # Required
    ${TargetProduct},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Each indicator must have a valid Indicator Threat Type.
    # Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList.
    # Required.
    ${ThreatType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # tlpLevel
    ${TlpLevel},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Url},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${UserAgent},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityTiIndicator_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityTiIndicator_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityTiIndicator_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityTiIndicator_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property userSecurityProfiles in security
.Description
Update the navigation property userSecurityProfiles in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityProfile
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACCOUNTS <IMicrosoftGraphUserAccount[]>: .
  [DisplayName <String>]: 
  [LastSeenDateTime <DateTime?>]: 
  [RiskScore <String>]: 
  [Service <String>]: 
  [SigninName <String>]: 
  [Status <String>]: accountStatus

BODYPARAMETER <IMicrosoftGraphUserSecurityProfile>: userSecurityProfile
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Accounts <IMicrosoftGraphUserAccount[]>]: 
    [DisplayName <String>]: 
    [LastSeenDateTime <DateTime?>]: 
    [RiskScore <String>]: 
    [Service <String>]: 
    [SigninName <String>]: 
    [Status <String>]: accountStatus
  [AzureSubscriptionId <String>]: 
  [AzureTenantId <String>]: 
  [CreatedDateTime <DateTime?>]: 
  [DisplayName <String>]: 
  [LastModifiedDateTime <DateTime?>]: 
  [RiskScore <String>]: 
  [Tags <String[]>]: 
  [UserPrincipalName <String>]: 
  [VendorInformation <IMicrosoftGraphSecurityVendorInformation>]: securityVendorInformation
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
    [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
    [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
    [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required

INPUTOBJECT <ISecurityIdentity>: Identity Parameter
  [AlertId <String>]: key: id of alert
  [CloudAppSecurityProfileId <String>]: key: id of cloudAppSecurityProfile
  [DomainSecurityProfileId <String>]: key: id of domainSecurityProfile
  [FileSecurityProfileId <String>]: key: id of fileSecurityProfile
  [HostSecurityProfileId <String>]: key: id of hostSecurityProfile
  [IPSecurityProfileId <String>]: key: id of ipSecurityProfile
  [IncidentId <String>]: key: id of incident
  [ProviderTenantSettingId <String>]: key: id of providerTenantSetting
  [SecureScoreControlProfileId <String>]: key: id of secureScoreControlProfile
  [SecureScoreId <String>]: key: id of secureScore
  [SecurityActionId <String>]: key: id of securityAction
  [SimulationId <String>]: key: id of simulation
  [TiIndicatorId <String>]: key: id of tiIndicator
  [UserSecurityProfileId <String>]: key: id of userSecurityProfile

VENDORINFORMATION <IMicrosoftGraphSecurityVendorInformation>: securityVendorInformation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Provider <String>]: Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
  [ProviderVersion <String>]: Version of the provider or subprovider, if it exists, that generated the alert. Required
  [SubProvider <String>]: Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
  [Vendor <String>]: Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecurityusersecurityprofile
#>
function Update-MgSecurityUserSecurityProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userSecurityProfile
    ${UserSecurityProfileId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityProfile]
    # userSecurityProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserAccount[]]
    # .
    # To construct, see NOTES section for ACCOUNTS properties and create a hash table.
    ${Accounts},

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
    # .
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AzureTenantId},

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
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RiskScore},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Tags},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${UserPrincipalName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityUserSecurityProfile_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityUserSecurityProfile_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityUserSecurityProfile_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityUserSecurityProfile_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAPWaB5IaR5RAJF
# MFhuoGNuXc0pFvXFmK/+tQn8dUVOb6CCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQguc9BriwP
# ivqk80p/VUyR4Z5D067JN9+fCLVFfKRj06wwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQCcDOey/0i+8vMIVXLQq6v4vn2AgppUwbWTrpEehDs2
# yA2gwpgQyCnN7mONa+s/2fyIiB3pprN/TyaIwzOK0pk7LouLwdMqASv63S2n//a0
# 3tC0ksioNecOK4Iu1jqg1hXAj9zcl5ZnsuS6+5EL706NNz8o/O/rz3SsHCARfF96
# oGurxslQB/kI/rB9018xCme8OZiWW11YHrQO45y9YdqwdoKJd0q1poZx8WQdOoW2
# nKW5QiVxCLNm20uOsJpkI4yEcNe9MMTopm7F8jSE9uZYUgG8k+nbqWcbrfhO9SJ+
# sPqWLigcvXbAARuinvIIaD5XaHsuYYWMdLaQ/imIr8iIoYIS/jCCEvoGCisGAQQB
# gjcDAwExghLqMIIS5gYJKoZIhvcNAQcCoIIS1zCCEtMCAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIBTOt8co8/T8jRfqWX0VOWl+tLUfQsXobGX0KL5t
# yzriAgZhcIdiG9sYEzIwMjExMDI3MDcxMTI0LjQ3MlowBIACAfSggdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046MkFENC00QjkyLUZBMDExJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2Wggg5NMIIE+TCCA+GgAwIBAgITMwAAATjzlCHWYb7w
# KQAAAAABODANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMDAeFw0yMDEwMTUxNzI4MjBaFw0yMjAxMTIxNzI4MjBaMIHSMQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQg
# SXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOjJBRDQtNEI5Mi1GQTAxMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxbn4p6le
# cIMyAgKjbK7+A/vdqY+y1pmgXIjOwXGvDAjy7aKPsp978FH+VPHh+3Yk9tc0ET35
# 54bbS7TrObejbAH8bQ3UMqT7sU79nkALxKqykp2lYfI/ZvrDVBecswbz1v/9CZcT
# drSailbNDIg1lTfSA0LDhebTt02J+R5eCZrhfXedCWJP1kt1jy0E5wJUryqYOhXs
# rgewGdQsdH2bvp5JfRip+vg8rwVAJ78RHbbT5xTof+oFLOCAgmJG0e2yC7PAItEr
# KPMWjM86pkVKR6atoVKuA5oG4d4NWktiUzKT2bynwlVkx74uu6rF7U+56udCwwk2
# mnNjD+OXDhyPGQIDAQABo4IBGzCCARcwHQYDVR0OBBYEFN/qrdzo76xTsTL7OYjF
# YMGeccC1MB8GA1UdIwQYMBaAFNVjOlyKMZDzQ3t8RhvFM2hahW1VMFYGA1UdHwRP
# ME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1
# Y3RzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNybDBaBggrBgEFBQcBAQROMEww
# SgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMv
# TWljVGltU3RhUENBXzIwMTAtMDctMDEuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0l
# BAwwCgYIKwYBBQUHAwgwDQYJKoZIhvcNAQELBQADggEBAKN4sEhcC7G/DRKQy9LI
# to5OI5VZUgS3SBFZrNHsr/ZzR5MsaiY3eVxm9zZmbg+m4utdCi8FcUdPScD6r8Fo
# tfHO3dF/I6rjXej/sGbNv7h8HsBPWmL3Se+mZ+//IQrFi5rktqxs6LSkCPirmMhY
# Z6hUfJgN4PgtkG/mwqSqF04f74G8A2JHwhDzsLBi4MYBZDT4KLJ9KAOgWZAmS4O3
# MAYxzsfbsN0WsjMgDMq8B2XqQNzILESwkAPRJKWXfX73C6IJS5MHWarGIj+BygDs
# 5p6M28w53sXPWAKNAqt7ZGBaspG+k/t3xfWAm8eD4CnvEKSVM8Vffr2HwG+CUgAC
# ppowggZxMIIEWaADAgECAgphCYEqAAAAAAACMA0GCSqGSIb3DQEBCwUAMIGIMQsw
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
# bGVzIFRTUyBFU046MkFENC00QjkyLUZBMDExJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAEC86zs20AKnzakuISFL
# JspZ5oH5oIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwDQYJ
# KoZIhvcNAQEFBQACBQDlIu6SMCIYDzIwMjExMDI3MDUxNjAyWhgPMjAyMTEwMjgw
# NTE2MDJaMHcwPQYKKwYBBAGEWQoEATEvMC0wCgIFAOUi7pICAQAwCgIBAAICEbgC
# Af8wBwIBAAICEh8wCgIFAOUkQBICAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYB
# BAGEWQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUFAAOB
# gQAl+cjDuKPQiLwfeb/zYiryiAqvWPlb0LbnIf6ON3DZd19iTn9/ZkeG4O8Vz6ap
# OtKRrSV1yhzuqGvB8ThSHWfQytRy66C2YMwYv51a1UpasZmqVDWPvCTboMSQrtMN
# ud+7WQ8aTFDkHGAJL+VKNU21QzwBb1xWh/gG3HkkvRxDzzGCAw0wggMJAgEBMIGT
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABOPOUIdZhvvApAAAA
# AAE4MA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQ
# AQQwLwYJKoZIhvcNAQkEMSIEIEoWkHu0DkzLDXxUF0i6hQ7cnYrOeufIUflSDebm
# eLvQMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgQ0CTSvl/RCqSSGLiLKbu
# 7sbS3mjmCOpO+ith7RaPhygwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAATjzlCHWYb7wKQAAAAABODAiBCBvSy7oTfogN3Ba17YkljT9
# HvBqO/U2WO9VmmOSMreb+DANBgkqhkiG9w0BAQsFAASCAQDBx/dvRbYxLbcHqifh
# V51mB5ZfdoJvCY2oqRE6dXvJuLuq1Yf5oT3whSXvinVOLMnhCre9ZPWuwiOPioAp
# 6pXhDVGk7mrcL5W9CuAl3Kb0UMmBsjFNLkiVUUOMnrLh0tQy7cM/pnMlB2BApcYf
# fIZcTo2J6gJpqMj2/m/X1ZLBa0E9sRc7QVSDvKe5p/WdeF+iqqyXkWo/p0Z177K/
# 2Cx0c8JFSbXXAELxn7nH7Fi82l2NwKxCrZFi9fMThmqRPqKMY/OfzxmHVQjvq9vS
# Y5ZKcC/fke/qraJp9exeQX9djT8o8vGKhTnOKqnq7IloIjicNmduKI4B+wq3NrRV
# k/5x
# SIG # End signature block
