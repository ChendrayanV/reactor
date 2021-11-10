
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Get1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItemActivityByRef_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItemActivityByRef_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Get1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItemActivity_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItemActivity_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
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
            Get = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItem_Get';
            GetViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItem_GetViaIdentity';
            List = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivityHistoryItem_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
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
            Get1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivity_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivity_GetViaIdentity1';
            List1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Get-MgUserActivity_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACTIVITY <IMicrosoftGraphUserActivity>: userActivity
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
  [HistoryItems <IMicrosoftGraphActivityHistoryItem[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [Id <String>]: Read-only.
    [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    [Activity <IMicrosoftGraphUserActivity>]: userActivity
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

BODYPARAMETER <IMicrosoftGraphActivityHistoryItem>: activityHistoryItem
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
  [Activity <IMicrosoftGraphUserActivity>]: userActivity
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
    [HistoryItems <IMicrosoftGraphActivityHistoryItem[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem]
    # activityHistoryItem
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Optional.
    # The duration of active user engagement.
    # if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    ${ActiveDurationSeconds},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity]
    # userActivity
    # To construct, see NOTES section for ACTIVITY properties and create a hash table.
    ${Activity},

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
    # Set by the server.
    # DateTime in UTC when the object was created on the server.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Optional.
    # UTC DateTime when the historyItem will undergo hard-delete.
    # Can be set by the client.
    ${ExpirationDateTime},

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
    # Optional.
    # UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
    ${LastActiveDateTime},

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
    [System.DateTime]
    # Required.
    # UTC DateTime when the historyItem (activity session) was started.
    # Required for timeline history.
    ${StartedDateTime},

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
            Create = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivityHistoryItem_Create';
            CreateExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivityHistoryItem_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivityHistoryItem_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivityHistoryItem_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphUserActivity>: userActivity
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
  [HistoryItems <IMicrosoftGraphActivityHistoryItem[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [Id <String>]: Read-only.
    [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    [Activity <IMicrosoftGraphUserActivity>]: userActivity
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

HISTORYITEMS <IMicrosoftGraphActivityHistoryItem[]>: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
  [Id <String>]: Read-only.
  [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
  [Activity <IMicrosoftGraphUserActivity>]: userActivity
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
    [HistoryItems <IMicrosoftGraphActivityHistoryItem[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity])]
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
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity]
    # userActivity
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # URL used to launch the activity in the best native experience represented by the appId.
    # Might launch a web-based app if no native app exists.
    ${ActivationUrl},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
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
    # Required.
    # The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
    ${AppActivityId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
    ${AppDisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphJson]))]
    [System.Collections.Hashtable]
    # Json
    ${ContentInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
    ${ContentUrl},

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
    # Set by the server.
    # DateTime in UTC when the object expired on the server.
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # URL used to launch the activity in a web-based app, if available.
    ${FallbackUrl},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem[]]
    # Optional.
    # NavigationProperty/Containment; navigation property to the activity's historyItems.
    # To construct, see NOTES section for HISTORYITEMS properties and create a hash table.
    ${HistoryItems},

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
    # Set by the server.
    # DateTime in UTC when the object was modified on the server.
    ${LastModifiedDateTime},

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
    # The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
    ${UserTimezone},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
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
            Create1 = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivity_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivity_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivity_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CrossDeviceExperiences.private\New-MgUserActivity_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delete1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivityHistoryItemActivityByRef_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivityHistoryItemActivityByRef_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delete = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivityHistoryItem_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivityHistoryItem_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Delete = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivity_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Remove-MgUserActivity_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='SetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICrossDeviceExperiencesIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IPaths1Rxcxy7UsersUserIdActivitiesUseractivityIdHistoryitemsActivityhistoryitemIdActivityRefPutRequestbodyContentApplicationJsonSchema]))]
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
            Set1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Set-MgUserActivityHistoryItemActivityByRef_Set1';
            SetExpanded1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Set-MgUserActivityHistoryItemActivityByRef_SetExpanded1';
            SetViaIdentity1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Set-MgUserActivityHistoryItemActivityByRef_SetViaIdentity1';
            SetViaIdentityExpanded1 = 'Microsoft.Graph.CrossDeviceExperiences.private\Set-MgUserActivityHistoryItemActivityByRef_SetViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACTIVITY <IMicrosoftGraphUserActivity>: userActivity
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
  [HistoryItems <IMicrosoftGraphActivityHistoryItem[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [Id <String>]: Read-only.
    [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    [Activity <IMicrosoftGraphUserActivity>]: userActivity
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

BODYPARAMETER <IMicrosoftGraphActivityHistoryItem>: activityHistoryItem
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
  [Activity <IMicrosoftGraphUserActivity>]: userActivity
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
    [HistoryItems <IMicrosoftGraphActivityHistoryItem[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of activityHistoryItem
    ${ActivityHistoryItemId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem]
    # activityHistoryItem
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Optional.
    # The duration of active user engagement.
    # if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    ${ActiveDurationSeconds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity]
    # userActivity
    # To construct, see NOTES section for ACTIVITY properties and create a hash table.
    ${Activity},

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
    # Set by the server.
    # DateTime in UTC when the object was created on the server.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Optional.
    # UTC DateTime when the historyItem will undergo hard-delete.
    # Can be set by the client.
    ${ExpirationDateTime},

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
    # Optional.
    # UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing.
    ${LastActiveDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Set by the server.
    # DateTime in UTC when the object was modified on the server.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Required.
    # UTC DateTime when the historyItem (activity session) was started.
    # Required for timeline history.
    ${StartedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # status
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
            Update = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivityHistoryItem_Update';
            UpdateExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivityHistoryItem_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivityHistoryItem_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivityHistoryItem_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphUserActivity>: userActivity
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
  [HistoryItems <IMicrosoftGraphActivityHistoryItem[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
    [Id <String>]: Read-only.
    [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
    [Activity <IMicrosoftGraphUserActivity>]: userActivity
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

HISTORYITEMS <IMicrosoftGraphActivityHistoryItem[]>: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
  [Id <String>]: Read-only.
  [ActiveDurationSeconds <Int32?>]: Optional. The duration of active user engagement. if not supplied, this is calculated from the startedDateTime and lastActiveDateTime.
  [Activity <IMicrosoftGraphUserActivity>]: userActivity
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
    [HistoryItems <IMicrosoftGraphActivityHistoryItem[]>]: Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userActivity
    ${UserActivityId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity]
    # userActivity
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # URL used to launch the activity in the best native experience represented by the appId.
    # Might launch a web-based app if no native app exists.
    ${ActivationUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
    # Required.
    # The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
    ${AppActivityId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
    ${AppDisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphJson]))]
    [System.Collections.Hashtable]
    # Json
    ${ContentInfo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
    ${ContentUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Set by the server.
    # DateTime in UTC when the object was created on the server.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Set by the server.
    # DateTime in UTC when the object expired on the server.
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # URL used to launch the activity in a web-based app, if available.
    ${FallbackUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActivityHistoryItem[]]
    # Optional.
    # NavigationProperty/Containment; navigation property to the activity's historyItems.
    # To construct, see NOTES section for HISTORYITEMS properties and create a hash table.
    ${HistoryItems},

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
    # Set by the server.
    # DateTime in UTC when the object was modified on the server.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # status
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
    ${UserTimezone},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
            Update = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivity_Update';
            UpdateExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivity_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivity_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CrossDeviceExperiences.private\Update-MgUserActivity_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBtgM8Ar1shiJwc
# OGZOOznhhkJEqX+NeQUhRi6ks2Rhi6CCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgU7jbLbHR
# W2PEhsv2pJbjg33WvkRpXaeWOuA0OhGyLhIwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQChUofFg1OnHaj+T03R9BOkWZYvB7aHbHT+0Yfb/yyf
# rYYlJ/pLf88QeIwpCkltHoDFijO07qXvzPYKQ+5FiX8cxzN+d1tO7dBtstT3ZVYN
# MgtssdbcWHZMeDtAgdbtElGpdgsR+JUz7Xo2/f8P9DZJmGDuQEMLxZyZXN3jvDJO
# v7VQKAFo9J5DepJt3gHcTkmt0vFVPXHd4/pcM5kLtPCQjwawvPnAuKHL8Z80jUvJ
# deLFroaJu8qpqn4ZWpmMwd4HQvf+0aZQ4eBywLbIYZlaIuRZ0ftZ5whut7kVBrxF
# hLOFxTKZYXMhOt+ea/1NmonGDss7I+/KvMedOCxyxUl7oYIS8TCCEu0GCisGAQQB
# gjcDAwExghLdMIIS2QYJKoZIhvcNAQcCoIISyjCCEsYCAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIDuA//DobyvLG/RNsgHoK6AXEy1AJStVJhGYyaRR
# m3ZeAgZhb3YcrEAYEzIwMjExMDI3MDcxMTI1LjAzOVowBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjo3ODgwLUUzOTAtODAxNDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCDkQwggT1MIID3aADAgECAhMzAAABXIbS4+w59os4AAAA
# AAFcMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMDExNDE5MDIxN1oXDTIyMDQxMTE5MDIxN1owgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo3ODgw
# LUUzOTAtODAxNDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANAqKz6vKh9iQLJoEvJc
# CUwd5fnatwQXmIZMlJ84v4nsMufnfJbG623f/U8OBu1syOXOZ7VzHOeC/+rIZrzc
# JQaQ8r5lCQjn9fiG3jk+pqPSFRl3w9YGFjouy/FxuSA6s/Mv7b0GS0baHTlJFgRu
# DKBgBsTagGR4SRmHnFdrShT3tk1T3WASLTGISeGGx4i0DyDuz8zQVmppL8+BUyiP
# ir0W/XZOsuA6FExj3gTvyTLfiDVhmNcwzPv5LQlrIVir0m2+7UDTY8inzHl/2ClH
# 4N42uqbWk9H2I4rpCCcUWSBw1m8De4hTsTGQET7qiR+FfI7PQlJQ+9ef7ANAflPS
# NhsCAwEAAaOCARswggEXMB0GA1UdDgQWBBRf8xSsOShygJAFf7iaey1jGMG6PjAf
# BgNVHSMEGDAWgBTVYzpcijGQ80N7fEYbxTNoWoVtVTBWBgNVHR8ETzBNMEugSaBH
# hkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNU
# aW1TdGFQQ0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUF
# BzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1RpbVN0
# YVBDQV8yMDEwLTA3LTAxLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsG
# AQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IBAQB4eUz2134gcw4cI/Uy2e2jkO7tepK7
# T5WXt76a/Az/pdNCN6B1D6QYRRHL90JmGlZMdUtwG/A6E9RqNqDv9aHQ8/2FLFcr
# rNOTgDQ0cjZ/9Mx8sto17k4rW22QvTYOQBB14ouNAsDloZ9aqc/Qtmi8JFHd6Mc7
# vE5oDgeVGm3y8er7UgLn4gkTIYn8leTPY9H2yuoLfXbQ8Xrl0WWFBbmZm6t3DEG+
# r6raImNJ7PrBQHnpdXxCjjF5WNPMYNeKEWA+RkyA5FD5YA0uKXtlNd5HgvwcWo/A
# CGyuPluxwYBcDCZQFFatov0uNjOsQxEMRgAzpA5vqEOOx/TUEYFkcRBJMIIGcTCC
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
# cGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo3
# ODgwLUUzOTAtODAxNDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vy
# dmljZaIjCgEBMAcGBSsOAwIaAxUAnuKlo8afKEeVnH5d6yP4nk5p8EyggYMwgYCk
# fjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIF
# AOUjLvQwIhgPMjAyMTEwMjcwNTUwNDRaGA8yMDIxMTAyODA1NTA0NFowdzA9Bgor
# BgEEAYRZCgQBMS8wLTAKAgUA5SMu9AIBADAKAgEAAgIlUQIB/zAHAgEAAgITATAK
# AgUA5SSAdAIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIB
# AAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBAFEPFuGeyOL3G/Cw
# PT6z7j9TLYRXYj1qAbf9QkAyAG3GWa14P9tCOHZfZSSCHZm2yVif6/ityurudnR9
# kQOFcU+5u5v9aq6osdBlCCJq34nVivi3x37SMnG9kmIj0i5sGpIrjzepOPGoVj26
# Y/qyJEZ1XJ9UnbP8vUAvkc23WxWEMYIDDTCCAwkCAQEwgZMwfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTACEzMAAAFchtLj7Dn2izgAAAAAAVwwDQYJYIZIAWUD
# BAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0B
# CQQxIgQgms9x+3b8BPi60BAOeY3cB18MoyVAiy7Qz1weNQgp/PkwgfoGCyqGSIb3
# DQEJEAIvMYHqMIHnMIHkMIG9BCBPLWRXwiBPbAAwScykICtQPfQuIIhGbxXvtFyP
# DBnmtTCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAB
# XIbS4+w59os4AAAAAAFcMCIEILo537oWPSUG1CQpg0rTrDORMrJZNQ8Zood5VBtX
# YpUkMA0GCSqGSIb3DQEBCwUABIIBADjpgxS3EZxsxKsyo9gRq+S6hnCAbvXeIJLS
# aaameEv9QHNjrzrUguHUBdyuBbqGj5N8ES0692M/ATi6PLJZz8JyP3URqJRAUywx
# ZSziDze8T5MeVFoc/uDblo2w31rl5yiKJoh4IuXpg7GGn2s4YwrEIVGIVZ5UlN65
# iA6SEOGFD+jTQzEedZQDTlmvazCVQ+l6SmtejZRLLvFOAs/asWxeNXZpicJekr5T
# V48nPHCc/xB9CuKGTkakJV68P3S/MjkSbPuuRC/auSrPQvrrDBoNuw72c8G9t6Zk
# zbB+1nbR4Uq6TXbBv9lqWfYmFg5vB3hbc8U61Xl8+YrcpI4Unkc=
# SIG # End signature block
