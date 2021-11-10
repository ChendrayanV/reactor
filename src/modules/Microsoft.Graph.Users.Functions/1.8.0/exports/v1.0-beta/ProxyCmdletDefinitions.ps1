
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function exportDeviceAndAppManagementData
.Description
Invoke function exportDeviceAndAppManagementData

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/export-mguserdeviceandappmanagementdata623c
#>
function Export-MgUserDeviceAndAppManagementData623C {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Export', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Export', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: skip={skip}
    ${Skip},

    [Parameter(ParameterSetName='Export', Mandatory)]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: top={top}
    ${Top},

    [Parameter(ParameterSetName='Export', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ExportViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Export = 'Microsoft.Graph.Users.Functions.private\Export-MgUserDeviceAndAppManagementData623C_Export';
            ExportViaIdentity = 'Microsoft.Graph.Users.Functions.private\Export-MgUserDeviceAndAppManagementData623C_ExportViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function exportDeviceAndAppManagementData
.Description
Invoke function exportDeviceAndAppManagementData

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/export-mguserdeviceandappmanagementdatad390
#>
function Export-MgUserDeviceAndAppManagementDataD390 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Export', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Export', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ExportViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Export = 'Microsoft.Graph.Users.Functions.private\Export-MgUserDeviceAndAppManagementDataD390_Export';
            ExportViaIdentity = 'Microsoft.Graph.Users.Functions.private\Export-MgUserDeviceAndAppManagementDataD390_ExportViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function findRooms
.Description
Invoke function findRooms

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/find-mguserroomac49
#>
function Find-MgUserRoomAc49 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress])]
[CmdletBinding(DefaultParameterSetName='Find', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Find', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: RoomList={RoomList}
    ${RoomList},

    [Parameter(ParameterSetName='Find', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FindViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Find = 'Microsoft.Graph.Users.Functions.private\Find-MgUserRoomAc49_Find';
            FindViaIdentity = 'Microsoft.Graph.Users.Functions.private\Find-MgUserRoomAc49_FindViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function findRooms
.Description
Invoke function findRooms

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/find-mguserroomd266
#>
function Find-MgUserRoomD266 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress])]
[CmdletBinding(DefaultParameterSetName='Find', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Find', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FindViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Find = 'Microsoft.Graph.Users.Functions.private\Find-MgUserRoomD266_Find';
            FindViaIdentity = 'Microsoft.Graph.Users.Functions.private\Find-MgUserRoomD266_FindViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function findRoomLists
.Description
Invoke function findRoomLists

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/find-mguserroomlist
#>
function Find-MgUserRoomList {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress])]
[CmdletBinding(DefaultParameterSetName='Find', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Find', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FindViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Find = 'Microsoft.Graph.Users.Functions.private\Find-MgUserRoomList_Find';
            FindViaIdentity = 'Microsoft.Graph.Users.Functions.private\Find-MgUserRoomList_FindViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercalendareventdelta
#>
function Get-MgUserCalendarEventDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Parameter(ParameterSetName='Delta3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Delta3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of calendar
    ${CalendarId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeltaViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_Delta';
            Delta3 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_Delta3';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_DeltaViaIdentity';
            DeltaViaIdentity3 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_DeltaViaIdentity3';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercontactdelta
#>
function Get-MgUserContactDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact1])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercontactfolderchildfolderdelta
#>
function Get-MgUserContactFolderChildFolderDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contactFolder
    ${ContactFolderId},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderChildFolderDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderChildFolderDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercontactfoldercontactdelta
#>
function Get-MgUserContactFolderContactDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact1])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contactFolder
    ${ContactFolderId},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderContactDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderContactDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercontactfolderdelta
#>
function Get-MgUserContactFolderDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUser1
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdelta
#>
function Get-MgUserDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUser1])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDelta_Delta1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getEffectiveDeviceEnrollmentConfigurations
.Description
Invoke function getEffectiveDeviceEnrollmentConfigurations

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusereffectivedeviceenrollmentconfiguration
#>
function Get-MgUserEffectiveDeviceEnrollmentConfiguration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEffectiveDeviceEnrollmentConfiguration_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEffectiveDeviceEnrollmentConfiguration_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusereventdelta
#>
function Get-MgUserEventDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusereventinstancedelta
#>
function Get-MgUserEventInstanceDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventInstanceDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventInstanceDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getLoggedOnManagedDevices
.Description
Invoke function getLoggedOnManagedDevices

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedDevice
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserloggedonmanageddevice
#>
function Get-MgUserLoggedOnManagedDevice {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedDevice])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserLoggedOnManagedDevice_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserLoggedOnManagedDevice_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermailfolderchildfolderdelta
#>
function Get-MgUserMailFolderChildFolderDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderChildFolderDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderChildFolderDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermailfolderdelta
#>
function Get-MgUserMailFolderDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermailfoldermessagedelta
#>
function Get-MgUserMailFolderMessageDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderMessageDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderMessageDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getManagedAppBlockedUsers
.Description
Invoke function getManagedAppBlockedUsers

