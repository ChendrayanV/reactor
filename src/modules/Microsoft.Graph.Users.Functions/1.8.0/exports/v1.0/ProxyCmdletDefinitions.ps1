
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Parameter(ParameterSetName='Delta2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Delta2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of calendar
    ${CalendarId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeltaViaIdentity2', Mandatory, ValueFromPipeline)]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_Delta1';
            Delta2 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_Delta2';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_DeltaViaIdentity1';
            DeltaViaIdentity2 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_DeltaViaIdentity2';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder1])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contactFolder
    ${ContactFolderId},

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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderChildFolderDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderChildFolderDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contactFolder
    ${ContactFolderId},

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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderContactDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderContactDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder1])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUser
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdelta
#>
function Get-MgUserDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUser])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDelta_Delta';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventInstanceDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventInstanceDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderChildFolderDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderChildFolderDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderMessageDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderMessageDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppDiagnosticStatuses_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppDiagnosticStatuses_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedAppPolicy
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedAppPolicy])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppPolicy_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppPolicy_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppRegistrationUserId_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppRegistrationUserId_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMessageDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMessageDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Management.Automation.SwitchParameter]
    # Usage: includePersonalNotebooks={includePersonalNotebooks}
    ${IncludePersonalNotebooks},

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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserOnenoteRecentNotebook_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserOnenoteRecentNotebook_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of todoTaskList
    ${TodoTaskListId},

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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListTaskDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListTaskDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function boundingRect
.Description
Invoke function boundingRect

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgboundinguserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangerect
#>
function Invoke-MgBoundingUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeRect {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Bounding', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: anotherRange={anotherRange}
    ${AnotherRange},

    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='BoundingViaIdentity', Mandatory, ValueFromPipeline)]
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
            Bounding = 'Microsoft.Graph.Users.Functions.private\Invoke-MgBoundingUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeRect_Bounding';
            BoundingViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgBoundingUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeRect_BoundingViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function boundingRect
.Description
Invoke function boundingRect

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgboundinguserinsightsharedresourcemicrosoftgraphworkbookrangerect
#>
function Invoke-MgBoundingUserInsightSharedResourceMicrosoftGraphWorkbookRangeRect {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Bounding', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: anotherRange={anotherRange}
    ${AnotherRange},

    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='BoundingViaIdentity', Mandatory, ValueFromPipeline)]
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
            Bounding = 'Microsoft.Graph.Users.Functions.private\Invoke-MgBoundingUserInsightSharedResourceMicrosoftGraphWorkbookRangeRect_Bounding';
            BoundingViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgBoundingUserInsightSharedResourceMicrosoftGraphWorkbookRangeRect_BoundingViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function boundingRect
.Description
Invoke function boundingRect

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgboundinguserinsighttrendingresourcemicrosoftgraphworkbookrangerect
#>
function Invoke-MgBoundingUserInsightTrendingResourceMicrosoftGraphWorkbookRangeRect {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Bounding', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: anotherRange={anotherRange}
    ${AnotherRange},

    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='BoundingViaIdentity', Mandatory, ValueFromPipeline)]
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
            Bounding = 'Microsoft.Graph.Users.Functions.private\Invoke-MgBoundingUserInsightTrendingResourceMicrosoftGraphWorkbookRangeRect_Bounding';
            BoundingViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgBoundingUserInsightTrendingResourceMicrosoftGraphWorkbookRangeRect_BoundingViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function boundingRect
