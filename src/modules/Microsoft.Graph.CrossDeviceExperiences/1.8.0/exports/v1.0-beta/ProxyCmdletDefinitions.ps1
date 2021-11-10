
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Optional.
NavigationProperty/Containment; navigation property to the associated activity.
.Description
Optional.
NavigationProperty/Containment; navigation property to the associated activity.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/get-mguseractivityhistoryitemactivitybyref
#>
function Get-MgUserActivityHistoryItemActivityByRef {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
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
            Get = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItemActivityByRef_Get';
            GetViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItemActivityByRef_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Optional.
NavigationProperty/Containment; navigation property to the associated activity.
.Description
Optional.
NavigationProperty/Containment; navigation property to the associated activity.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/get-mguseractivityhistoryitemactivity
#>
function Get-MgUserActivityHistoryItemActivity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
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
            Get = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItemActivity_Get';
            GetViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItemActivity_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Optional.
NavigationProperty/Containment; navigation property to the activity's historyItems.
.Description
Optional.
NavigationProperty/Containment; navigation property to the activity's historyItems.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/get-mguseractivityhistoryitem
#>
function Get-MgUserActivityHistoryItem {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
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
            Get1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItem_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItem_GetViaIdentity1';
            List1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItem_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The user's activities across devices.
Read-only.
Nullable.
.Description
The user's activities across devices.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/get-mguseractivity
#>
function Get-MgUserActivity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
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
            Get = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivity_Get';
            GetViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivity_GetViaIdentity';
            List = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivity_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get devices from users
.Description
Get devices from users

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDevice
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/get-mguserdevice
#>
function Get-MgUserDevice {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDevice])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of device
    ${DeviceId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
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
            Get = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserDevice_Get';
            GetViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserDevice_GetViaIdentity';
            List = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserDevice_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Optional.
NavigationProperty/Containment; navigation property to the activity's historyItems.
.Description
Optional.
NavigationProperty/Containment; navigation property to the activity's historyItems.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACTIVITY <IMicrosoftGraphUserActivity1>: userActivity
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivationUrl <String>]: Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
  [ActivitySourceHost <String>]: Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
  [AppActivityId <String>]: Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
  [AppDisplayName <String>]: Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
  [ContentInfo <IMicrosoftGraphJson>]: Json
    [(Any) <Object>]: This indicates any property can be added to this object.
  [ContentUrl <String>]: Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
  [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
  [ExpirationDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object expired on the server.
  [FallbackUrl <String>]: Optional. URL used to launch the activity in a web-based app, if available.
  [HistoryItems <IMicrosoftGraphActivityHistoryItem1[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [Id <String>]: Read-only.
    [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    [Activity <IMicrosoftGraphUserActivity1>]: userActivity
    [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
    [ExpirationDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem will undergo hard-delete. Can be set by the client.
    [LastActiveDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
    [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
    [StartedDateTime <DateTime?>]: Required. UTC DateTime when the historyItem (activity session) was started. Required for timeline history.
    [Status <String>]: status
    [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.
  [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
  [Status <String>]: status
  [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
  [VisualElements <IMicrosoftGraphVisualInfo>]: visualInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attribution <IMicrosoftGraphImageInfo>]: imageInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AddImageQuery <Boolean?>]: Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
      [AlternateText <String>]: Optional; alt-text accessible content for the image
      [AlternativeText <String>]: 
      [IconUrl <String>]: Optional; URI that points to an icon which represents the application used to generate the activity
    [BackgroundColor <String>]: Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
    [Content <IMicrosoftGraphJson>]: Json
    [Description <String>]: Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
    [DisplayText <String>]: Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)

BODYPARAMETER <IMicrosoftGraphActivityHistoryItem1>: activityHistoryItem
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
  [Activity <IMicrosoftGraphUserActivity1>]: userActivity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [ActivationUrl <String>]: Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
    [ActivitySourceHost <String>]: Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
    [AppActivityId <String>]: Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
    [AppDisplayName <String>]: Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
    [ContentInfo <IMicrosoftGraphJson>]: Json
      [(Any) <Object>]: This indicates any property can be added to this object.
    [ContentUrl <String>]: Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
    [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
    [ExpirationDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object expired on the server.
    [FallbackUrl <String>]: Optional. URL used to launch the activity in a web-based app, if available.
    [HistoryItems <IMicrosoftGraphActivityHistoryItem1[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
    [Status <String>]: status
    [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
    [VisualElements <IMicrosoftGraphVisualInfo>]: visualInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Attribution <IMicrosoftGraphImageInfo>]: imageInfo
        [(Any) <Object>]: This indicates any property can be added to this object.
        [AddImageQuery <Boolean?>]: Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
        [AlternateText <String>]: Optional; alt-text accessible content for the image
        [AlternativeText <String>]: 
        [IconUrl <String>]: Optional; URI that points to an icon which represents the application used to generate the activity
      [BackgroundColor <String>]: Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
      [Content <IMicrosoftGraphJson>]: Json
      [Description <String>]: Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
      [DisplayText <String>]: Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)
  [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
  [ExpirationDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem will undergo hard-delete. Can be set by the client.
  [LastActiveDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
  [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
  [StartedDateTime <DateTime?>]: Required. UTC DateTime when the historyItem (activity session) was started. Required for timeline history.
  [Status <String>]: status
  [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/new-mguseractivityhistoryitem
#>
function New-MgUserActivityHistoryItem {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem1]
    # activityHistoryItem
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Optional.
    # The duration of active user engagement.
    # if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    ${ActiveDurationSeconds},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1]
    # userActivity
    # To construct, see NOTES section for ACTIVITY properties and create a hash table.
    ${Activity},

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
    # Set by the server.
    # DateTime in UTC when the object was created on the server.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Optional.
    # UTC DateTime when the historyItem will undergo hard-delete.
    # Can be set by the client.
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
    # Optional.
    # UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
    ${LastActiveDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Set by the server.
    # DateTime in UTC when the object was modified on the server.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Required.
    # UTC DateTime when the historyItem (activity session) was started.
    # Required for timeline history.
    ${StartedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # status
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # The timezone in which the user's device used to generate the activity was located at activity creation time.
    # Values supplied as Olson IDs in order to support cross-platform representation.
    ${UserTimezone},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivityHistoryItem_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivityHistoryItem_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivityHistoryItem_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivityHistoryItem_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The user's activities across devices.
Read-only.
Nullable.
.Description
The user's activities across devices.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphUserActivity1>: userActivity
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivationUrl <String>]: Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
  [ActivitySourceHost <String>]: Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
  [AppActivityId <String>]: Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
  [AppDisplayName <String>]: Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
  [ContentInfo <IMicrosoftGraphJson>]: Json
    [(Any) <Object>]: This indicates any property can be added to this object.
  [ContentUrl <String>]: Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
  [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
  [ExpirationDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object expired on the server.
  [FallbackUrl <String>]: Optional. URL used to launch the activity in a web-based app, if available.
  [HistoryItems <IMicrosoftGraphActivityHistoryItem1[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [Id <String>]: Read-only.
    [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    [Activity <IMicrosoftGraphUserActivity1>]: userActivity
    [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
    [ExpirationDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem will undergo hard-delete. Can be set by the client.
    [LastActiveDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
    [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
    [StartedDateTime <DateTime?>]: Required. UTC DateTime when the historyItem (activity session) was started. Required for timeline history.
    [Status <String>]: status
    [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.
  [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
  [Status <String>]: status
  [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
  [VisualElements <IMicrosoftGraphVisualInfo>]: visualInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attribution <IMicrosoftGraphImageInfo>]: imageInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AddImageQuery <Boolean?>]: Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
      [AlternateText <String>]: Optional; alt-text accessible content for the image
      [AlternativeText <String>]: 
      [IconUrl <String>]: Optional; URI that points to an icon which represents the application used to generate the activity
    [BackgroundColor <String>]: Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
    [Content <IMicrosoftGraphJson>]: Json
    [Description <String>]: Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
    [DisplayText <String>]: Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)

HISTORYITEMS <IMicrosoftGraphActivityHistoryItem1[]>: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
  [Id <String>]: Read-only.
  [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
  [Activity <IMicrosoftGraphUserActivity1>]: userActivity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [ActivationUrl <String>]: Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
    [ActivitySourceHost <String>]: Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
    [AppActivityId <String>]: Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
    [AppDisplayName <String>]: Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
    [ContentInfo <IMicrosoftGraphJson>]: Json
      [(Any) <Object>]: This indicates any property can be added to this object.
    [ContentUrl <String>]: Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
    [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
    [ExpirationDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object expired on the server.
    [FallbackUrl <String>]: Optional. URL used to launch the activity in a web-based app, if available.
    [HistoryItems <IMicrosoftGraphActivityHistoryItem1[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
    [Status <String>]: status
    [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
    [VisualElements <IMicrosoftGraphVisualInfo>]: visualInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Attribution <IMicrosoftGraphImageInfo>]: imageInfo
        [(Any) <Object>]: This indicates any property can be added to this object.
        [AddImageQuery <Boolean?>]: Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
        [AlternateText <String>]: Optional; alt-text accessible content for the image
        [AlternativeText <String>]: 
        [IconUrl <String>]: Optional; URI that points to an icon which represents the application used to generate the activity
      [BackgroundColor <String>]: Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
      [Content <IMicrosoftGraphJson>]: Json
      [Description <String>]: Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
      [DisplayText <String>]: Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)
  [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
  [ExpirationDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem will undergo hard-delete. Can be set by the client.
  [LastActiveDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
  [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
  [StartedDateTime <DateTime?>]: Required. UTC DateTime when the historyItem (activity session) was started. Required for timeline history.
  [Status <String>]: status
  [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user

VISUALELEMENTS <IMicrosoftGraphVisualInfo>: visualInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Attribution <IMicrosoftGraphImageInfo>]: imageInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AddImageQuery <Boolean?>]: Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
    [AlternateText <String>]: Optional; alt-text accessible content for the image
    [AlternativeText <String>]: 
    [IconUrl <String>]: Optional; URI that points to an icon which represents the application used to generate the activity
  [BackgroundColor <String>]: Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
  [Content <IMicrosoftGraphJson>]: Json
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
  [DisplayText <String>]: Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/new-mguseractivity
#>
function New-MgUserActivity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1]
    # userActivity
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # URL used to launch the activity in the best native experience represented by the appId.
    # Might launch a web-based app if no native app exists.
    ${ActivationUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # URL for the domain representing the cross-platform identity mapping for the app.
    # Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center.
    # The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain.
    # For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath.
    # You must have a unique file and domain (or sub domain) per cross-platform app identity.
    # For example, a separate file and domain is needed for Word vs.
    # PowerPoint.
    ${ActivitySourceHost},

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
    # Required.
    # The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
    ${AppActivityId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
    ${AppDisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphJson]))]
    [System.Collections.Hashtable]
    # Json
    ${ContentInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
    ${ContentUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Set by the server.
    # DateTime in UTC when the object was created on the server.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Set by the server.
    # DateTime in UTC when the object expired on the server.
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # URL used to launch the activity in a web-based app, if available.
    ${FallbackUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem1[]]
    # Optional.
    # NavigationProperty/Containment; navigation property to the activity's historyItems.
    # To construct, see NOTES section for HISTORYITEMS properties and create a hash table.
    ${HistoryItems},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Set by the server.
    # DateTime in UTC when the object was modified on the server.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # status
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
    ${UserTimezone},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVisualInfo]
    # visualInfo
    # To construct, see NOTES section for VISUALELEMENTS properties and create a hash table.
    ${VisualElements},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivity_Create';
            CreateExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivity_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivity_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivity_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to devices for users
.Description
Create new navigation property to devices for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDevice
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDevice
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ALTERNATIVESECURITYIDS <IMicrosoftGraphAlternativeSecurityId[]>: For internal use only. Not nullable. Supports $filter (eq, NOT, ge, le).
  [IdentityProvider <String>]: For internal use only
  [Key <Byte[]>]: For internal use only
  [Type <Int32?>]: For internal use only

BODYPARAMETER <IMicrosoftGraphDevice>: device
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DeletedDateTime <DateTime?>]: 
  [Id <String>]: Read-only.
  [AccountEnabled <Boolean?>]: true if the account is enabled; otherwise, false. Required. Default is true.  Supports $filter (eq, ne, NOT, in). Only callers in Global Administrator and Cloud Device Administrator roles can set this property.
  [AlternativeSecurityIds <IMicrosoftGraphAlternativeSecurityId[]>]: For internal use only. Not nullable. Supports $filter (eq, NOT, ge, le).
    [IdentityProvider <String>]: For internal use only
    [Key <Byte[]>]: For internal use only
    [Type <Int32?>]: For internal use only
  [ApproximateLastSignInDateTime <DateTime?>]: The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Supports $filter (eq, ne, NOT, ge, le) and $orderBy.
  [Commands <IMicrosoftGraphCommand[]>]: Set of commands sent to this device.
    [Id <String>]: Read-only.
    [AppServiceName <String>]: 
    [Error <String>]: 
    [PackageFamilyName <String>]: 
    [Payload <IMicrosoftGraphPayloadRequest>]: payloadRequest
      [(Any) <Object>]: This indicates any property can be added to this object.
    [PermissionTicket <String>]: 
    [PostBackUri <String>]: 
    [Responsepayload <IMicrosoftGraphPayloadResponse>]: payloadResponse
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
    [Status <String>]: 
    [Type <String>]: 
  [ComplianceExpirationDateTime <DateTime?>]: The timestamp when the device is no longer deemed compliant. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
  [DeviceCategory <String>]: User-defined property set by Intune to automatically add devices to groups and simplify managing devices.
  [DeviceId <String>]: Unique identifier set by Azure Device Registration Service at the time of registration. Supports $filter (eq, ne, NOT, startsWith).
  [DeviceMetadata <String>]: For internal use only. Set to null.
  [DeviceOwnership <String>]: Ownership of the device. This property is set by Intune. Possible values are: unknown, company, personal.
  [DeviceVersion <Int32?>]: For internal use only.
  [DisplayName <String>]: The display name for the device. Required. Supports $filter (eq, ne, NOT, ge, le, in, startsWith), $search, and $orderBy.
  [DomainName <String>]: The on-premises domain name of Hybrid Azure AD joined devices. This property is set by Intune.
  [EnrollmentProfileName <String>]: Enrollment profile applied to the device. For example, Apple Device Enrollment Profile, Device enrollment - Corporate device identifiers, or Windows Autopilot profile name. This property is set by Intune.
  [EnrollmentType <String>]: Enrollment type of the device. This property is set by Intune. Possible values are: unknown, userEnrollment, deviceEnrollmentManager, appleBulkWithUser, appleBulkWithoutUser, windowsAzureADJoin, windowsBulkUserless, windowsAutoEnrollment, windowsBulkAzureDomainJoin, windowsCoManagement.
  [ExtensionAttributes <IMicrosoftGraphOnPremisesExtensionAttributes>]: onPremisesExtensionAttributes
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ExtensionAttribute1 <String>]: First customizable extension attribute.
    [ExtensionAttribute10 <String>]: Tenth customizable extension attribute.
    [ExtensionAttribute11 <String>]: Eleventh customizable extension attribute.
    [ExtensionAttribute12 <String>]: Twelfth customizable extension attribute.
    [ExtensionAttribute13 <String>]: Thirteenth customizable extension attribute.
    [ExtensionAttribute14 <String>]: Fourteenth customizable extension attribute.
    [ExtensionAttribute15 <String>]: Fifteenth customizable extension attribute.
    [ExtensionAttribute2 <String>]: Second customizable extension attribute.
    [ExtensionAttribute3 <String>]: Third customizable extension attribute.
    [ExtensionAttribute4 <String>]: Fourth customizable extension attribute.
    [ExtensionAttribute5 <String>]: Fifth customizable extension attribute.
    [ExtensionAttribute6 <String>]: Sixth customizable extension attribute.
    [ExtensionAttribute7 <String>]: Seventh customizable extension attribute.
    [ExtensionAttribute8 <String>]: Eighth customizable extension attribute.
    [ExtensionAttribute9 <String>]: Ninth customizable extension attribute.
  [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the device. Read-only. Nullable.
    [Id <String>]: Read-only.
  [Hostnames <String[]>]: List of hostNames for the device.
  [IsCompliant <Boolean?>]: true if the device complies with Mobile Device Management (MDM) policies; otherwise, false. Read-only. This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices. Supports $filter (eq, ne, NOT).
  [IsManaged <Boolean?>]: true if the device is managed by a Mobile Device Management (MDM) app; otherwise, false. This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices. Supports $filter (eq, ne, NOT).
  [IsRooted <Boolean?>]: true if device is rooted; false if device is jail-broken. This can only be updated by Intune.
  [Kind <String>]: Form factor of device. Only returned if user signs in with a Microsoft account as part of Project Rome.
  [ManagementType <String>]: Management channel of the device.  This property is set by Intune. Possible values are: eas, mdm, easMdm, intuneClient, easIntuneClient, configurationManagerClient, configurationManagerClientMdm, configurationManagerClientMdmEas, unknown, jamf, googleCloudDevicePolicyController.
  [Manufacturer <String>]: Manufacturer of the device. Read-only.
  [MemberOf <IMicrosoftGraphDirectoryObject[]>]: Groups that this device is a member of. Read-only. Nullable. Supports $expand.
    [Id <String>]: Read-only.
    [DeletedDateTime <DateTime?>]: 
  [Model <String>]: Model of the device. Read-only.
  [Name <String>]: Friendly name of a device. Only returned if user signs in with a Microsoft account as part of Project Rome.
  [OnPremisesLastSyncDateTime <DateTime?>]: The last time at which the object was synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z Read-only. Supports $filter (eq, ne, NOT, ge, le, in).
  [OnPremisesSyncEnabled <Boolean?>]: true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Read-only. Supports $filter (eq, ne, NOT, in).
  [OperatingSystem <String>]: The type of operating system on the device. Required. Supports $filter (eq, ne, NOT, ge, le, startsWith).
  [OperatingSystemVersion <String>]: The version of the operating system on the device. Required. Supports $filter (eq, ne, NOT, ge, le, startsWith).
  [PhysicalIds <String[]>]: For internal use only. Not nullable. Supports $filter (eq, NOT, ge, le, startsWith).
  [Platform <String>]: Platform of device. Only returned if user signs in with a Microsoft account as part of Project Rome. Only returned if user signs in with a Microsoft account as part of Project Rome.
  [ProfileType <String>]: The profile type of the device. Possible values: RegisteredDevice (default), SecureVM, Printer, Shared, IoT.
  [RegisteredOwners <IMicrosoftGraphDirectoryObject[]>]: The user that cloud joined the device or registered their personal device. The registered owner is set at the time of registration. Currently, there can be only one owner. Read-only. Nullable. Supports $expand.
  [RegisteredUsers <IMicrosoftGraphDirectoryObject[]>]: Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports $expand.
  [RegistrationDateTime <DateTime?>]: Date and time of when the device was registered. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
  [Status <String>]: Device is online or offline. Only returned if user signs in with a Microsoft account as part of Project Rome.
  [SystemLabels <String[]>]: List of labels applied to the device by the system.
  [TransitiveMemberOf <IMicrosoftGraphDirectoryObject[]>]: Groups that the device is a member of. This operation is transitive. Supports $expand.
  [TrustType <String>]: Type of trust for the joined device. Read-only. Possible values:  Workplace (indicates bring your own personal devices), AzureAd (Cloud only joined devices), ServerAd (on-premises domain joined devices joined to Azure AD). For more details, see Introduction to device management in Azure Active Directory
  [UsageRights <IMicrosoftGraphUsageRight[]>]: Represents the usage rights a device has been granted.
    [Id <String>]: Read-only.
    [CatalogId <String>]: Product id corresponding to the usage right.
    [ServiceIdentifier <String>]: Identifier of the service corresponding to the usage right.
    [State <String>]: usageRightState

COMMANDS <IMicrosoftGraphCommand[]>: Set of commands sent to this device.
  [Id <String>]: Read-only.
  [AppServiceName <String>]: 
  [Error <String>]: 
  [PackageFamilyName <String>]: 
  [Payload <IMicrosoftGraphPayloadRequest>]: payloadRequest
    [(Any) <Object>]: This indicates any property can be added to this object.
  [PermissionTicket <String>]: 
  [PostBackUri <String>]: 
  [Responsepayload <IMicrosoftGraphPayloadResponse>]: payloadResponse
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
  [Status <String>]: 
  [Type <String>]: 

EXTENSIONATTRIBUTES <IMicrosoftGraphOnPremisesExtensionAttributes>: onPremisesExtensionAttributes
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ExtensionAttribute1 <String>]: First customizable extension attribute.
  [ExtensionAttribute10 <String>]: Tenth customizable extension attribute.
  [ExtensionAttribute11 <String>]: Eleventh customizable extension attribute.
  [ExtensionAttribute12 <String>]: Twelfth customizable extension attribute.
  [ExtensionAttribute13 <String>]: Thirteenth customizable extension attribute.
  [ExtensionAttribute14 <String>]: Fourteenth customizable extension attribute.
  [ExtensionAttribute15 <String>]: Fifteenth customizable extension attribute.
  [ExtensionAttribute2 <String>]: Second customizable extension attribute.
  [ExtensionAttribute3 <String>]: Third customizable extension attribute.
  [ExtensionAttribute4 <String>]: Fourth customizable extension attribute.
  [ExtensionAttribute5 <String>]: Fifth customizable extension attribute.
  [ExtensionAttribute6 <String>]: Sixth customizable extension attribute.
  [ExtensionAttribute7 <String>]: Seventh customizable extension attribute.
  [ExtensionAttribute8 <String>]: Eighth customizable extension attribute.
  [ExtensionAttribute9 <String>]: Ninth customizable extension attribute.

EXTENSIONS <IMicrosoftGraphExtension[]>: The collection of open extensions defined for the device. Read-only. Nullable.
  [Id <String>]: Read-only.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user

MEMBEROF <IMicrosoftGraphDirectoryObject[]>: Groups that this device is a member of. Read-only. Nullable. Supports $expand.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

REGISTEREDOWNERS <IMicrosoftGraphDirectoryObject[]>: The user that cloud joined the device or registered their personal device. The registered owner is set at the time of registration. Currently, there can be only one owner. Read-only. Nullable. Supports $expand.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

REGISTEREDUSERS <IMicrosoftGraphDirectoryObject[]>: Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports $expand.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

TRANSITIVEMEMBEROF <IMicrosoftGraphDirectoryObject[]>: Groups that the device is a member of. This operation is transitive. Supports $expand.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

USAGERIGHTS <IMicrosoftGraphUsageRight[]>: Represents the usage rights a device has been granted.
  [Id <String>]: Read-only.
  [CatalogId <String>]: Product id corresponding to the usage right.
  [ServiceIdentifier <String>]: Identifier of the service corresponding to the usage right.
  [State <String>]: usageRightState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/new-mguserdevice
#>
function New-MgUserDevice {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDevice])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDevice]
    # device
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the account is enabled; otherwise, false.
    # Required.
    # Default is true.
    # Supports $filter (eq, ne, NOT, in).
    # Only callers in Global Administrator and Cloud Device Administrator roles can set this property.
    ${AccountEnabled},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlternativeSecurityId[]]
    # For internal use only.
    # Not nullable.
    # Supports $filter (eq, NOT, ge, le).
    # To construct, see NOTES section for ALTERNATIVESECURITYIDS properties and create a hash table.
    ${AlternativeSecurityIds},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Read-only.
    # Supports $filter (eq, ne, NOT, ge, le) and $orderBy.
    ${ApproximateLastSignInDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommand[]]
    # Set of commands sent to this device.
    # To construct, see NOTES section for COMMANDS properties and create a hash table.
    ${Commands},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The timestamp when the device is no longer deemed compliant.
    # The timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Read-only.
    ${ComplianceExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${DeletedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # User-defined property set by Intune to automatically add devices to groups and simplify managing devices.
    ${DeviceCategory},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Unique identifier set by Azure Device Registration Service at the time of registration.
    # Supports $filter (eq, ne, NOT, startsWith).
    ${DeviceId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # For internal use only.
    # Set to null.
    ${DeviceMetadata},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Ownership of the device.
    # This property is set by Intune.
    # Possible values are: unknown, company, personal.
    ${DeviceOwnership},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # For internal use only.
    ${DeviceVersion},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name for the device.
    # Required.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith), $search, and $orderBy.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The on-premises domain name of Hybrid Azure AD joined devices.
    # This property is set by Intune.
    ${DomainName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Enrollment profile applied to the device.
    # For example, Apple Device Enrollment Profile, Device enrollment - Corporate device identifiers, or Windows Autopilot profile name.
    # This property is set by Intune.
    ${EnrollmentProfileName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Enrollment type of the device.
    # This property is set by Intune.
    # Possible values are: unknown, userEnrollment, deviceEnrollmentManager, appleBulkWithUser, appleBulkWithoutUser, windowsAzureADJoin, windowsBulkUserless, windowsAutoEnrollment, windowsBulkAzureDomainJoin, windowsCoManagement.
    ${EnrollmentType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnPremisesExtensionAttributes]
    # onPremisesExtensionAttributes
    # To construct, see NOTES section for EXTENSIONATTRIBUTES properties and create a hash table.
    ${ExtensionAttributes},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension[]]
    # The collection of open extensions defined for the device.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for EXTENSIONS properties and create a hash table.
    ${Extensions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of hostNames for the device.
    ${Hostnames},

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
    # true if the device complies with Mobile Device Management (MDM) policies; otherwise, false.
    # Read-only.
    # This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices.
    # Supports $filter (eq, ne, NOT).
    ${IsCompliant},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the device is managed by a Mobile Device Management (MDM) app; otherwise, false.
    # This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices.
    # Supports $filter (eq, ne, NOT).
    ${IsManaged},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if device is rooted; false if device is jail-broken.
    # This can only be updated by Intune.
    ${IsRooted},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Form factor of device.
    # Only returned if user signs in with a Microsoft account as part of Project Rome.
    ${Kind},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Management channel of the device.
    # This property is set by Intune.
    # Possible values are: eas, mdm, easMdm, intuneClient, easIntuneClient, configurationManagerClient, configurationManagerClientMdm, configurationManagerClientMdmEas, unknown, jamf, googleCloudDevicePolicyController.
    ${ManagementType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Manufacturer of the device.
    # Read-only.
    ${Manufacturer},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject[]]
    # Groups that this device is a member of.
    # Read-only.
    # Nullable.
    # Supports $expand.
    # To construct, see NOTES section for MEMBEROF properties and create a hash table.
    ${MemberOf},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Model of the device.
    # Read-only.
    ${Model},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Friendly name of a device.
    # Only returned if user signs in with a Microsoft account as part of Project Rome.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The last time at which the object was synced with the on-premises directory.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z Read-only.
    # Supports $filter (eq, ne, NOT, ge, le, in).
    ${OnPremisesLastSyncDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default).
    # Read-only.
    # Supports $filter (eq, ne, NOT, in).
    ${OnPremisesSyncEnabled},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The type of operating system on the device.
    # Required.
    # Supports $filter (eq, ne, NOT, ge, le, startsWith).
    ${OperatingSystem},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The version of the operating system on the device.
    # Required.
    # Supports $filter (eq, ne, NOT, ge, le, startsWith).
    ${OperatingSystemVersion},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # For internal use only.
    # Not nullable.
    # Supports $filter (eq, NOT, ge, le, startsWith).
    ${PhysicalIds},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Platform of device.
    # Only returned if user signs in with a Microsoft account as part of Project Rome.
    # Only returned if user signs in with a Microsoft account as part of Project Rome.
    ${Platform},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The profile type of the device.
    # Possible values: RegisteredDevice (default), SecureVM, Printer, Shared, IoT.
    ${ProfileType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject[]]
    # The user that cloud joined the device or registered their personal device.
    # The registered owner is set at the time of registration.
    # Currently, there can be only one owner.
    # Read-only.
    # Nullable.
    # Supports $expand.
    # To construct, see NOTES section for REGISTEREDOWNERS properties and create a hash table.
    ${RegisteredOwners},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject[]]
    # Collection of registered users of the device.
    # For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration.
    # Read-only.
    # Nullable.
    # Supports $expand.
    # To construct, see NOTES section for REGISTEREDUSERS properties and create a hash table.
    ${RegisteredUsers},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time of when the device was registered.
    # The timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Read-only.
    ${RegistrationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Device is online or offline.
    # Only returned if user signs in with a Microsoft account as part of Project Rome.
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of labels applied to the device by the system.
    ${SystemLabels},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject[]]
    # Groups that the device is a member of.
    # This operation is transitive.
    # Supports $expand.
    # To construct, see NOTES section for TRANSITIVEMEMBEROF properties and create a hash table.
    ${TransitiveMemberOf},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Type of trust for the joined device.
    # Read-only.
    # Possible values: Workplace (indicates bring your own personal devices), AzureAd (Cloud only joined devices), ServerAd (on-premises domain joined devices joined to Azure AD).
    # For more details, see Introduction to device management in Azure Active Directory
    ${TrustType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUsageRight[]]
    # Represents the usage rights a device has been granted.
    # To construct, see NOTES section for USAGERIGHTS properties and create a hash table.
    ${UsageRights},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserDevice_Create';
            CreateExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserDevice_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserDevice_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserDevice_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Optional.
NavigationProperty/Containment; navigation property to the associated activity.
.Description
Optional.
NavigationProperty/Containment; navigation property to the associated activity.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/remove-mguseractivityhistoryitemactivitybyref
#>
function Remove-MgUserActivityHistoryItemActivityByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
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
            Delete = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivityHistoryItemActivityByRef_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivityHistoryItemActivityByRef_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Optional.
NavigationProperty/Containment; navigation property to the activity's historyItems.
.Description
Optional.
NavigationProperty/Containment; navigation property to the activity's historyItems.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/remove-mguseractivityhistoryitem
#>
function Remove-MgUserActivityHistoryItem {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
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
            Delete1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivityHistoryItem_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivityHistoryItem_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The user's activities across devices.
Read-only.
Nullable.
.Description
The user's activities across devices.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/remove-mguseractivity
#>
function Remove-MgUserActivity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
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
            Delete1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivity_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivity_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property devices for users
.Description
Delete navigation property devices for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/remove-mguserdevice
#>
function Remove-MgUserDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of device
    ${DeviceId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
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
            Delete = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserDevice_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserDevice_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Optional.
NavigationProperty/Containment; navigation property to the associated activity.
.Description
Optional.
NavigationProperty/Containment; navigation property to the associated activity.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/set-mguseractivityhistoryitemactivitybyref
#>
function Set-MgUserActivityHistoryItemActivityByRef {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IPaths1Rxcxy7UsersUserIdActivitiesUseractivityIdHistoryitemsActivityhistoryitemIdActivityRefPutRequestbodyContentApplicationJsonSchema]))]
    [System.Collections.Hashtable]
    # .
    ${BodyParameter},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
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
            Set = 'Microsoft.Graph.CrossDeviceExperiences.private\Set-MgUserActivityHistoryItemActivityByRef_Set';
            SetExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\Set-MgUserActivityHistoryItemActivityByRef_SetExpanded';
            SetViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Set-MgUserActivityHistoryItemActivityByRef_SetViaIdentity';
            SetViaIdentityExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\Set-MgUserActivityHistoryItemActivityByRef_SetViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Optional.
NavigationProperty/Containment; navigation property to the activity's historyItems.
.Description
Optional.
NavigationProperty/Containment; navigation property to the activity's historyItems.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACTIVITY <IMicrosoftGraphUserActivity1>: userActivity
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivationUrl <String>]: Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
  [ActivitySourceHost <String>]: Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
  [AppActivityId <String>]: Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
  [AppDisplayName <String>]: Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
  [ContentInfo <IMicrosoftGraphJson>]: Json
    [(Any) <Object>]: This indicates any property can be added to this object.
  [ContentUrl <String>]: Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
  [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
  [ExpirationDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object expired on the server.
  [FallbackUrl <String>]: Optional. URL used to launch the activity in a web-based app, if available.
  [HistoryItems <IMicrosoftGraphActivityHistoryItem1[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [Id <String>]: Read-only.
    [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    [Activity <IMicrosoftGraphUserActivity1>]: userActivity
    [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
    [ExpirationDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem will undergo hard-delete. Can be set by the client.
    [LastActiveDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
    [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
    [StartedDateTime <DateTime?>]: Required. UTC DateTime when the historyItem (activity session) was started. Required for timeline history.
    [Status <String>]: status
    [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.
  [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
  [Status <String>]: status
  [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
  [VisualElements <IMicrosoftGraphVisualInfo>]: visualInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attribution <IMicrosoftGraphImageInfo>]: imageInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AddImageQuery <Boolean?>]: Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
      [AlternateText <String>]: Optional; alt-text accessible content for the image
      [AlternativeText <String>]: 
      [IconUrl <String>]: Optional; URI that points to an icon which represents the application used to generate the activity
    [BackgroundColor <String>]: Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
    [Content <IMicrosoftGraphJson>]: Json
    [Description <String>]: Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
    [DisplayText <String>]: Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)

BODYPARAMETER <IMicrosoftGraphActivityHistoryItem1>: activityHistoryItem
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
  [Activity <IMicrosoftGraphUserActivity1>]: userActivity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [ActivationUrl <String>]: Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
    [ActivitySourceHost <String>]: Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
    [AppActivityId <String>]: Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
    [AppDisplayName <String>]: Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
    [ContentInfo <IMicrosoftGraphJson>]: Json
      [(Any) <Object>]: This indicates any property can be added to this object.
    [ContentUrl <String>]: Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
    [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
    [ExpirationDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object expired on the server.
    [FallbackUrl <String>]: Optional. URL used to launch the activity in a web-based app, if available.
    [HistoryItems <IMicrosoftGraphActivityHistoryItem1[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
    [Status <String>]: status
    [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
    [VisualElements <IMicrosoftGraphVisualInfo>]: visualInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Attribution <IMicrosoftGraphImageInfo>]: imageInfo
        [(Any) <Object>]: This indicates any property can be added to this object.
        [AddImageQuery <Boolean?>]: Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
        [AlternateText <String>]: Optional; alt-text accessible content for the image
        [AlternativeText <String>]: 
        [IconUrl <String>]: Optional; URI that points to an icon which represents the application used to generate the activity
      [BackgroundColor <String>]: Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
      [Content <IMicrosoftGraphJson>]: Json
      [Description <String>]: Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
      [DisplayText <String>]: Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)
  [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
  [ExpirationDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem will undergo hard-delete. Can be set by the client.
  [LastActiveDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
  [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
  [StartedDateTime <DateTime?>]: Required. UTC DateTime when the historyItem (activity session) was started. Required for timeline history.
  [Status <String>]: status
  [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/update-mguseractivityhistoryitem
#>
function Update-MgUserActivityHistoryItem {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem1]
    # activityHistoryItem
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Optional.
    # The duration of active user engagement.
    # if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    ${ActiveDurationSeconds},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1]
    # userActivity
    # To construct, see NOTES section for ACTIVITY properties and create a hash table.
    ${Activity},

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
    # Set by the server.
    # DateTime in UTC when the object was created on the server.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Optional.
    # UTC DateTime when the historyItem will undergo hard-delete.
    # Can be set by the client.
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
    # Optional.
    # UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
    ${LastActiveDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Set by the server.
    # DateTime in UTC when the object was modified on the server.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Required.
    # UTC DateTime when the historyItem (activity session) was started.
    # Required for timeline history.
    ${StartedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # status
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # The timezone in which the user's device used to generate the activity was located at activity creation time.
    # Values supplied as Olson IDs in order to support cross-platform representation.
    ${UserTimezone},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivityHistoryItem_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivityHistoryItem_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivityHistoryItem_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivityHistoryItem_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The user's activities across devices.
Read-only.
Nullable.
.Description
The user's activities across devices.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphUserActivity1>: userActivity
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActivationUrl <String>]: Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
  [ActivitySourceHost <String>]: Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
  [AppActivityId <String>]: Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
  [AppDisplayName <String>]: Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
  [ContentInfo <IMicrosoftGraphJson>]: Json
    [(Any) <Object>]: This indicates any property can be added to this object.
  [ContentUrl <String>]: Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
  [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
  [ExpirationDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object expired on the server.
  [FallbackUrl <String>]: Optional. URL used to launch the activity in a web-based app, if available.
  [HistoryItems <IMicrosoftGraphActivityHistoryItem1[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [Id <String>]: Read-only.
    [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    [Activity <IMicrosoftGraphUserActivity1>]: userActivity
    [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
    [ExpirationDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem will undergo hard-delete. Can be set by the client.
    [LastActiveDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
    [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
    [StartedDateTime <DateTime?>]: Required. UTC DateTime when the historyItem (activity session) was started. Required for timeline history.
    [Status <String>]: status
    [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.
  [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
  [Status <String>]: status
  [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
  [VisualElements <IMicrosoftGraphVisualInfo>]: visualInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attribution <IMicrosoftGraphImageInfo>]: imageInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AddImageQuery <Boolean?>]: Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
      [AlternateText <String>]: Optional; alt-text accessible content for the image
      [AlternativeText <String>]: 
      [IconUrl <String>]: Optional; URI that points to an icon which represents the application used to generate the activity
    [BackgroundColor <String>]: Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
    [Content <IMicrosoftGraphJson>]: Json
    [Description <String>]: Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
    [DisplayText <String>]: Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)

HISTORYITEMS <IMicrosoftGraphActivityHistoryItem1[]>: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
  [Id <String>]: Read-only.
  [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
  [Activity <IMicrosoftGraphUserActivity1>]: userActivity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [ActivationUrl <String>]: Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
    [ActivitySourceHost <String>]: Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
    [AppActivityId <String>]: Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
    [AppDisplayName <String>]: Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
    [ContentInfo <IMicrosoftGraphJson>]: Json
      [(Any) <Object>]: This indicates any property can be added to this object.
    [ContentUrl <String>]: Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
    [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
    [ExpirationDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object expired on the server.
    [FallbackUrl <String>]: Optional. URL used to launch the activity in a web-based app, if available.
    [HistoryItems <IMicrosoftGraphActivityHistoryItem1[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
    [Status <String>]: status
    [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
    [VisualElements <IMicrosoftGraphVisualInfo>]: visualInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Attribution <IMicrosoftGraphImageInfo>]: imageInfo
        [(Any) <Object>]: This indicates any property can be added to this object.
        [AddImageQuery <Boolean?>]: Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
        [AlternateText <String>]: Optional; alt-text accessible content for the image
        [AlternativeText <String>]: 
        [IconUrl <String>]: Optional; URI that points to an icon which represents the application used to generate the activity
      [BackgroundColor <String>]: Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
      [Content <IMicrosoftGraphJson>]: Json
      [Description <String>]: Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
      [DisplayText <String>]: Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)
  [CreatedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was created on the server.
  [ExpirationDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem will undergo hard-delete. Can be set by the client.
  [LastActiveDateTime <DateTime?>]: Optional. UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
  [LastModifiedDateTime <DateTime?>]: Set by the server. DateTime in UTC when the object was modified on the server.
  [StartedDateTime <DateTime?>]: Required. UTC DateTime when the historyItem (activity session) was started. Required for timeline history.
  [Status <String>]: status
  [UserTimezone <String>]: Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user

VISUALELEMENTS <IMicrosoftGraphVisualInfo>: visualInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Attribution <IMicrosoftGraphImageInfo>]: imageInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AddImageQuery <Boolean?>]: Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
    [AlternateText <String>]: Optional; alt-text accessible content for the image
    [AlternativeText <String>]: 
    [IconUrl <String>]: Optional; URI that points to an icon which represents the application used to generate the activity
  [BackgroundColor <String>]: Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
  [Content <IMicrosoftGraphJson>]: Json
    [(Any) <Object>]: This indicates any property can be added to this object.
  [Description <String>]: Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
  [DisplayText <String>]: Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/update-mguseractivity
#>
function Update-MgUserActivity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1]
    # userActivity
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # URL used to launch the activity in the best native experience represented by the appId.
    # Might launch a web-based app if no native app exists.
    ${ActivationUrl},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # URL for the domain representing the cross-platform identity mapping for the app.
    # Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center.
    # The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain.
    # For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath.
    # You must have a unique file and domain (or sub domain) per cross-platform app identity.
    # For example, a separate file and domain is needed for Word vs.
    # PowerPoint.
    ${ActivitySourceHost},

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
    # Required.
    # The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
    ${AppActivityId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
    ${AppDisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphJson]))]
    [System.Collections.Hashtable]
    # Json
    ${ContentInfo},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
    ${ContentUrl},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Set by the server.
    # DateTime in UTC when the object was created on the server.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Set by the server.
    # DateTime in UTC when the object expired on the server.
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # URL used to launch the activity in a web-based app, if available.
    ${FallbackUrl},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem1[]]
    # Optional.
    # NavigationProperty/Containment; navigation property to the activity's historyItems.
    # To construct, see NOTES section for HISTORYITEMS properties and create a hash table.
    ${HistoryItems},

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
    # Set by the server.
    # DateTime in UTC when the object was modified on the server.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # status
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
    ${UserTimezone},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVisualInfo]
    # visualInfo
    # To construct, see NOTES section for VISUALELEMENTS properties and create a hash table.
    ${VisualElements},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivity_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivity_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivity_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivity_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property devices in users
.Description
Update the navigation property devices in users

.Inputs
Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDevice
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ALTERNATIVESECURITYIDS <IMicrosoftGraphAlternativeSecurityId[]>: For internal use only. Not nullable. Supports $filter (eq, NOT, ge, le).
  [IdentityProvider <String>]: For internal use only
  [Key <Byte[]>]: For internal use only
  [Type <Int32?>]: For internal use only

BODYPARAMETER <IMicrosoftGraphDevice>: device
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DeletedDateTime <DateTime?>]: 
  [Id <String>]: Read-only.
  [AccountEnabled <Boolean?>]: true if the account is enabled; otherwise, false. Required. Default is true.  Supports $filter (eq, ne, NOT, in). Only callers in Global Administrator and Cloud Device Administrator roles can set this property.
  [AlternativeSecurityIds <IMicrosoftGraphAlternativeSecurityId[]>]: For internal use only. Not nullable. Supports $filter (eq, NOT, ge, le).
    [IdentityProvider <String>]: For internal use only
    [Key <Byte[]>]: For internal use only
    [Type <Int32?>]: For internal use only
  [ApproximateLastSignInDateTime <DateTime?>]: The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Supports $filter (eq, ne, NOT, ge, le) and $orderBy.
  [Commands <IMicrosoftGraphCommand[]>]: Set of commands sent to this device.
    [Id <String>]: Read-only.
    [AppServiceName <String>]: 
    [Error <String>]: 
    [PackageFamilyName <String>]: 
    [Payload <IMicrosoftGraphPayloadRequest>]: payloadRequest
      [(Any) <Object>]: This indicates any property can be added to this object.
    [PermissionTicket <String>]: 
    [PostBackUri <String>]: 
    [Responsepayload <IMicrosoftGraphPayloadResponse>]: payloadResponse
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Id <String>]: Read-only.
    [Status <String>]: 
    [Type <String>]: 
  [ComplianceExpirationDateTime <DateTime?>]: The timestamp when the device is no longer deemed compliant. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
  [DeviceCategory <String>]: User-defined property set by Intune to automatically add devices to groups and simplify managing devices.
  [DeviceId <String>]: Unique identifier set by Azure Device Registration Service at the time of registration. Supports $filter (eq, ne, NOT, startsWith).
  [DeviceMetadata <String>]: For internal use only. Set to null.
  [DeviceOwnership <String>]: Ownership of the device. This property is set by Intune. Possible values are: unknown, company, personal.
  [DeviceVersion <Int32?>]: For internal use only.
  [DisplayName <String>]: The display name for the device. Required. Supports $filter (eq, ne, NOT, ge, le, in, startsWith), $search, and $orderBy.
  [DomainName <String>]: The on-premises domain name of Hybrid Azure AD joined devices. This property is set by Intune.
  [EnrollmentProfileName <String>]: Enrollment profile applied to the device. For example, Apple Device Enrollment Profile, Device enrollment - Corporate device identifiers, or Windows Autopilot profile name. This property is set by Intune.
  [EnrollmentType <String>]: Enrollment type of the device. This property is set by Intune. Possible values are: unknown, userEnrollment, deviceEnrollmentManager, appleBulkWithUser, appleBulkWithoutUser, windowsAzureADJoin, windowsBulkUserless, windowsAutoEnrollment, windowsBulkAzureDomainJoin, windowsCoManagement.
  [ExtensionAttributes <IMicrosoftGraphOnPremisesExtensionAttributes>]: onPremisesExtensionAttributes
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ExtensionAttribute1 <String>]: First customizable extension attribute.
    [ExtensionAttribute10 <String>]: Tenth customizable extension attribute.
    [ExtensionAttribute11 <String>]: Eleventh customizable extension attribute.
    [ExtensionAttribute12 <String>]: Twelfth customizable extension attribute.
    [ExtensionAttribute13 <String>]: Thirteenth customizable extension attribute.
    [ExtensionAttribute14 <String>]: Fourteenth customizable extension attribute.
    [ExtensionAttribute15 <String>]: Fifteenth customizable extension attribute.
    [ExtensionAttribute2 <String>]: Second customizable extension attribute.
    [ExtensionAttribute3 <String>]: Third customizable extension attribute.
    [ExtensionAttribute4 <String>]: Fourth customizable extension attribute.
    [ExtensionAttribute5 <String>]: Fifth customizable extension attribute.
    [ExtensionAttribute6 <String>]: Sixth customizable extension attribute.
    [ExtensionAttribute7 <String>]: Seventh customizable extension attribute.
    [ExtensionAttribute8 <String>]: Eighth customizable extension attribute.
    [ExtensionAttribute9 <String>]: Ninth customizable extension attribute.
  [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the device. Read-only. Nullable.
    [Id <String>]: Read-only.
  [Hostnames <String[]>]: List of hostNames for the device.
  [IsCompliant <Boolean?>]: true if the device complies with Mobile Device Management (MDM) policies; otherwise, false. Read-only. This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices. Supports $filter (eq, ne, NOT).
  [IsManaged <Boolean?>]: true if the device is managed by a Mobile Device Management (MDM) app; otherwise, false. This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices. Supports $filter (eq, ne, NOT).
  [IsRooted <Boolean?>]: true if device is rooted; false if device is jail-broken. This can only be updated by Intune.
  [Kind <String>]: Form factor of device. Only returned if user signs in with a Microsoft account as part of Project Rome.
  [ManagementType <String>]: Management channel of the device.  This property is set by Intune. Possible values are: eas, mdm, easMdm, intuneClient, easIntuneClient, configurationManagerClient, configurationManagerClientMdm, configurationManagerClientMdmEas, unknown, jamf, googleCloudDevicePolicyController.
  [Manufacturer <String>]: Manufacturer of the device. Read-only.
  [MemberOf <IMicrosoftGraphDirectoryObject[]>]: Groups that this device is a member of. Read-only. Nullable. Supports $expand.
    [Id <String>]: Read-only.
    [DeletedDateTime <DateTime?>]: 
  [Model <String>]: Model of the device. Read-only.
  [Name <String>]: Friendly name of a device. Only returned if user signs in with a Microsoft account as part of Project Rome.
  [OnPremisesLastSyncDateTime <DateTime?>]: The last time at which the object was synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z Read-only. Supports $filter (eq, ne, NOT, ge, le, in).
  [OnPremisesSyncEnabled <Boolean?>]: true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Read-only. Supports $filter (eq, ne, NOT, in).
  [OperatingSystem <String>]: The type of operating system on the device. Required. Supports $filter (eq, ne, NOT, ge, le, startsWith).
  [OperatingSystemVersion <String>]: The version of the operating system on the device. Required. Supports $filter (eq, ne, NOT, ge, le, startsWith).
  [PhysicalIds <String[]>]: For internal use only. Not nullable. Supports $filter (eq, NOT, ge, le, startsWith).
  [Platform <String>]: Platform of device. Only returned if user signs in with a Microsoft account as part of Project Rome. Only returned if user signs in with a Microsoft account as part of Project Rome.
  [ProfileType <String>]: The profile type of the device. Possible values: RegisteredDevice (default), SecureVM, Printer, Shared, IoT.
  [RegisteredOwners <IMicrosoftGraphDirectoryObject[]>]: The user that cloud joined the device or registered their personal device. The registered owner is set at the time of registration. Currently, there can be only one owner. Read-only. Nullable. Supports $expand.
  [RegisteredUsers <IMicrosoftGraphDirectoryObject[]>]: Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports $expand.
  [RegistrationDateTime <DateTime?>]: Date and time of when the device was registered. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
  [Status <String>]: Device is online or offline. Only returned if user signs in with a Microsoft account as part of Project Rome.
  [SystemLabels <String[]>]: List of labels applied to the device by the system.
  [TransitiveMemberOf <IMicrosoftGraphDirectoryObject[]>]: Groups that the device is a member of. This operation is transitive. Supports $expand.
  [TrustType <String>]: Type of trust for the joined device. Read-only. Possible values:  Workplace (indicates bring your own personal devices), AzureAd (Cloud only joined devices), ServerAd (on-premises domain joined devices joined to Azure AD). For more details, see Introduction to device management in Azure Active Directory
  [UsageRights <IMicrosoftGraphUsageRight[]>]: Represents the usage rights a device has been granted.
    [Id <String>]: Read-only.
    [CatalogId <String>]: Product id corresponding to the usage right.
    [ServiceIdentifier <String>]: Identifier of the service corresponding to the usage right.
    [State <String>]: usageRightState

COMMANDS <IMicrosoftGraphCommand[]>: Set of commands sent to this device.
  [Id <String>]: Read-only.
  [AppServiceName <String>]: 
  [Error <String>]: 
  [PackageFamilyName <String>]: 
  [Payload <IMicrosoftGraphPayloadRequest>]: payloadRequest
    [(Any) <Object>]: This indicates any property can be added to this object.
  [PermissionTicket <String>]: 
  [PostBackUri <String>]: 
  [Responsepayload <IMicrosoftGraphPayloadResponse>]: payloadResponse
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
  [Status <String>]: 
  [Type <String>]: 

EXTENSIONATTRIBUTES <IMicrosoftGraphOnPremisesExtensionAttributes>: onPremisesExtensionAttributes
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ExtensionAttribute1 <String>]: First customizable extension attribute.
  [ExtensionAttribute10 <String>]: Tenth customizable extension attribute.
  [ExtensionAttribute11 <String>]: Eleventh customizable extension attribute.
  [ExtensionAttribute12 <String>]: Twelfth customizable extension attribute.
  [ExtensionAttribute13 <String>]: Thirteenth customizable extension attribute.
  [ExtensionAttribute14 <String>]: Fourteenth customizable extension attribute.
  [ExtensionAttribute15 <String>]: Fifteenth customizable extension attribute.
  [ExtensionAttribute2 <String>]: Second customizable extension attribute.
  [ExtensionAttribute3 <String>]: Third customizable extension attribute.
  [ExtensionAttribute4 <String>]: Fourth customizable extension attribute.
  [ExtensionAttribute5 <String>]: Fifth customizable extension attribute.
  [ExtensionAttribute6 <String>]: Sixth customizable extension attribute.
  [ExtensionAttribute7 <String>]: Seventh customizable extension attribute.
  [ExtensionAttribute8 <String>]: Eighth customizable extension attribute.
  [ExtensionAttribute9 <String>]: Ninth customizable extension attribute.

EXTENSIONS <IMicrosoftGraphExtension[]>: The collection of open extensions defined for the device. Read-only. Nullable.
  [Id <String>]: Read-only.

INPUTOBJECT <ICrossDeviceExperiencesIdentity>: Identity Parameter
  [ActivityHistoryItemId <String>]: key: id of activityHistoryItem
  [DeviceId <String>]: key: id of device
  [UserActivityId <String>]: key: id of userActivity
  [UserId <String>]: key: id of user

MEMBEROF <IMicrosoftGraphDirectoryObject[]>: Groups that this device is a member of. Read-only. Nullable. Supports $expand.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

REGISTEREDOWNERS <IMicrosoftGraphDirectoryObject[]>: The user that cloud joined the device or registered their personal device. The registered owner is set at the time of registration. Currently, there can be only one owner. Read-only. Nullable. Supports $expand.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

REGISTEREDUSERS <IMicrosoftGraphDirectoryObject[]>: Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports $expand.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

TRANSITIVEMEMBEROF <IMicrosoftGraphDirectoryObject[]>: Groups that the device is a member of. This operation is transitive. Supports $expand.
  [Id <String>]: Read-only.
  [DeletedDateTime <DateTime?>]: 

USAGERIGHTS <IMicrosoftGraphUsageRight[]>: Represents the usage rights a device has been granted.
  [Id <String>]: Read-only.
  [CatalogId <String>]: Product id corresponding to the usage right.
  [ServiceIdentifier <String>]: Identifier of the service corresponding to the usage right.
  [State <String>]: usageRightState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.crossdeviceexperiences/update-mguserdevice
#>
function Update-MgUserDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of device
    ${DeviceId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDevice]
    # device
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the account is enabled; otherwise, false.
    # Required.
    # Default is true.
    # Supports $filter (eq, ne, NOT, in).
    # Only callers in Global Administrator and Cloud Device Administrator roles can set this property.
    ${AccountEnabled},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlternativeSecurityId[]]
    # For internal use only.
    # Not nullable.
    # Supports $filter (eq, NOT, ge, le).
    # To construct, see NOTES section for ALTERNATIVESECURITYIDS properties and create a hash table.
    ${AlternativeSecurityIds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Read-only.
    # Supports $filter (eq, ne, NOT, ge, le) and $orderBy.
    ${ApproximateLastSignInDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommand[]]
    # Set of commands sent to this device.
    # To construct, see NOTES section for COMMANDS properties and create a hash table.
    ${Commands},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The timestamp when the device is no longer deemed compliant.
    # The timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Read-only.
    ${ComplianceExpirationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${DeletedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # User-defined property set by Intune to automatically add devices to groups and simplify managing devices.
    ${DeviceCategory},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Unique identifier set by Azure Device Registration Service at the time of registration.
    # Supports $filter (eq, ne, NOT, startsWith).
    ${DeviceId1},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # For internal use only.
    # Set to null.
    ${DeviceMetadata},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Ownership of the device.
    # This property is set by Intune.
    # Possible values are: unknown, company, personal.
    ${DeviceOwnership},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # For internal use only.
    ${DeviceVersion},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name for the device.
    # Required.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith), $search, and $orderBy.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The on-premises domain name of Hybrid Azure AD joined devices.
    # This property is set by Intune.
    ${DomainName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Enrollment profile applied to the device.
    # For example, Apple Device Enrollment Profile, Device enrollment - Corporate device identifiers, or Windows Autopilot profile name.
    # This property is set by Intune.
    ${EnrollmentProfileName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Enrollment type of the device.
    # This property is set by Intune.
    # Possible values are: unknown, userEnrollment, deviceEnrollmentManager, appleBulkWithUser, appleBulkWithoutUser, windowsAzureADJoin, windowsBulkUserless, windowsAutoEnrollment, windowsBulkAzureDomainJoin, windowsCoManagement.
    ${EnrollmentType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnPremisesExtensionAttributes]
    # onPremisesExtensionAttributes
    # To construct, see NOTES section for EXTENSIONATTRIBUTES properties and create a hash table.
    ${ExtensionAttributes},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension[]]
    # The collection of open extensions defined for the device.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for EXTENSIONS properties and create a hash table.
    ${Extensions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of hostNames for the device.
    ${Hostnames},

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
    # true if the device complies with Mobile Device Management (MDM) policies; otherwise, false.
    # Read-only.
    # This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices.
    # Supports $filter (eq, ne, NOT).
    ${IsCompliant},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the device is managed by a Mobile Device Management (MDM) app; otherwise, false.
    # This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices.
    # Supports $filter (eq, ne, NOT).
    ${IsManaged},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if device is rooted; false if device is jail-broken.
    # This can only be updated by Intune.
    ${IsRooted},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Form factor of device.
    # Only returned if user signs in with a Microsoft account as part of Project Rome.
    ${Kind},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Management channel of the device.
    # This property is set by Intune.
    # Possible values are: eas, mdm, easMdm, intuneClient, easIntuneClient, configurationManagerClient, configurationManagerClientMdm, configurationManagerClientMdmEas, unknown, jamf, googleCloudDevicePolicyController.
    ${ManagementType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Manufacturer of the device.
    # Read-only.
    ${Manufacturer},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject[]]
    # Groups that this device is a member of.
    # Read-only.
    # Nullable.
    # Supports $expand.
    # To construct, see NOTES section for MEMBEROF properties and create a hash table.
    ${MemberOf},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Model of the device.
    # Read-only.
    ${Model},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Friendly name of a device.
    # Only returned if user signs in with a Microsoft account as part of Project Rome.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The last time at which the object was synced with the on-premises directory.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z Read-only.
    # Supports $filter (eq, ne, NOT, ge, le, in).
    ${OnPremisesLastSyncDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default).
    # Read-only.
    # Supports $filter (eq, ne, NOT, in).
    ${OnPremisesSyncEnabled},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The type of operating system on the device.
    # Required.
    # Supports $filter (eq, ne, NOT, ge, le, startsWith).
    ${OperatingSystem},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The version of the operating system on the device.
    # Required.
    # Supports $filter (eq, ne, NOT, ge, le, startsWith).
    ${OperatingSystemVersion},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # For internal use only.
    # Not nullable.
    # Supports $filter (eq, NOT, ge, le, startsWith).
    ${PhysicalIds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Platform of device.
    # Only returned if user signs in with a Microsoft account as part of Project Rome.
    # Only returned if user signs in with a Microsoft account as part of Project Rome.
    ${Platform},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The profile type of the device.
    # Possible values: RegisteredDevice (default), SecureVM, Printer, Shared, IoT.
    ${ProfileType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject[]]
    # The user that cloud joined the device or registered their personal device.
    # The registered owner is set at the time of registration.
    # Currently, there can be only one owner.
    # Read-only.
    # Nullable.
    # Supports $expand.
    # To construct, see NOTES section for REGISTEREDOWNERS properties and create a hash table.
    ${RegisteredOwners},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject[]]
    # Collection of registered users of the device.
    # For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration.
    # Read-only.
    # Nullable.
    # Supports $expand.
    # To construct, see NOTES section for REGISTEREDUSERS properties and create a hash table.
    ${RegisteredUsers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time of when the device was registered.
    # The timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Read-only.
    ${RegistrationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Device is online or offline.
    # Only returned if user signs in with a Microsoft account as part of Project Rome.
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of labels applied to the device by the system.
    ${SystemLabels},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject[]]
    # Groups that the device is a member of.
    # This operation is transitive.
    # Supports $expand.
    # To construct, see NOTES section for TRANSITIVEMEMBEROF properties and create a hash table.
    ${TransitiveMemberOf},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Type of trust for the joined device.
    # Read-only.
    # Possible values: Workplace (indicates bring your own personal devices), AzureAd (Cloud only joined devices), ServerAd (on-premises domain joined devices joined to Azure AD).
    # For more details, see Introduction to device management in Azure Active Directory
    ${TrustType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUsageRight[]]
    # Represents the usage rights a device has been granted.
    # To construct, see NOTES section for USAGERIGHTS properties and create a hash table.
    ${UsageRights},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserDevice_Update';
            UpdateExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserDevice_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserDevice_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserDevice_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAPTjkSqbCXBapF
# PUFwyEkn05dKPwrSTzRjHakkr5o3uqCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgsMlqFoMW
# EXm8X+3XuzYm8UkNChf0awbn76dNMX/5IW4wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBtxSM4jabB/bRKI9eNTUwf5OaGqqQmKg80HRBqx2qu
# 0TucDPQ1wfwmeWq+H4TmvAM3uVlhTm3gYSyUz5o7c88g7bX5zRHlGYX16pUzEIZg
# aiCdWgzawJcpE4vmSPS/dO2R1qMl7t6BOYdUktRdV0SnGh1pxDJl+j3e5rmq/k3F
# 3hYnHIo6d8ngvXnnUuysBTeDOmhTtB97LPTww2NU/jn/p6Vsk68IHwBJU+auU5HV
# zATsU9FsY9pIjgAXndLg+MuDHKKneVedN95rty2RUNOo8ytDZBAGRFuj9+4Cp7za
# kkYsqucU9o4X+WaiV5kshoSieeZkcRCTj4ALbgn5bpHWoYIS/jCCEvoGCisGAQQB
# gjcDAwExghLqMIIS5gYJKoZIhvcNAQcCoIIS1zCCEtMCAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIIEnKJqgiHolWKM2DBD0e4eocatDVSHHxtGBK6nF
# z9ADAgZhcIeMkWEYEzIwMjExMDI3MDcxMTI0LjMyNFowBIACAfSggdikgdUwgdIx
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
# AQQwLwYJKoZIhvcNAQkEMSIEIJVPLQe/14m2PfaUUlUxoZd/dcPFiXhU7W7BOXjR
# Y9DuMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgn6/QhAepLF/7Bdsvfu8G
# OT+ihL9c4cgo5Nf1aUN8tG0wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAATqNjTH3d0lJwgAAAAABOjAiBCCad1sT4fODZN4IPSh9v6at
# bbtTBV3axXkL6x81mXZBgDANBgkqhkiG9w0BAQsFAASCAQB28v5XprMCa4wOX1/R
# PZWU9RHF/XKz0hyxBwUrbO95jExwA38pwA7RV8MeRrjg/VL8vsSnW4DBgk3JSJZu
# ROZNMDuE2I5R5zzQWzj5G8lVf20gx3U2DXxp6WWs+3ouX3RZ++fZuWstaSxiBr48
# EYB+pEEiyXdDUDPmhh9BjlE7ST94Uq3MSU4GFfhkBUJBhfM4/Ma4Gp+RXlSQfBKC
# ejLLBqbmGXWmoeACElZ/dwFYd4fNrGdqqbenBcrWxOsBOLIEv1aHCQzY7rfhre8X
# YxqPpzxP0zzbIaO/RcOsuD0bo+s+40a8pIE0jBvF8ZFsxY03Xf9d3y85VAlc+Cid
# 1iJ+
# SIG # End signature block