.Outputs
System.String
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermanagedappblockeduser
#>
function Get-MgUserManagedAppBlockedUser {
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppBlockedUser_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Gets diagnostics validation status for a given user.
.Description
Gets diagnostics validation status for a given user.

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedAppDiagnosticStatus
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermanagedappdiagnosticstatuses
#>
function Get-MgUserManagedAppDiagnosticStatuses {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedAppDiagnosticStatus])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppDiagnosticStatuses_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppDiagnosticStatuses_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Gets app restrictions for a given user.
.Description
Gets app restrictions for a given user.

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedAppPolicy1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermanagedapppolicy
#>
function Get-MgUserManagedAppPolicy {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedAppPolicy1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppPolicy_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppPolicy_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getUserIdsWithFlaggedAppRegistration
.Description
Invoke function getUserIdsWithFlaggedAppRegistration

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermanagedappregistrationuserid
#>
function Get-MgUserManagedAppRegistrationUserId {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppRegistrationUserId_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppRegistrationUserId_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermanageddevicecloudpcremoteactionresult
#>
function Get-MgUserManagedDeviceCloudPcRemoteActionResult {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudPcRemoteActionResult])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedDeviceCloudPcRemoteActionResult_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedDeviceCloudPcRemoteActionResult_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermanageddevicefilevaultkey
#>
function Get-MgUserManagedDeviceFileVaultKey {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedDeviceFileVaultKey_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedDeviceFileVaultKey_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermanageddevicenoncompliantsetting
#>
function Get-MgUserManagedDeviceNonCompliantSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceCompliancePolicySettingState1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedDeviceNonCompliantSetting_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedDeviceNonCompliantSetting_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Retrieves the list of devices with failed apps
.Description
Retrieves the list of devices with failed apps

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedDeviceSummarizedAppState
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermanageddevicewithappfailure
#>
function Get-MgUserManagedDeviceWithAppFailure {
[OutputType([System.String], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedDeviceSummarizedAppState])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedDeviceWithAppFailure_Get';
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedDeviceWithAppFailure_Get1';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedDeviceWithAppFailure_GetViaIdentity';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedDeviceWithAppFailure_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermessagedelta
#>
function Get-MgUserMessageDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMessageDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMessageDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getRecentNotebooks
.Description
Invoke function getRecentNotebooks

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecentNotebook
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguseronenoterecentnotebook
#>
function Get-MgUserOnenoteRecentNotebook {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecentNotebook])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Management.Automation.SwitchParameter]
    # Usage: includePersonalNotebooks={includePersonalNotebooks}
    ${IncludePersonalNotebooks},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserOnenoteRecentNotebook_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserOnenoteRecentNotebook_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerDelta
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserplanneralldelta
#>
function Get-MgUserPlannerAllDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlannerDelta])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserPlannerAllDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserPlannerAllDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTodoTaskList
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusertodolistdelta
#>
function Get-MgUserTodoListDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTodoTaskList])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTodoTask
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusertodolisttaskdelta
#>
function Get-MgUserTodoListTaskDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTodoTask])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of todoTaskList
    ${TodoTaskListId},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListTaskDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListTaskDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function allowedCalendarSharingRoles