.Description
Invoke function boundingRect

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgboundinguserinsightusedresourcemicrosoftgraphworkbookrangerect
#>
function Invoke-MgBoundingUserInsightUsedResourceMicrosoftGraphWorkbookRangeRect {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Bounding', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: anotherRange={anotherRange}
    ${AnotherRange},

    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Bounding', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='BoundingViaIdentity', Mandatory, ValueFromPipeline)]
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
            Bounding = 'Microsoft.Graph.Users.Functions.private\Invoke-MgBoundingUserInsightUsedResourceMicrosoftGraphWorkbookRangeRect_Bounding';
            BoundingViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgBoundingUserInsightUsedResourceMicrosoftGraphWorkbookRangeRect_BoundingViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Calendar1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Calendar1', Mandatory)]
    [Parameter(ParameterSetName='Calendar2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: User={User}
    ${User},

    [Parameter(ParameterSetName='Calendar1', Mandatory)]
    [Parameter(ParameterSetName='Calendar2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Calendar2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of calendar
    ${CalendarId},

    [Parameter(ParameterSetName='CalendarViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CalendarViaIdentity2', Mandatory, ValueFromPipeline)]
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
            Calendar1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_Calendar1';
            Calendar2 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_Calendar2';
            CalendarViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_CalendarViaIdentity1';
            CalendarViaIdentity2 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_CalendarViaIdentity2';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Calendar1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Calendar1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Calendar1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: User={User}
    ${User},

    [Parameter(ParameterSetName='Calendar1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CalendarViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Calendar1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserEventCalendarAllowedCalendarSharingRoles_Calendar1';
            CalendarViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserEventCalendarAllowedCalendarSharingRoles_CalendarViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function cell
.Description
Invoke function cell

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcelluserinsightsharedlastsharedmethodmicrosoftgraphworkbookrange
#>
function Invoke-MgCellUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Cell', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: column={column}
    ${Column},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: row={row}
    ${Row},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CellViaIdentity', Mandatory, ValueFromPipeline)]
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
            Cell = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCellUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_Cell';
            CellViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCellUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_CellViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function cell
.Description
Invoke function cell

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcelluserinsightsharedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgCellUserInsightSharedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Cell', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: column={column}
    ${Column},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: row={row}
    ${Row},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CellViaIdentity', Mandatory, ValueFromPipeline)]
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
            Cell = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCellUserInsightSharedResourceMicrosoftGraphWorkbookRange_Cell';
            CellViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCellUserInsightSharedResourceMicrosoftGraphWorkbookRange_CellViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function cell
.Description
Invoke function cell

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcelluserinsighttrendingresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgCellUserInsightTrendingResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Cell', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: column={column}
    ${Column},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: row={row}
    ${Row},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CellViaIdentity', Mandatory, ValueFromPipeline)]
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
            Cell = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCellUserInsightTrendingResourceMicrosoftGraphWorkbookRange_Cell';
            CellViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCellUserInsightTrendingResourceMicrosoftGraphWorkbookRange_CellViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function cell
.Description
Invoke function cell

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcelluserinsightusedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgCellUserInsightUsedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Cell', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: column={column}
    ${Column},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: row={row}
    ${Row},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Cell', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CellViaIdentity', Mandatory, ValueFromPipeline)]
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
            Cell = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCellUserInsightUsedResourceMicrosoftGraphWorkbookRange_Cell';
            CellViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCellUserInsightUsedResourceMicrosoftGraphWorkbookRange_CellViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsAfter
.Description
Invoke function columnsAfter

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangeafter9c18
#>
function Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAfter9C18 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAfter9C18_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAfter9C18_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsAfter
.Description
Invoke function columnsAfter

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangeafterdb2a
#>
function Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAfterDb2A {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAfterDb2A_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAfterDb2A_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsBefore
.Description
Invoke function columnsBefore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangebefore1bca
#>
function Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBefore1Bca {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBefore1Bca_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBefore1Bca_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsBefore
.Description
Invoke function columnsBefore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangebefore72e4
#>
function Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBefore72E4 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBefore72E4_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBefore72E4_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function column
.Description
Invoke function column

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrange
#>
function Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Column', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: column={column}
    ${Column},

    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnViaIdentity', Mandatory, ValueFromPipeline)]
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
            Column = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_Column';
            ColumnViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_ColumnViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsAfter
.Description
Invoke function columnsAfter

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightsharedresourcemicrosoftgraphworkbookrangeafter9c18
#>
function Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeAfter9C18 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeAfter9C18_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeAfter9C18_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsAfter
.Description
Invoke function columnsAfter

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightsharedresourcemicrosoftgraphworkbookrangeafterdb2a
#>
function Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeAfterDb2A {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeAfterDb2A_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeAfterDb2A_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsBefore
.Description
Invoke function columnsBefore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightsharedresourcemicrosoftgraphworkbookrangebefore1bca
#>
function Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeBefore1Bca {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeBefore1Bca_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeBefore1Bca_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsBefore
.Description
Invoke function columnsBefore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightsharedresourcemicrosoftgraphworkbookrangebefore72e4
#>
function Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeBefore72E4 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeBefore72E4_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRangeBefore72E4_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function column
.Description
Invoke function column

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightsharedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Column', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: column={column}
    ${Column},

    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnViaIdentity', Mandatory, ValueFromPipeline)]
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
            Column = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRange_Column';
            ColumnViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightSharedResourceMicrosoftGraphWorkbookRange_ColumnViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsAfter
.Description
Invoke function columnsAfter

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsighttrendingresourcemicrosoftgraphworkbookrangeafter9c18
#>
function Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAfter9C18 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAfter9C18_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAfter9C18_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsAfter
.Description
Invoke function columnsAfter

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsighttrendingresourcemicrosoftgraphworkbookrangeafterdb2a
#>
function Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAfterDb2A {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAfterDb2A_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAfterDb2A_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsBefore
.Description
Invoke function columnsBefore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsighttrendingresourcemicrosoftgraphworkbookrangebefore1bca
#>
function Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBefore1Bca {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBefore1Bca_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBefore1Bca_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsBefore
.Description
Invoke function columnsBefore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsighttrendingresourcemicrosoftgraphworkbookrangebefore72e4
#>
function Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBefore72E4 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBefore72E4_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBefore72E4_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function column
.Description
Invoke function column

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsighttrendingresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Column', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: column={column}
    ${Column},

    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnViaIdentity', Mandatory, ValueFromPipeline)]
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
            Column = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRange_Column';
            ColumnViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightTrendingResourceMicrosoftGraphWorkbookRange_ColumnViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsAfter
.Description
Invoke function columnsAfter

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightusedresourcemicrosoftgraphworkbookrangeafter9c18
#>
function Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeAfter9C18 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeAfter9C18_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeAfter9C18_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsAfter
.Description
Invoke function columnsAfter

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightusedresourcemicrosoftgraphworkbookrangeafterdb2a
#>
function Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeAfterDb2A {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeAfterDb2A_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeAfterDb2A_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsBefore
.Description
Invoke function columnsBefore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightusedresourcemicrosoftgraphworkbookrangebefore1bca
#>
function Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeBefore1Bca {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeBefore1Bca_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeBefore1Bca_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function columnsBefore
.Description
Invoke function columnsBefore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightusedresourcemicrosoftgraphworkbookrangebefore72e4
#>
function Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeBefore72E4 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Columns', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Columns', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Columns = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeBefore72E4_Columns';
            ColumnsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRangeBefore72E4_ColumnsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function column
.Description
Invoke function column

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcolumnuserinsightusedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Column', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: column={column}
    ${Column},

    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Column', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ColumnViaIdentity', Mandatory, ValueFromPipeline)]
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
            Column = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRange_Column';
            ColumnViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgColumnUserInsightUsedResourceMicrosoftGraphWorkbookRange_ColumnViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function entireColumn
.Description
Invoke function entireColumn

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgentireuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangecolumn
#>
function Invoke-MgEntireUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeColumn {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Entire', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Entire', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Entire', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='EntireViaIdentity', Mandatory, ValueFromPipeline)]
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
            Entire = 'Microsoft.Graph.Users.Functions.private\Invoke-MgEntireUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeColumn_Entire';
            EntireViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgEntireUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeColumn_EntireViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function entireColumn
.Description
Invoke function entireColumn

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgentireuserinsightsharedresourcemicrosoftgraphworkbookrangecolumn
#>
function Invoke-MgEntireUserInsightSharedResourceMicrosoftGraphWorkbookRangeColumn {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Entire', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Entire', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Entire', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='EntireViaIdentity', Mandatory, ValueFromPipeline)]
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
            Entire = 'Microsoft.Graph.Users.Functions.private\Invoke-MgEntireUserInsightSharedResourceMicrosoftGraphWorkbookRangeColumn_Entire';
            EntireViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgEntireUserInsightSharedResourceMicrosoftGraphWorkbookRangeColumn_EntireViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function entireColumn
.Description
Invoke function entireColumn

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgentireuserinsighttrendingresourcemicrosoftgraphworkbookrangecolumn
#>
function Invoke-MgEntireUserInsightTrendingResourceMicrosoftGraphWorkbookRangeColumn {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Entire', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Entire', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Entire', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='EntireViaIdentity', Mandatory, ValueFromPipeline)]
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
            Entire = 'Microsoft.Graph.Users.Functions.private\Invoke-MgEntireUserInsightTrendingResourceMicrosoftGraphWorkbookRangeColumn_Entire';
            EntireViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgEntireUserInsightTrendingResourceMicrosoftGraphWorkbookRangeColumn_EntireViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function entireColumn
.Description
Invoke function entireColumn

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgentireuserinsightusedresourcemicrosoftgraphworkbookrangecolumn
#>
function Invoke-MgEntireUserInsightUsedResourceMicrosoftGraphWorkbookRangeColumn {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Entire', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Entire', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Entire', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='EntireViaIdentity', Mandatory, ValueFromPipeline)]
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
            Entire = 'Microsoft.Graph.Users.Functions.private\Invoke-MgEntireUserInsightUsedResourceMicrosoftGraphWorkbookRangeColumn_Entire';
            EntireViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgEntireUserInsightUsedResourceMicrosoftGraphWorkbookRangeColumn_EntireViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function intersection
.Description
Invoke function intersection

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgintersectionuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrange
#>
function Invoke-MgIntersectionUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Intersection', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: anotherRange={anotherRange}
    ${AnotherRange},

    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='IntersectionViaIdentity', Mandatory, ValueFromPipeline)]
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
            Intersection = 'Microsoft.Graph.Users.Functions.private\Invoke-MgIntersectionUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_Intersection';
            IntersectionViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgIntersectionUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_IntersectionViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function intersection
.Description
Invoke function intersection

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgintersectionuserinsightsharedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgIntersectionUserInsightSharedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Intersection', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: anotherRange={anotherRange}
    ${AnotherRange},

    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='IntersectionViaIdentity', Mandatory, ValueFromPipeline)]
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
            Intersection = 'Microsoft.Graph.Users.Functions.private\Invoke-MgIntersectionUserInsightSharedResourceMicrosoftGraphWorkbookRange_Intersection';
            IntersectionViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgIntersectionUserInsightSharedResourceMicrosoftGraphWorkbookRange_IntersectionViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function intersection
.Description
Invoke function intersection

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgintersectionuserinsighttrendingresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgIntersectionUserInsightTrendingResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Intersection', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: anotherRange={anotherRange}
    ${AnotherRange},

    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='IntersectionViaIdentity', Mandatory, ValueFromPipeline)]
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
            Intersection = 'Microsoft.Graph.Users.Functions.private\Invoke-MgIntersectionUserInsightTrendingResourceMicrosoftGraphWorkbookRange_Intersection';
            IntersectionViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgIntersectionUserInsightTrendingResourceMicrosoftGraphWorkbookRange_IntersectionViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function intersection
.Description
Invoke function intersection

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgintersectionuserinsightusedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgIntersectionUserInsightUsedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Intersection', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: anotherRange={anotherRange}
    ${AnotherRange},

    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Intersection', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='IntersectionViaIdentity', Mandatory, ValueFromPipeline)]
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
            Intersection = 'Microsoft.Graph.Users.Functions.private\Invoke-MgIntersectionUserInsightUsedResourceMicrosoftGraphWorkbookRange_Intersection';
            IntersectionViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgIntersectionUserInsightUsedResourceMicrosoftGraphWorkbookRange_IntersectionViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastCell
.Description
Invoke function lastCell

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangecell
#>
function Invoke-MgLastUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeCell {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeCell_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeCell_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastColumn
.Description
Invoke function lastColumn

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangecolumn
#>
function Invoke-MgLastUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeColumn {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeColumn_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeColumn_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastRow
.Description
Invoke function lastRow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangerow
#>
function Invoke-MgLastUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeRow {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeRow_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeRow_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastCell
.Description
Invoke function lastCell

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsightsharedresourcemicrosoftgraphworkbookrangecell
#>
function Invoke-MgLastUserInsightSharedResourceMicrosoftGraphWorkbookRangeCell {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedResourceMicrosoftGraphWorkbookRangeCell_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedResourceMicrosoftGraphWorkbookRangeCell_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastColumn
.Description
Invoke function lastColumn

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsightsharedresourcemicrosoftgraphworkbookrangecolumn
#>
function Invoke-MgLastUserInsightSharedResourceMicrosoftGraphWorkbookRangeColumn {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedResourceMicrosoftGraphWorkbookRangeColumn_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedResourceMicrosoftGraphWorkbookRangeColumn_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastRow
.Description
Invoke function lastRow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsightsharedresourcemicrosoftgraphworkbookrangerow
#>
function Invoke-MgLastUserInsightSharedResourceMicrosoftGraphWorkbookRangeRow {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedResourceMicrosoftGraphWorkbookRangeRow_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightSharedResourceMicrosoftGraphWorkbookRangeRow_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastCell
.Description
Invoke function lastCell

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsighttrendingresourcemicrosoftgraphworkbookrangecell
#>
function Invoke-MgLastUserInsightTrendingResourceMicrosoftGraphWorkbookRangeCell {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightTrendingResourceMicrosoftGraphWorkbookRangeCell_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightTrendingResourceMicrosoftGraphWorkbookRangeCell_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastColumn
.Description
Invoke function lastColumn

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsighttrendingresourcemicrosoftgraphworkbookrangecolumn
#>
function Invoke-MgLastUserInsightTrendingResourceMicrosoftGraphWorkbookRangeColumn {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightTrendingResourceMicrosoftGraphWorkbookRangeColumn_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightTrendingResourceMicrosoftGraphWorkbookRangeColumn_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastRow
.Description
Invoke function lastRow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsighttrendingresourcemicrosoftgraphworkbookrangerow
#>
function Invoke-MgLastUserInsightTrendingResourceMicrosoftGraphWorkbookRangeRow {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightTrendingResourceMicrosoftGraphWorkbookRangeRow_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightTrendingResourceMicrosoftGraphWorkbookRangeRow_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastCell
.Description
Invoke function lastCell

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsightusedresourcemicrosoftgraphworkbookrangecell
#>
function Invoke-MgLastUserInsightUsedResourceMicrosoftGraphWorkbookRangeCell {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightUsedResourceMicrosoftGraphWorkbookRangeCell_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightUsedResourceMicrosoftGraphWorkbookRangeCell_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastColumn
.Description
Invoke function lastColumn

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsightusedresourcemicrosoftgraphworkbookrangecolumn
#>
function Invoke-MgLastUserInsightUsedResourceMicrosoftGraphWorkbookRangeColumn {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightUsedResourceMicrosoftGraphWorkbookRangeColumn_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightUsedResourceMicrosoftGraphWorkbookRangeColumn_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function lastRow
.Description
Invoke function lastRow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mglastuserinsightusedresourcemicrosoftgraphworkbookrangerow
#>
function Invoke-MgLastUserInsightUsedResourceMicrosoftGraphWorkbookRangeRow {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Last', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Last', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LastViaIdentity', Mandatory, ValueFromPipeline)]
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
            Last = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightUsedResourceMicrosoftGraphWorkbookRangeRow_Last';
            LastViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgLastUserInsightUsedResourceMicrosoftGraphWorkbookRangeRow_LastViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function offsetRange
.Description
Invoke function offsetRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgoffsetuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrange
#>
function Invoke-MgOffsetUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Offset', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: columnOffset={columnOffset}
    ${ColumnOffset},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: rowOffset={rowOffset}
    ${RowOffset},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='OffsetViaIdentity', Mandatory, ValueFromPipeline)]
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
            Offset = 'Microsoft.Graph.Users.Functions.private\Invoke-MgOffsetUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_Offset';
            OffsetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgOffsetUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_OffsetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function offsetRange
.Description
Invoke function offsetRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgoffsetuserinsightsharedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgOffsetUserInsightSharedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Offset', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: columnOffset={columnOffset}
    ${ColumnOffset},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: rowOffset={rowOffset}
    ${RowOffset},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='OffsetViaIdentity', Mandatory, ValueFromPipeline)]
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
            Offset = 'Microsoft.Graph.Users.Functions.private\Invoke-MgOffsetUserInsightSharedResourceMicrosoftGraphWorkbookRange_Offset';
            OffsetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgOffsetUserInsightSharedResourceMicrosoftGraphWorkbookRange_OffsetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function offsetRange
.Description
Invoke function offsetRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgoffsetuserinsighttrendingresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgOffsetUserInsightTrendingResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Offset', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: columnOffset={columnOffset}
    ${ColumnOffset},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: rowOffset={rowOffset}
    ${RowOffset},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='OffsetViaIdentity', Mandatory, ValueFromPipeline)]
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
            Offset = 'Microsoft.Graph.Users.Functions.private\Invoke-MgOffsetUserInsightTrendingResourceMicrosoftGraphWorkbookRange_Offset';
            OffsetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgOffsetUserInsightTrendingResourceMicrosoftGraphWorkbookRange_OffsetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function offsetRange
.Description
Invoke function offsetRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgoffsetuserinsightusedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgOffsetUserInsightUsedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Offset', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: columnOffset={columnOffset}
    ${ColumnOffset},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: rowOffset={rowOffset}
    ${RowOffset},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Offset', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='OffsetViaIdentity', Mandatory, ValueFromPipeline)]
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
            Offset = 'Microsoft.Graph.Users.Functions.private\Invoke-MgOffsetUserInsightUsedResourceMicrosoftGraphWorkbookRange_Offset';
            OffsetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgOffsetUserInsightUsedResourceMicrosoftGraphWorkbookRange_OffsetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Preview', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Preview', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onenotePage
    ${OnenotePageId},

    [Parameter(ParameterSetName='Preview', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='PreviewViaIdentity', Mandatory, ValueFromPipeline)]
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
            Preview = 'Microsoft.Graph.Users.Functions.private\Invoke-MgPreviewUserOnenotePage_Preview';
            PreviewViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgPreviewUserOnenotePage_PreviewViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function resizedRange
.Description
Invoke function resizedRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangeresized
#>
function Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeResized {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: deltaColumns={deltaColumns}
    ${DeltaColumns},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: deltaRows={deltaRows}
    ${DeltaRows},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeResized_Range';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeResized_RangeViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function range
.Description
Invoke function range

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangeview
#>
function Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeView {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeView_Range';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeView_RangeViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function usedRange
.Description
Invoke function usedRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrange
#>
function Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Management.Automation.SwitchParameter]
    # Usage: valuesOnly={valuesOnly}
    ${ValuesOnly},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RangeViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_Range';
            Range1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_Range1';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_RangeViaIdentity';
            RangeViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_RangeViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function resizedRange
.Description
Invoke function resizedRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsightsharedresourcemicrosoftgraphworkbookrangeresized
#>
function Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRangeResized {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: deltaColumns={deltaColumns}
    ${DeltaColumns},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: deltaRows={deltaRows}
    ${DeltaRows},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRangeResized_Range';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRangeResized_RangeViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function range
.Description
Invoke function range

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsightsharedresourcemicrosoftgraphworkbookrangeview
#>
function Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRangeView {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRangeView_Range';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRangeView_RangeViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function usedRange
.Description
Invoke function usedRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsightsharedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Management.Automation.SwitchParameter]
    # Usage: valuesOnly={valuesOnly}
    ${ValuesOnly},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RangeViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRange_Range';
            Range1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRange_Range1';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRange_RangeViaIdentity';
            RangeViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightSharedResourceMicrosoftGraphWorkbookRange_RangeViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function resizedRange
.Description
Invoke function resizedRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsighttrendingresourcemicrosoftgraphworkbookrangeresized
#>
function Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRangeResized {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: deltaColumns={deltaColumns}
    ${DeltaColumns},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: deltaRows={deltaRows}
    ${DeltaRows},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRangeResized_Range';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRangeResized_RangeViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function range
.Description
Invoke function range

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsighttrendingresourcemicrosoftgraphworkbookrangeview
#>
function Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRangeView {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRangeView_Range';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRangeView_RangeViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function usedRange
.Description
Invoke function usedRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsighttrendingresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Management.Automation.SwitchParameter]
    # Usage: valuesOnly={valuesOnly}
    ${ValuesOnly},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RangeViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRange_Range';
            Range1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRange_Range1';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRange_RangeViaIdentity';
            RangeViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightTrendingResourceMicrosoftGraphWorkbookRange_RangeViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function resizedRange
.Description
Invoke function resizedRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsightusedresourcemicrosoftgraphworkbookrangeresized
#>
function Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRangeResized {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: deltaColumns={deltaColumns}
    ${DeltaColumns},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: deltaRows={deltaRows}
    ${DeltaRows},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRangeResized_Range';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRangeResized_RangeViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function range
.Description
Invoke function range

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsightusedresourcemicrosoftgraphworkbookrangeview
#>
function Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRangeView {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRangeView_Range';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRangeView_RangeViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function usedRange
.Description
Invoke function usedRange

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrangeuserinsightusedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Range', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Range', Mandatory)]
    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Range', Mandatory)]
    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Range1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Management.Automation.SwitchParameter]
    # Usage: valuesOnly={valuesOnly}
    ${ValuesOnly},

    [Parameter(ParameterSetName='RangeViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RangeViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Range = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRange_Range';
            Range1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRange_Range1';
            RangeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRange_RangeViaIdentity';
            RangeViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRangeUserInsightUsedResourceMicrosoftGraphWorkbookRange_RangeViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1])]
[CmdletBinding(DefaultParameterSetName='Recent1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Recent1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RecentViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Recent1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRecentUserActivity_Recent1';
            RecentViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRecentUserActivity_RecentViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsAbove
.Description
Invoke function rowsAbove

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangeabove251e
#>
function Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAbove251E {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAbove251E_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAbove251E_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsAbove
.Description
Invoke function rowsAbove

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangeabove3ac1
#>
function Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAbove3Ac1 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAbove3Ac1_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeAbove3Ac1_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsBelow
.Description
Invoke function rowsBelow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangebelow3b3c
#>
function Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBelow3B3C {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBelow3B3C_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBelow3B3C_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsBelow
.Description
Invoke function rowsBelow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangebelowcb11
#>
function Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBelowCb11 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBelowCb11_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeBelowCb11_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function entireRow
.Description
Invoke function entireRow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangeentire
#>
function Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeEntire {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Row', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowViaIdentity', Mandatory, ValueFromPipeline)]
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
            Row = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeEntire_Row';
            RowViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeEntire_RowViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function row
.Description
Invoke function row

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrange
#>
function Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Row', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: row={row}
    ${Row},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowViaIdentity', Mandatory, ValueFromPipeline)]
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
            Row = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_Row';
            RowViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange_RowViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsAbove
.Description
Invoke function rowsAbove

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedresourcemicrosoftgraphworkbookrangeabove251e
#>
function Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeAbove251E {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeAbove251E_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeAbove251E_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsAbove
.Description
Invoke function rowsAbove

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedresourcemicrosoftgraphworkbookrangeabove3ac1
#>
function Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeAbove3Ac1 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeAbove3Ac1_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeAbove3Ac1_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsBelow
.Description
Invoke function rowsBelow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedresourcemicrosoftgraphworkbookrangebelow3b3c
#>
function Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeBelow3B3C {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeBelow3B3C_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeBelow3B3C_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsBelow
.Description
Invoke function rowsBelow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedresourcemicrosoftgraphworkbookrangebelowcb11
#>
function Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeBelowCb11 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeBelowCb11_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeBelowCb11_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function entireRow
.Description
Invoke function entireRow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedresourcemicrosoftgraphworkbookrangeentire
#>
function Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeEntire {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Row', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowViaIdentity', Mandatory, ValueFromPipeline)]
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
            Row = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeEntire_Row';
            RowViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRangeEntire_RowViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function row
.Description
Invoke function row

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightsharedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Row', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: row={row}
    ${Row},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowViaIdentity', Mandatory, ValueFromPipeline)]
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
            Row = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRange_Row';
            RowViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightSharedResourceMicrosoftGraphWorkbookRange_RowViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsAbove
.Description
Invoke function rowsAbove

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsighttrendingresourcemicrosoftgraphworkbookrangeabove251e
#>
function Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAbove251E {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAbove251E_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAbove251E_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsAbove
.Description
Invoke function rowsAbove

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsighttrendingresourcemicrosoftgraphworkbookrangeabove3ac1
#>
function Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAbove3Ac1 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAbove3Ac1_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeAbove3Ac1_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsBelow
.Description
Invoke function rowsBelow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsighttrendingresourcemicrosoftgraphworkbookrangebelow3b3c
#>
function Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBelow3B3C {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBelow3B3C_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBelow3B3C_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsBelow
.Description
Invoke function rowsBelow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsighttrendingresourcemicrosoftgraphworkbookrangebelowcb11
#>
function Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBelowCb11 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBelowCb11_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeBelowCb11_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function entireRow
.Description
Invoke function entireRow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsighttrendingresourcemicrosoftgraphworkbookrangeentire
#>
function Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeEntire {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Row', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowViaIdentity', Mandatory, ValueFromPipeline)]
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
            Row = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeEntire_Row';
            RowViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRangeEntire_RowViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function row
.Description
Invoke function row

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsighttrendingresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Row', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: row={row}
    ${Row},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowViaIdentity', Mandatory, ValueFromPipeline)]
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
            Row = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRange_Row';
            RowViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightTrendingResourceMicrosoftGraphWorkbookRange_RowViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsAbove
.Description
Invoke function rowsAbove

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightusedresourcemicrosoftgraphworkbookrangeabove251e
#>
function Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeAbove251E {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeAbove251E_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeAbove251E_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsAbove
.Description
Invoke function rowsAbove

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightusedresourcemicrosoftgraphworkbookrangeabove3ac1
#>
function Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeAbove3Ac1 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeAbove3Ac1_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeAbove3Ac1_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsBelow
.Description
Invoke function rowsBelow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightusedresourcemicrosoftgraphworkbookrangebelow3b3c
#>
function Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeBelow3B3C {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeBelow3B3C_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeBelow3B3C_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function rowsBelow
.Description
Invoke function rowsBelow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightusedresourcemicrosoftgraphworkbookrangebelowcb11
#>
function Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeBelowCb11 {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Rows', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: count={count}
    ${Count},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Rows', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowsViaIdentity', Mandatory, ValueFromPipeline)]
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
            Rows = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeBelowCb11_Rows';
            RowsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeBelowCb11_RowsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function entireRow
.Description
Invoke function entireRow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightusedresourcemicrosoftgraphworkbookrangeentire
#>
function Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeEntire {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Row', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowViaIdentity', Mandatory, ValueFromPipeline)]
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
            Row = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeEntire_Row';
            RowViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRangeEntire_RowViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function row
.Description
Invoke function row

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrowuserinsightusedresourcemicrosoftgraphworkbookrange
#>
function Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRange {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRange])]
[CmdletBinding(DefaultParameterSetName='Row', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: row={row}
    ${Row},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='Row', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RowViaIdentity', Mandatory, ValueFromPipeline)]
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
            Row = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRange_Row';
            RowViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRowUserInsightUsedResourceMicrosoftGraphWorkbookRange_RowViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Supported', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Supported', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SupportedViaIdentity', Mandatory, ValueFromPipeline)]
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
            Supported = 'Microsoft.Graph.Users.Functions.private\Invoke-MgSupportedUserOutlookLanguage_Supported';
            SupportedViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgSupportedUserOutlookLanguage_SupportedViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Time', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Time', Mandatory)]
    [Parameter(ParameterSetName='Time1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Time1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: TimeZoneStandard={TimeZoneStandard}
    ${TimeZoneStandard},

    [Parameter(ParameterSetName='TimeViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TimeViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Time = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_Time';
            Time1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_Time1';
            TimeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_TimeViaIdentity';
            TimeViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_TimeViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function visibleView
.Description
Invoke function visibleView

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRangeView
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgviewuserinsightsharedlastsharedmethodmicrosoftgraphworkbookrangevisible
#>
function Invoke-MgViewUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeVisible {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRangeView])]
[CmdletBinding(DefaultParameterSetName='View', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ViewViaIdentity', Mandatory, ValueFromPipeline)]
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
            View = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeVisible_View';
            ViewViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeVisible_ViewViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function visibleView
.Description
Invoke function visibleView

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRangeView
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgviewuserinsightsharedresourcemicrosoftgraphworkbookrangevisible
#>
function Invoke-MgViewUserInsightSharedResourceMicrosoftGraphWorkbookRangeVisible {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRangeView])]
[CmdletBinding(DefaultParameterSetName='View', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of sharedInsight
    ${SharedInsightId},

    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ViewViaIdentity', Mandatory, ValueFromPipeline)]
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
            View = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserInsightSharedResourceMicrosoftGraphWorkbookRangeVisible_View';
            ViewViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserInsightSharedResourceMicrosoftGraphWorkbookRangeVisible_ViewViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function visibleView
.Description
Invoke function visibleView

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRangeView
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgviewuserinsighttrendingresourcemicrosoftgraphworkbookrangevisible
#>
function Invoke-MgViewUserInsightTrendingResourceMicrosoftGraphWorkbookRangeVisible {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRangeView])]
[CmdletBinding(DefaultParameterSetName='View', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of trending
    ${TrendingId},

    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ViewViaIdentity', Mandatory, ValueFromPipeline)]
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
            View = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserInsightTrendingResourceMicrosoftGraphWorkbookRangeVisible_View';
            ViewViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserInsightTrendingResourceMicrosoftGraphWorkbookRangeVisible_ViewViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function visibleView
.Description
Invoke function visibleView

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRangeView
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgviewuserinsightusedresourcemicrosoftgraphworkbookrangevisible
#>
function Invoke-MgViewUserInsightUsedResourceMicrosoftGraphWorkbookRangeVisible {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWorkbookRangeView])]
[CmdletBinding(DefaultParameterSetName='View', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of usedInsight
    ${UsedInsightId},

    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ViewViaIdentity', Mandatory, ValueFromPipeline)]
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
            View = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserInsightUsedResourceMicrosoftGraphWorkbookRangeVisible_View';
            ViewViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserInsightUsedResourceMicrosoftGraphWorkbookRangeVisible_ViewViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphReminder
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphReminder])]
[CmdletBinding(DefaultParameterSetName='View', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: EndDateTime={EndDateTime}
    ${EndDateTime},

    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: StartDateTime={StartDateTime}
    ${StartDateTime},

    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ViewViaIdentity', Mandatory, ValueFromPipeline)]
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
            View = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserReminder_View';
            ViewViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserReminder_ViewViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCC0U1O1KIBLdhUe
# b5h4CXva0qaLuun1v1REHK0ZlYC6SaCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQggzV52evb
# RWlKfEqqTgnXBXDchdxNdxqA/kWkQdyViO8wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQAmulj/5a2ilJd8/y0QGIsRq0yCHbxTzAvgwEW7+b14
# tN9lX0U+LiN0Zi8O0m3DMXDI56VRQBXwb8aZ+N3exf61VM+QkCLh0vwA5BKPwu+a
# i8biCuNY+Y7henyopjQ17ZdmaZ0ucINfOsQ6m0R7teUF7gK2sBdoS0AGHWZNtuSa
# wgvE/vLrKn/O8pehGlT6piQtLVhYzA9VAESoll6y4QZ029WMpvwpBGnu3JiV3vet
# 31cSyxGALgBfc4/5Q3C/HxQ2B5cuatUym3ggKhHSuQFfw9bOFlir45pqfK4pqSo7
# 7Pcyj54kmqoiTG+IUaSmp1fLAs1MkFfX2pQl5Kd0rXkNoYIS/jCCEvoGCisGAQQB
# gjcDAwExghLqMIIS5gYJKoZIhvcNAQcCoIIS1zCCEtMCAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIGoozBExwidaRzIgwFwMpgxaoo+p556Pb4LWzAt/
# +p/KAgZhcIeMkXoYEzIwMjExMDI3MDcxMTI1Ljc5MlowBIACAfSggdikgdUwgdIx
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
# AQQwLwYJKoZIhvcNAQkEMSIEINZP/ZI2g9hq1Xa0MwYuhGMpuJHkt8451TjP03OW
# 0nJjMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgn6/QhAepLF/7Bdsvfu8G
# OT+ihL9c4cgo5Nf1aUN8tG0wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAATqNjTH3d0lJwgAAAAABOjAiBCCad1sT4fODZN4IPSh9v6at
# bbtTBV3axXkL6x81mXZBgDANBgkqhkiG9w0BAQsFAASCAQBrj075gnwaqsHuHYgE
# 5T5ukLH2e5KDhrJMPDTcGCJnlQ0hfXTafNVnuByOrrYZSiRGpIt0V+DYs5Td2uZk
# IcK5Xwi891iFF3m5DZm8NUKN3SaubA9OQG/nTjbNgZzf8mMOdI5y1D9osOW0AxuE
# APdaFYUnViwW5n5kNGCVVf9Vj6q9TWqFHJ3eDiogiMptjspWrdn93db4280zh3MX
# yrOqFwT/jTGw5mh7heye44fxbHhleskTG+ehvjQc1VYPiUCv9oMMIjFi3oRwwMLU
# SD4PEysoCw8yu9DMeQ2N4Un1B5kaj4xyA5ZGYUDI0+eMXRHxWo9oslHVotKgkvHo
# VXcp
# SIG # End signature block