.Description
Invoke function allowedCalendarSharingRoles

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcalendarusercalendarallowedcalendarsharingroles
#>
function Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Calendar', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Calendar', Mandatory)]
    [Parameter(ParameterSetName='Calendar3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: User={User}
    ${User},

    [Parameter(ParameterSetName='Calendar', Mandatory)]
    [Parameter(ParameterSetName='Calendar3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Calendar3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of calendar
    ${CalendarId},

    [Parameter(ParameterSetName='CalendarViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CalendarViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Calendar = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_Calendar';
            Calendar3 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_Calendar3';
            CalendarViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_CalendarViaIdentity';
            CalendarViaIdentity3 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_CalendarViaIdentity3';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function allowedCalendarSharingRoles
.Description
Invoke function allowedCalendarSharingRoles

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcalendarusereventcalendarallowedcalendarsharingroles
#>
function Invoke-MgCalendarUserEventCalendarAllowedCalendarSharingRoles {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Calendar', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Calendar', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Calendar', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: User={User}
    ${User},

    [Parameter(ParameterSetName='Calendar', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CalendarViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Calendar = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserEventCalendarAllowedCalendarSharingRoles_Calendar';
            CalendarViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserEventCalendarAllowedCalendarSharingRoles_CalendarViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConsentRequest
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgfilteruserappconsentrequestforapprovaluserconsentrequest
#>
function Invoke-MgFilterUserAppConsentRequestForApprovalUserConsentRequest {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConsentRequest])]
[CmdletBinding(DefaultParameterSetName='Filter', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of appConsentRequest
    ${AppConsentRequestId},

    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: on={on}
    ${On},

    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FilterViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Filter = 'Microsoft.Graph.Users.Functions.private\Invoke-MgFilterUserAppConsentRequestForApprovalUserConsentRequest_Filter';
            FilterViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgFilterUserAppConsentRequestForApprovalUserConsentRequest_FilterViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAppConsentRequest
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgfilteruserappconsentrequestforapproval
#>
function Invoke-MgFilterUserAppConsentRequestForApproval {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAppConsentRequest])]
[CmdletBinding(DefaultParameterSetName='Filter', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: on={on}
    ${On},

    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FilterViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Filter = 'Microsoft.Graph.Users.Functions.private\Invoke-MgFilterUserAppConsentRequestForApproval_Filter';
            FilterViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgFilterUserAppConsentRequestForApproval_FilterViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApproval
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgfilteruserapproval
#>
function Invoke-MgFilterUserApproval {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApproval])]
[CmdletBinding(DefaultParameterSetName='Filter', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: on={on}
    ${On},

    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FilterViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Filter = 'Microsoft.Graph.Users.Functions.private\Invoke-MgFilterUserApproval_Filter';
            FilterViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgFilterUserApproval_FilterViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAccessReviewInstanceDecisionItem
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgfilteruserpendingaccessreviewinstancedecision
#>
function Invoke-MgFilterUserPendingAccessReviewInstanceDecision {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAccessReviewInstanceDecisionItem])]
[CmdletBinding(DefaultParameterSetName='Filter', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of accessReviewInstance
    ${AccessReviewInstanceId},

    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: on={on}
    ${On},

    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FilterViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Filter = 'Microsoft.Graph.Users.Functions.private\Invoke-MgFilterUserPendingAccessReviewInstanceDecision_Filter';
            FilterViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgFilterUserPendingAccessReviewInstanceDecision_FilterViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAccessReviewInstance
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgfilteruserpendingaccessreviewinstance
#>
function Invoke-MgFilterUserPendingAccessReviewInstance {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAccessReviewInstance])]
[CmdletBinding(DefaultParameterSetName='Filter', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: on={on}
    ${On},

    [Parameter(ParameterSetName='Filter', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FilterViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Filter = 'Microsoft.Graph.Users.Functions.private\Invoke-MgFilterUserPendingAccessReviewInstance_Filter';
            FilterViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgFilterUserPendingAccessReviewInstance_FilterViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Retrieves the list of devices with failed or pending apps
.Description
Retrieves the list of devices with failed or pending apps

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedDeviceSummarizedAppState
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgpendinguserapp
#>
function Invoke-MgPendingUserApp {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedDeviceSummarizedAppState])]
[CmdletBinding(DefaultParameterSetName='Pending', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Pending', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='PendingViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Pending = 'Microsoft.Graph.Users.Functions.private\Invoke-MgPendingUserApp_Pending';
            PendingViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgPendingUserApp_PendingViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function preview
.Description
Invoke function preview

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenotePagePreview
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgpreviewuseronenotepage
#>
function Invoke-MgPreviewUserOnenotePage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenotePagePreview])]
[CmdletBinding(DefaultParameterSetName='Preview1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Preview1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onenotePage
    ${OnenotePageId},

    [Parameter(ParameterSetName='Preview1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='PreviewViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Preview1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgPreviewUserOnenotePage_Preview1';
            PreviewViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgPreviewUserOnenotePage_PreviewViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function recent
.Description
Invoke function recent

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrecentuseractivity
#>
function Invoke-MgRecentUserActivity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity])]
[CmdletBinding(DefaultParameterSetName='Recent', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Recent', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RecentViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Recent = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRecentUserActivity_Recent';
            RecentViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRecentUserActivity_RecentViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function supportedLanguages
.Description
Invoke function supportedLanguages

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocaleInfo
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgsupporteduseroutlooklanguage
#>
function Invoke-MgSupportedUserOutlookLanguage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocaleInfo])]
[CmdletBinding(DefaultParameterSetName='Supported1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Supported1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SupportedViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Supported1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgSupportedUserOutlookLanguage_Supported1';
            SupportedViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgSupportedUserOutlookLanguage_SupportedViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function supportedTimeZones
.Description
Invoke function supportedTimeZones

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTimeZoneInformation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgtimeuseroutlook
#>
function Invoke-MgTimeUserOutlook {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTimeZoneInformation])]
[CmdletBinding(DefaultParameterSetName='Time2', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Time2', Mandatory)]
    [Parameter(ParameterSetName='Time3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Time3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: TimeZoneStandard={TimeZoneStandard}
    ${TimeZoneStandard},

    [Parameter(ParameterSetName='TimeViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TimeViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Time2 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_Time2';
            Time3 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_Time3';
            TimeViaIdentity2 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_TimeViaIdentity2';
            TimeViaIdentity3 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_TimeViaIdentity3';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function reminderView
.Description
Invoke function reminderView

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphReminder1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgviewuserreminder
#>
function Invoke-MgViewUserReminder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphReminder1])]
[CmdletBinding(DefaultParameterSetName='View1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='View1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: EndDateTime={EndDateTime}
    ${EndDateTime},

    [Parameter(ParameterSetName='View1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: StartDateTime={StartDateTime}
    ${StartDateTime},

    [Parameter(ParameterSetName='View1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ViewViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            View1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserReminder_View1';
            ViewViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserReminder_ViewViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Gets the blocked state of a managed app user.
.Description
Gets the blocked state of a managed app user.

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IUsersFunctionsIdentity>: Identity Parameter
  [AccessReviewInstanceId <String>]: key: id of accessReviewInstance
  [AnotherRange <String>]: Usage: anotherRange={anotherRange}
  [AppConsentRequestId <String>]: key: id of appConsentRequest
  [CalendarId <String>]: key: id of calendar
  [Column <Int32?>]: Usage: column={column}
  [ColumnOffset <Int32?>]: Usage: columnOffset={columnOffset}
  [ContactFolderId <String>]: key: id of contactFolder
  [Count <Int32?>]: Usage: count={count}
  [DeltaColumns <Int32?>]: Usage: deltaColumns={deltaColumns}
  [DeltaRows <Int32?>]: Usage: deltaRows={deltaRows}
  [EndDateTime <String>]: Usage: EndDateTime={EndDateTime}
  [EventId <String>]: key: id of event
  [IncludePersonalNotebooks <Boolean?>]: Usage: includePersonalNotebooks={includePersonalNotebooks}
  [MailFolderId <String>]: key: id of mailFolder
  [ManagedDeviceId <String>]: key: id of managedDevice
  [On <String>]: Usage: on={on}
  [OnenotePageId <String>]: key: id of onenotePage
  [RoomList <String>]: Usage: RoomList={RoomList}
  [Row <Int32?>]: Usage: row={row}
  [RowOffset <Int32?>]: Usage: rowOffset={rowOffset}
  [SharedInsightId <String>]: key: id of sharedInsight
  [Skip <Int32?>]: Usage: skip={skip}
  [StartDateTime <String>]: Usage: StartDateTime={StartDateTime}
  [TimeZoneStandard <String>]: Usage: TimeZoneStandard={TimeZoneStandard}
  [TodoTaskListId <String>]: key: id of todoTaskList
  [Top <Int32?>]: Usage: top={top}
  [TrendingId <String>]: key: id of trending
  [UsedInsightId <String>]: key: id of usedInsight
  [User <String>]: Usage: User={User}
  [UserId <String>]: key: id of user
  [ValuesOnly <Boolean?>]: Usage: valuesOnly={valuesOnly}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/test-mgusermanagedappuserblocked
#>
function Test-MgUserManagedAppUserBlocked {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Is', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Is', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='IsViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Is = 'Microsoft.Graph.Users.Functions.private\Test-MgUserManagedAppUserBlocked_Is';
            IsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Test-MgUserManagedAppUserBlocked_IsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCB+NIlOtecScYom
# 5wLkXwC3oFo3vcFGWICAbjPpbw/KbaCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQguZMlzqkX
# KFUETEFuqJ2e1puj5DuW93VwjVSJW7S9OEcwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQAPjZJIdpojcYU0gFxydixgiE1FMbf0nTQlIa+SYIIh
# V7id+K8ymcJRfUaX3cfh90wVCGW6vfQV22nFs9CUyC/497pVD9fYGmSeAXPvfrIz
# CGpXpxBMJEb028xuPr92fs9Nem02t8443KqsfzM1VeUV5XHcV22Y0gP9zLiEoWyv
# hHxZfQ0GO6p4V7EGqhZVS+yKOx4aXh6Ienmp+d76lqIeARDzBuiplHeaAiqNrQDh
# kuIWUoawniBpxXYycEWulXZoI8PXYVxbOSn/OWMcIWLyefjicY01ARAmoC1x+2i/
# zmE+a0kGUuACtPQ5RT/4qpd/71vRr6/hR15mQ7OUW78ooYIS8DCCEuwGCisGAQQB
# gjcDAwExghLcMIIS2AYJKoZIhvcNAQcCoIISyTCCEsUCAQMxDzANBglghkgBZQME
# AgEFADCCAVQGCyqGSIb3DQEJEAEEoIIBQwSCAT8wggE7AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIDm/kZtcWH/RHYv6mIy2v3Nx2hwdlk+TfJPlFT7O
# E8dKAgZhb3TWkxIYEjIwMjExMDI3MDcxMTI0LjQ1WjAEgAIB9KCB1KSB0TCBzjEL
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
# BDEiBCB1X/axgKr9Ok9tNQVvPVDomRiOJuWOsTIrAzoF5EegKjCB+gYLKoZIhvcN
# AQkQAi8xgeowgecwgeQwgb0EIPJKM41shjWXbMpPhtriwIjhaQELqwh9H25JU1XH
# cNMHMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAFY
# cFoi976W5gMAAAAAAVgwIgQgu4uFA86Ab+0g7kIK+Wy1mkyitrSqy1rjAYRxX99B
# C6UwDQYJKoZIhvcNAQELBQAEggEASKZAgojBBi4jqJXcFGPlDmnVbD/itWdNDw69
# r6+u97UnmBrp7OBROqmAUwp66XvLZClIrEIDpuH+wmM6XrqIwHIJdATQYBWmvaPy
# pqdpFEFkDJFTlNtEovO1JwU5nX7gQiBY0Df8VGnF7+9uqMoaLgZzYRrHLeomv2RD
# 2IxcCeEHjVTK/Vxn+IXK3uFZG2Hu+4Lch2U6eBBLa2uVeHlV18xe1s0clmWc1euS
# 5OXCeVNCa8k5+5KI9DHJ0w1M69xUmnQ3VBX/hgoOn/eDMkv0aeiAZJtIMJZ+P9zL
# I3fILglXM6cvz0/YA1uat2dgJSD+3AKaUljnVL2jHVEcHswCUg==
# SIG # End signature block
