
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action clearPresence
.Description
Invoke action clearPresence

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Ca0Rf4CommunicationsPresencesPresenceIdMicrosoftGraphClearpresencePostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Ca0Rf4CommunicationsPresencesPresenceIdMicrosoftGraphClearpresencePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [SessionId <String>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/clear-mgcommunicationpresence
#>
function Clear-MgCommunicationPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ClearExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Clear', Mandatory)]
    [Parameter(ParameterSetName='ClearExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='ClearViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Clear', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ClearViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ca0Rf4CommunicationsPresencesPresenceIdMicrosoftGraphClearpresencePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ClearExpanded')]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ClearExpanded')]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Clear = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_Clear';
            ClearExpanded = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_ClearExpanded';
            ClearViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_ClearViaIdentity';
            ClearViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_ClearViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcalloperation
#>
function Get-MgCommunicationCallOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of commsOperation
    ${CommsOperationId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallOperation_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallOperation_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallOperation_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcallparticipant
#>
function Get-MgCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallParticipant_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallParticipant_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallParticipant_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
List of sessions involved in the call.
Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant.
Read-only.
Nullable.
.Description
List of sessions involved in the call.
Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcallrecordsession
#>
function Get-MgCommunicationCallRecordSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of session
    ${SessionId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecordSession_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecordSession_GetViaIdentity';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecordSession_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get callRecords from communications
.Description
Get callRecords from communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsCallRecord
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcallrecord
#>
function Get-MgCommunicationCallRecord {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsCallRecord])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecord_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecord_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get calls from communications
.Description
Get calls from communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcall
#>
function Get-MgCommunicationCall {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCall_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCall_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get media content for the navigation property onlineMeetings from communications
.Description
Get media content for the navigation property onlineMeetings from communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingattendeereport
#>
function Get-MgCommunicationOnlineMeetingAttendeeReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendeeReport_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendeeReport_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get onlineMeetings from communications
.Description
Get onlineMeetings from communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [EndDateTime <DateTime?>]: 
  [ExternalId <String>]: 
  [Participants <IMicrosoftGraphMeetingParticipants>]: meetingParticipants
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [Role <String>]: onlineMeetingRole
      [Upn <String>]: User principal name of the participant.
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [StartDateTime <DateTime?>]: 
  [Subject <String>]: 

CHATINFO <IMicrosoftGraphChatInfo>: chatInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
  [ReplyChainMessageId <String>]: The ID of the reply message.
  [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

PARTICIPANTS <IMicrosoftGraphMeetingParticipants>: meetingParticipants
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [Role <String>]: onlineMeetingRole
    [Upn <String>]: User principal name of the participant.
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeeting
#>
function Get-MgCommunicationOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting])]
[CmdletBinding(DefaultParameterSetName='GetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get')]
    [Parameter(ParameterSetName='GetViaIdentity')]
    [Parameter(ParameterSetName='List')]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter(ParameterSetName='Get')]
    [Parameter(ParameterSetName='GetViaIdentity')]
    [Parameter(ParameterSetName='List')]
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

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='GetExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${EndDateTime},

    [Parameter(ParameterSetName='GetExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ExternalId},

    [Parameter(ParameterSetName='GetExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='GetExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${StartDateTime},

    [Parameter(ParameterSetName='GetExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_Get';
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_Get1';
            GetExpanded = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_GetExpanded';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action getPresencesByUserId
.Description
Invoke action getPresencesByUserId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths10WpgkzCommunicationsMicrosoftGraphGetpresencesbyuseridPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths10WpgkzCommunicationsMicrosoftGraphGetpresencesbyuseridPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Ids <String[]>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationpresence
#>
function Get-MgCommunicationPresence {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence])]
[CmdletBinding(DefaultParameterSetName='GetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get1')]
    [Parameter(ParameterSetName='GetViaIdentity')]
    [Parameter(ParameterSetName='List')]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter(ParameterSetName='Get1')]
    [Parameter(ParameterSetName='GetViaIdentity')]
    [Parameter(ParameterSetName='List')]
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

    [Parameter(ParameterSetName='Get', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths10WpgkzCommunicationsMicrosoftGraphGetpresencesbyuseridPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_Get';
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_Get1';
            GetExpanded = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_GetExpanded';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get media content for the navigation property onlineMeetings from users
.Description
Get media content for the navigation property onlineMeetings from users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingattendeereport
#>
function Get-MgUserOnlineMeetingAttendeeReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendeeReport_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendeeReport_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get onlineMeetings from users
.Description
Get onlineMeetings from users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeeting
#>
function Get-MgUserOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeeting_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeeting_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeeting_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get presence from users
.Description
Get presence from users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguserpresence
#>
function Get-MgUserPresence {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserPresence_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserPresence_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action answer
.Description
Invoke action answer

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsQvpqn4CommunicationsCallsCallIdMicrosoftGraphAnswerPostRequestbodyContentApplicationJsonSchema1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsQvpqn4CommunicationsCallsCallIdMicrosoftGraphAnswerPostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AcceptedModalities <String[]>]: 
  [CallbackUri <String>]: 
  [MediaConfig <IMicrosoftGraphMediaConfig>]: mediaConfig
    [(Any) <Object>]: This indicates any property can be added to this object.
  [ParticipantCapacity <Int32?>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mganswercommunicationcall
#>
function Invoke-MgAnswerCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AnswerExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Answer', Mandatory)]
    [Parameter(ParameterSetName='AnswerExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='AnswerViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Answer', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AnswerViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsQvpqn4CommunicationsCallsCallIdMicrosoftGraphAnswerPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AnswerExpanded')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${AcceptedModalities},

    [Parameter(ParameterSetName='AnswerExpanded')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AnswerExpanded')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CallbackUri},

    [Parameter(ParameterSetName='AnswerExpanded')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaConfig]))]
    [System.Collections.Hashtable]
    # mediaConfig
    ${MediaConfig},

    [Parameter(ParameterSetName='AnswerExpanded')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${ParticipantCapacity},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Answer = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_Answer';
            AnswerExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_AnswerExpanded';
            AnswerViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_AnswerViaIdentity';
            AnswerViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_AnswerViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to onlineMeetings for communications
.Description
Create new navigation property to onlineMeetings for communications

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

AUDIOCONFERENCING <IMicrosoftGraphAudioConferencing>: audioConferencing
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ConferenceId <String>]: The conference id of the online meeting.
  [DialinUrl <String>]: A URL to the externally-accessible web page that contains dial-in information.
  [TollFreeNumber <String>]: 
  [TollFreeNumbers <String[]>]: List of toll-free numbers that are displayed in the meeting invite.
  [TollNumber <String>]: 
  [TollNumbers <String[]>]: List of toll numbers that are displayed in the meeting invite.

BODYPARAMETER <IMicrosoftGraphOnlineMeeting>: onlineMeeting
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AllowAttendeeToEnableCamera <Boolean?>]: Indicates whether attendees can turn on their camera.
  [AllowAttendeeToEnableMic <Boolean?>]: Indicates whether attendees can turn on their microphone.
  [AllowMeetingChat <String>]: meetingChatMode
  [AllowTeamworkReactions <Boolean?>]: Indicates whether Teams reactions are enabled for the meeting.
  [AllowedPresenters <String>]: onlineMeetingPresenters
  [AttendeeReport <Byte[]>]: The content stream of the attendee report of a live event. Read-only.
  [AudioConferencing <IMicrosoftGraphAudioConferencing>]: audioConferencing
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ConferenceId <String>]: The conference id of the online meeting.
    [DialinUrl <String>]: A URL to the externally-accessible web page that contains dial-in information.
    [TollFreeNumber <String>]: 
    [TollFreeNumbers <String[]>]: List of toll-free numbers that are displayed in the meeting invite.
    [TollNumber <String>]: 
    [TollNumbers <String[]>]: List of toll numbers that are displayed in the meeting invite.
  [BroadcastSettings <IMicrosoftGraphBroadcastMeetingSettings>]: broadcastMeetingSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowedAudience <String>]: broadcastMeetingAudience
    [IsAttendeeReportEnabled <Boolean?>]: Indicates whether attendee report is enabled for this live event. Default value is false.
    [IsQuestionAndAnswerEnabled <Boolean?>]: Indicates whether Q&A is enabled for this live event. Default value is false.
    [IsRecordingEnabled <Boolean?>]: Indicates whether recording is enabled for this live event. Default value is false.
    [IsVideoOnDemandEnabled <Boolean?>]: Indicates whether video on demand is enabled for this live event. Default value is false.
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [CreationDateTime <DateTime?>]: The meeting creation time in UTC. Read-only.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [ExternalId <String>]: The external ID. A custom ID. Optional.
  [IsBroadcast <Boolean?>]: Indicates if this is a live event.
  [IsEntryExitAnnounced <Boolean?>]: Indicates whether to announce when callers join or leave.
  [JoinInformation <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [JoinWebUrl <String>]: The join URL of the online meeting. Read-only.
  [LobbyBypassSettings <IMicrosoftGraphLobbyBypassSettings>]: lobbyBypassSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
    [Scope <String>]: lobbyBypassScope
  [Participants <IMicrosoftGraphMeetingParticipants>]: meetingParticipants
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [Role <String>]: onlineMeetingRole
      [Upn <String>]: User principal name of the participant.
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [RecordAutomatically <Boolean?>]: Indicates whether to record the meeting automatically.
  [StartDateTime <DateTime?>]: The meeting start time in UTC.
  [Subject <String>]: The subject of the online meeting.
  [VideoTeleconferenceId <String>]: The video teleconferencing ID. Read-only.

BROADCASTSETTINGS <IMicrosoftGraphBroadcastMeetingSettings>: broadcastMeetingSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AllowedAudience <String>]: broadcastMeetingAudience
  [IsAttendeeReportEnabled <Boolean?>]: Indicates whether attendee report is enabled for this live event. Default value is false.
  [IsQuestionAndAnswerEnabled <Boolean?>]: Indicates whether Q&A is enabled for this live event. Default value is false.
  [IsRecordingEnabled <Boolean?>]: Indicates whether recording is enabled for this live event. Default value is false.
  [IsVideoOnDemandEnabled <Boolean?>]: Indicates whether video on demand is enabled for this live event. Default value is false.

CHATINFO <IMicrosoftGraphChatInfo>: chatInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
  [ReplyChainMessageId <String>]: The ID of the reply message.
  [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.

JOININFORMATION <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType

LOBBYBYPASSSETTINGS <IMicrosoftGraphLobbyBypassSettings>: lobbyBypassSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
  [Scope <String>]: lobbyBypassScope

PARTICIPANTS <IMicrosoftGraphMeetingParticipants>: meetingParticipants
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [Role <String>]: onlineMeetingRole
    [Upn <String>]: User principal name of the participant.
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgcreateorgetcommunicationonlinemeeting
#>
function Invoke-MgCreateOrGetCommunicationOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting]
    # onlineMeeting
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingChatMode
    ${AllowMeetingChat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if this is a live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The join URL of the online meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The video teleconferencing ID.
    # Read-only.
    ${VideoTeleconferenceId},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgCreateOrGetCommunicationOnlineMeeting_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgCreateOrGetCommunicationOnlineMeeting_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action invite
.Description
Invoke action invite

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Bh76WaCommunicationsCallsCallIdParticipantsMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInviteParticipantsOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Bh76WaCommunicationsCallsCallIdParticipantsMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 
  [Participants <IMicrosoftGraphInvitationParticipantInfo[]>]: 
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [ReplacesCallId <String>]: Optional. The call which the target identity is currently a part of. This call will be dropped once the participant is added.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

PARTICIPANTS <IMicrosoftGraphInvitationParticipantInfo[]>: .
  [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [ReplacesCallId <String>]: Optional. The call which the target identity is currently a part of. This call will be dropped once the participant is added.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mginvitecommunicationcallparticipant
#>
function Invoke-MgInviteCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInviteParticipantsOperation])]
[CmdletBinding(DefaultParameterSetName='InviteExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Invite', Mandatory)]
    [Parameter(ParameterSetName='InviteExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='InviteViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Invite', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='InviteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Bh76WaCommunicationsCallsCallIdParticipantsMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo[]]
    # .
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Invite = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_Invite';
            InviteExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_InviteExpanded';
            InviteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_InviteViaIdentity';
            InviteViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_InviteViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action keepAlive
.Description
Invoke action keepAlive

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgkeepcommunicationcallalive
#>
function Invoke-MgKeepCommunicationCallAlive {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Keep', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Keep', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='KeepViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Keep = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgKeepCommunicationCallAlive_Keep';
            KeepViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgKeepCommunicationCallAlive_KeepViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action logTeleconferenceDeviceQuality
.Description
Invoke action logTeleconferenceDeviceQuality

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1JbdsmaCommunicationsCallsMicrosoftGraphLogteleconferencedevicequalityPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1JbdsmaCommunicationsCallsMicrosoftGraphLogteleconferencedevicequalityPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Quality <IMicrosoftGraphTeleconferenceDeviceQuality>]: teleconferenceDeviceQuality
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CallChainId <String>]: A unique identifier for all  the participant calls in a conference or a unique identifier for two participant calls in P2P call. This needs to be copied over from Microsoft.Graph.Call.CallChainId.
    [CloudServiceDeploymentEnvironment <String>]: A geo-region where the service is deployed, such as ProdNoam.
    [CloudServiceDeploymentId <String>]: A unique deployment identifier assigned by Azure.
    [CloudServiceInstanceName <String>]: The Azure deployed cloud service instance name, such as FrontEnd_IN_3.
    [CloudServiceName <String>]: The Azure deployed cloud service name, such as contoso.cloudapp.net.
    [DeviceDescription <String>]: Any additional description, such as VTC Bldg 30/21.
    [DeviceName <String>]: The user media agent name, such as Cisco SX80.
    [MediaLegId <String>]: A unique identifier for a specific media leg of a participant in a conference.  One participant can have multiple media leg identifiers if retargeting happens. CVI partner assigns this value.
    [MediaQualityList <IMicrosoftGraphTeleconferenceDeviceMediaQuality[]>]: The list of media qualities in a media session (call), such as audio quality, video quality, and/or screen sharing quality.
      [AverageInboundJitter <TimeSpan?>]: The average inbound stream network jitter.
      [AverageInboundPacketLossRateInPercentage <Double?>]: The average inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
      [AverageInboundRoundTripDelay <TimeSpan?>]: The average inbound stream network round trip delay.
      [AverageOutboundJitter <TimeSpan?>]: The average outbound stream network jitter.
      [AverageOutboundPacketLossRateInPercentage <Double?>]: The average outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
      [AverageOutboundRoundTripDelay <TimeSpan?>]: The average outbound stream network round trip delay.
      [ChannelIndex <Int32?>]: The channel index of media. Indexing begins with 1.  If a media session contains 3 video modalities, channel indexes will be 1, 2, and 3.
      [InboundPackets <Int64?>]: The total number of the inbound packets.
      [LocalIPAddress <String>]: the local IP address for the media session.
      [LocalPort <Int32?>]: The local media port.
      [MaximumInboundJitter <TimeSpan?>]: The maximum inbound stream network jitter.
      [MaximumInboundPacketLossRateInPercentage <Double?>]: The maximum inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
      [MaximumInboundRoundTripDelay <TimeSpan?>]: The maximum inbound stream network round trip delay.
      [MaximumOutboundJitter <TimeSpan?>]: The maximum outbound stream network jitter.
      [MaximumOutboundPacketLossRateInPercentage <Double?>]: The maximum outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
      [MaximumOutboundRoundTripDelay <TimeSpan?>]: The maximum outbound stream network round trip delay.
      [MediaDuration <TimeSpan?>]: The total modality duration. If the media enabled and disabled multiple times, MediaDuration will the summation of all of the durations.
      [NetworkLinkSpeedInBytes <Int64?>]: The network link speed in bytes
      [OutboundPackets <Int64?>]: The total number of the outbound packets.
      [RemoteIPAddress <String>]: The remote IP address for the media session.
      [RemotePort <Int32?>]: The remote media port.
    [ParticipantId <String>]: A unique identifier for a specific participant in a conference. The CVI partner needs to copy over Call.MyParticipantId to this property.

QUALITY <IMicrosoftGraphTeleconferenceDeviceQuality>: teleconferenceDeviceQuality
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CallChainId <String>]: A unique identifier for all  the participant calls in a conference or a unique identifier for two participant calls in P2P call. This needs to be copied over from Microsoft.Graph.Call.CallChainId.
  [CloudServiceDeploymentEnvironment <String>]: A geo-region where the service is deployed, such as ProdNoam.
  [CloudServiceDeploymentId <String>]: A unique deployment identifier assigned by Azure.
  [CloudServiceInstanceName <String>]: The Azure deployed cloud service instance name, such as FrontEnd_IN_3.
  [CloudServiceName <String>]: The Azure deployed cloud service name, such as contoso.cloudapp.net.
  [DeviceDescription <String>]: Any additional description, such as VTC Bldg 30/21.
  [DeviceName <String>]: The user media agent name, such as Cisco SX80.
  [MediaLegId <String>]: A unique identifier for a specific media leg of a participant in a conference.  One participant can have multiple media leg identifiers if retargeting happens. CVI partner assigns this value.
  [MediaQualityList <IMicrosoftGraphTeleconferenceDeviceMediaQuality[]>]: The list of media qualities in a media session (call), such as audio quality, video quality, and/or screen sharing quality.
    [AverageInboundJitter <TimeSpan?>]: The average inbound stream network jitter.
    [AverageInboundPacketLossRateInPercentage <Double?>]: The average inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
    [AverageInboundRoundTripDelay <TimeSpan?>]: The average inbound stream network round trip delay.
    [AverageOutboundJitter <TimeSpan?>]: The average outbound stream network jitter.
    [AverageOutboundPacketLossRateInPercentage <Double?>]: The average outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
    [AverageOutboundRoundTripDelay <TimeSpan?>]: The average outbound stream network round trip delay.
    [ChannelIndex <Int32?>]: The channel index of media. Indexing begins with 1.  If a media session contains 3 video modalities, channel indexes will be 1, 2, and 3.
    [InboundPackets <Int64?>]: The total number of the inbound packets.
    [LocalIPAddress <String>]: the local IP address for the media session.
    [LocalPort <Int32?>]: The local media port.
    [MaximumInboundJitter <TimeSpan?>]: The maximum inbound stream network jitter.
    [MaximumInboundPacketLossRateInPercentage <Double?>]: The maximum inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
    [MaximumInboundRoundTripDelay <TimeSpan?>]: The maximum inbound stream network round trip delay.
    [MaximumOutboundJitter <TimeSpan?>]: The maximum outbound stream network jitter.
    [MaximumOutboundPacketLossRateInPercentage <Double?>]: The maximum outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
    [MaximumOutboundRoundTripDelay <TimeSpan?>]: The maximum outbound stream network round trip delay.
    [MediaDuration <TimeSpan?>]: The total modality duration. If the media enabled and disabled multiple times, MediaDuration will the summation of all of the durations.
    [NetworkLinkSpeedInBytes <Int64?>]: The network link speed in bytes
    [OutboundPackets <Int64?>]: The total number of the outbound packets.
    [RemoteIPAddress <String>]: The remote IP address for the media session.
    [RemotePort <Int32?>]: The remote media port.
  [ParticipantId <String>]: A unique identifier for a specific participant in a conference. The CVI partner needs to copy over Call.MyParticipantId to this property.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mglogcommunicationcallteleconferencedevicequality
#>
function Invoke-MgLogCommunicationCallTeleconferenceDeviceQuality {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='LogExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Log', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1JbdsmaCommunicationsCallsMicrosoftGraphLogteleconferencedevicequalityPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='LogExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='LogExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeleconferenceDeviceQuality]
    # teleconferenceDeviceQuality
    # To construct, see NOTES section for QUALITY properties and create a hash table.
    ${Quality},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Log = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgLogCommunicationCallTeleconferenceDeviceQuality_Log';
            LogExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgLogCommunicationCallTeleconferenceDeviceQuality_LogExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action mute
.Description
Invoke action mute

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsTobgxoCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsTobgxoCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgmutecommunicationcallparticipant
#>
function Invoke-MgMuteCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantOperation])]
[CmdletBinding(DefaultParameterSetName='MuteExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Mute', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Mute', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='MuteViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Mute', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsTobgxoCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MuteExpanded')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MuteExpanded')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Mute = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_Mute';
            MuteExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_MuteExpanded';
            MuteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_MuteViaIdentity';
            MuteViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_MuteViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action mute
.Description
Invoke action mute

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths13Zt223CommunicationsCallsCallIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths13Zt223CommunicationsCallsCallIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgmutecommunicationcall
#>
function Invoke-MgMuteCommunicationCall {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantOperation])]
[CmdletBinding(DefaultParameterSetName='MuteExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Mute', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='MuteViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Mute', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths13Zt223CommunicationsCallsCallIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MuteExpanded')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MuteExpanded')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Mute = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_Mute';
            MuteExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_MuteExpanded';
            MuteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_MuteViaIdentity';
            MuteViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_MuteViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action playPrompt
.Description
Invoke action playPrompt

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Gzqcv2CommunicationsCallsCallIdMicrosoftGraphPlaypromptPostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlayPromptOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Gzqcv2CommunicationsCallsCallIdMicrosoftGraphPlaypromptPostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 
  [Prompts <IMicrosoftGraphPrompt[]>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgplaycommunicationcallprompt
#>
function Invoke-MgPlayCommunicationCallPrompt {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlayPromptOperation])]
[CmdletBinding(DefaultParameterSetName='PlayExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Play', Mandatory)]
    [Parameter(ParameterSetName='PlayExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='PlayViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Play', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PlayViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Gzqcv2CommunicationsCallsCallIdMicrosoftGraphPlaypromptPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='PlayExpanded')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='PlayExpanded')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='PlayExpanded')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrompt[]]
    # .
    ${Prompts},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Play = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_Play';
            PlayExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_PlayExpanded';
            PlayViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_PlayViaIdentity';
            PlayViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_PlayViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action recordResponse
.Description
Invoke action recordResponse

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths14Wb7KqCommunicationsCallsCallIdMicrosoftGraphRecordresponsePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths14Wb7KqCommunicationsCallsCallIdMicrosoftGraphRecordresponsePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [BargeInAllowed <Boolean?>]: 
  [ClientContext <String>]: 
  [InitialSilenceTimeoutInSeconds <Int32?>]: 
  [MaxRecordDurationInSeconds <Int32?>]: 
  [MaxSilenceTimeoutInSeconds <Int32?>]: 
  [PlayBeep <Boolean?>]: 
  [Prompts <IMicrosoftGraphPrompt[]>]: 
  [StopTones <String[]>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgrecordcommunicationcallresponse
#>
function Invoke-MgRecordCommunicationCallResponse {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordOperation])]
[CmdletBinding(DefaultParameterSetName='RecordExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Record', Mandatory)]
    [Parameter(ParameterSetName='RecordExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='RecordViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Record', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RecordViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths14Wb7KqCommunicationsCallsCallIdMicrosoftGraphRecordresponsePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${BargeInAllowed},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${InitialSilenceTimeoutInSeconds},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${MaxRecordDurationInSeconds},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${MaxSilenceTimeoutInSeconds},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${PlayBeep},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrompt[]]
    # .
    ${Prompts},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${StopTones},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Record = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_Record';
            RecordExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_RecordExpanded';
            RecordViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_RecordViaIdentity';
            RecordViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_RecordViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action redirect
.Description
Invoke action redirect

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths183Gi8UCommunicationsCallsCallIdMicrosoftGraphRedirectPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths183Gi8UCommunicationsCallsCallIdMicrosoftGraphRedirectPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CallbackUri <String>]: 
  [Targets <IMicrosoftGraphInvitationParticipantInfo[]>]: 
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [ReplacesCallId <String>]: Optional. The call which the target identity is currently a part of. This call will be dropped once the participant is added.
  [Timeout <Int32?>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

TARGETS <IMicrosoftGraphInvitationParticipantInfo[]>: .
  [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [ReplacesCallId <String>]: Optional. The call which the target identity is currently a part of. This call will be dropped once the participant is added.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgredirectcommunicationcall
#>
function Invoke-MgRedirectCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='RedirectExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Redirect', Mandatory)]
    [Parameter(ParameterSetName='RedirectExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='RedirectViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Redirect', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RedirectViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths183Gi8UCommunicationsCallsCallIdMicrosoftGraphRedirectPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RedirectExpanded')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RedirectExpanded')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CallbackUri},

    [Parameter(ParameterSetName='RedirectExpanded')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo[]]
    # .
    # To construct, see NOTES section for TARGETS properties and create a hash table.
    ${Targets},

    [Parameter(ParameterSetName='RedirectExpanded')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Timeout},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Redirect = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_Redirect';
            RedirectExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_RedirectExpanded';
            RedirectViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_RedirectViaIdentity';
            RedirectViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_RedirectViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action reject
.Description
Invoke action reject

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths4QrghdCommunicationsCallsCallIdMicrosoftGraphRejectPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths4QrghdCommunicationsCallsCallIdMicrosoftGraphRejectPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CallbackUri <String>]: 
  [Reason <String>]: rejectReason

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgrejectcommunicationcall
#>
function Invoke-MgRejectCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='RejectExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reject', Mandatory)]
    [Parameter(ParameterSetName='RejectExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='RejectViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Reject', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RejectViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths4QrghdCommunicationsCallsCallIdMicrosoftGraphRejectPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RejectExpanded')]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RejectExpanded')]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CallbackUri},

    [Parameter(ParameterSetName='RejectExpanded')]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # rejectReason
    ${Reason},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Reject = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_Reject';
            RejectExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_RejectExpanded';
            RejectViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_RejectViaIdentity';
            RejectViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_RejectViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action subscribeToTone
.Description
Invoke action subscribeToTone

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsXyl6WiCommunicationsCallsCallIdMicrosoftGraphSubscribetotonePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscribeToToneOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsXyl6WiCommunicationsCallsCallIdMicrosoftGraphSubscribetotonePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgsubscribecommunicationcalltotone
#>
function Invoke-MgSubscribeCommunicationCallToTone {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscribeToToneOperation])]
[CmdletBinding(DefaultParameterSetName='SubscribeExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Subscribe', Mandatory)]
    [Parameter(ParameterSetName='SubscribeExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='SubscribeViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SubscribeViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Subscribe', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SubscribeViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsXyl6WiCommunicationsCallsCallIdMicrosoftGraphSubscribetotonePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SubscribeExpanded')]
    [Parameter(ParameterSetName='SubscribeViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SubscribeExpanded')]
    [Parameter(ParameterSetName='SubscribeViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Subscribe = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_Subscribe';
            SubscribeExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_SubscribeExpanded';
            SubscribeViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_SubscribeViaIdentity';
            SubscribeViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_SubscribeViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action unmute
.Description
Invoke action unmute

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1X7BvttCommunicationsCallsCallIdMicrosoftGraphUnmutePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnmuteParticipantOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1X7BvttCommunicationsCallsCallIdMicrosoftGraphUnmutePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgunmutecommunicationcall
#>
function Invoke-MgUnmuteCommunicationCall {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnmuteParticipantOperation])]
[CmdletBinding(DefaultParameterSetName='UnmuteExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Unmute', Mandatory)]
    [Parameter(ParameterSetName='UnmuteExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='UnmuteViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UnmuteViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Unmute', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UnmuteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1X7BvttCommunicationsCallsCallIdMicrosoftGraphUnmutePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UnmuteExpanded')]
    [Parameter(ParameterSetName='UnmuteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UnmuteExpanded')]
    [Parameter(ParameterSetName='UnmuteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Unmute = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_Unmute';
            UnmuteExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_UnmuteExpanded';
            UnmuteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_UnmuteViaIdentity';
            UnmuteViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_UnmuteViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action transfer
.Description
Invoke action transfer

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths4Zbm7LCommunicationsCallsCallIdMicrosoftGraphTransferPostRequestbodyContentApplicationJsonSchema1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths4Zbm7LCommunicationsCallsCallIdMicrosoftGraphTransferPostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [TransferTarget <IMicrosoftGraphInvitationParticipantInfo>]: invitationParticipantInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [ReplacesCallId <String>]: Optional. The call which the target identity is currently a part of. This call will be dropped once the participant is added.
  [Transferee <IMicrosoftGraphParticipantInfo>]: participantInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CountryCode <String>]: The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
    [EndpointType <String>]: endpointType
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [LanguageId <String>]: The language culture string. Read-only.
    [ParticipantId <String>]: The participant ID of the participant. Read-only.
    [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

TRANSFEREE <IMicrosoftGraphParticipantInfo>: participantInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CountryCode <String>]: The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
  [EndpointType <String>]: endpointType
  [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [LanguageId <String>]: The language culture string. Read-only.
  [ParticipantId <String>]: The participant ID of the participant. Read-only.
  [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.

TRANSFERTARGET <IMicrosoftGraphInvitationParticipantInfo>: invitationParticipantInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [ReplacesCallId <String>]: Optional. The call which the target identity is currently a part of. This call will be dropped once the participant is added.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/move-mgcommunicationcall
#>
function Move-MgCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='TransferExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Transfer', Mandatory)]
    [Parameter(ParameterSetName='TransferExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='TransferViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Transfer', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TransferViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths4Zbm7LCommunicationsCallsCallIdMicrosoftGraphTransferPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='TransferExpanded')]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='TransferExpanded')]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo]
    # invitationParticipantInfo
    # To construct, see NOTES section for TRANSFERTARGET properties and create a hash table.
    ${TransferTarget},

    [Parameter(ParameterSetName='TransferExpanded')]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo]
    # participantInfo
    # To construct, see NOTES section for TRANSFEREE properties and create a hash table.
    ${Transferee},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Transfer = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_Transfer';
            TransferExpanded = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_TransferExpanded';
            TransferViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_TransferViaIdentity';
            TransferViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_TransferViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphCommsOperation>: commsOperation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ClientContext <String>]: Unique Client Context string. Max limit is 256 chars.
  [ResultInfo <IMicrosoftGraphResultInfo>]: resultInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Code <Int32?>]: The result code.
    [Message <String>]: The message.
    [Subcode <Int32?>]: The result sub-code.
  [Status <String>]: operationStatus

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

RESULTINFO <IMicrosoftGraphResultInfo>: resultInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Code <Int32?>]: The result code.
  [Message <String>]: The message.
  [Subcode <Int32?>]: The result sub-code.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcalloperation
#>
function New-MgCommunicationCallOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation]
    # commsOperation
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
    # Unique Client Context string.
    # Max limit is 256 chars.
    ${ClientContext},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # operationStatus
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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphParticipant>: participant
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Info <IMicrosoftGraphParticipantInfo>]: participantInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CountryCode <String>]: The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
    [EndpointType <String>]: endpointType
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [LanguageId <String>]: The language culture string. Read-only.
    [ParticipantId <String>]: The participant ID of the participant. Read-only.
    [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
  [IsInLobby <Boolean?>]: true if the participant is in lobby.
  [IsMuted <Boolean?>]: true if the participant is muted (client or server muted).
  [MediaStreams <IMicrosoftGraphMediaStream[]>]: The list of media streams.
    [Direction <String>]: mediaDirection
    [Label <String>]: The media stream label.
    [MediaType <String>]: 
    [ServerMuted <Boolean?>]: If the media is muted by the server.
    [SourceId <String>]: The source ID.
  [Metadata <String>]: A blob of data provided by the participant in the roster.
  [RecordingInfo <IMicrosoftGraphRecordingInfo>]: recordingInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
    [RecordingStatus <String>]: recordingStatus

INFO <IMicrosoftGraphParticipantInfo>: participantInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CountryCode <String>]: The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
  [EndpointType <String>]: endpointType
  [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [LanguageId <String>]: The language culture string. Read-only.
  [ParticipantId <String>]: The participant ID of the participant. Read-only.
  [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

MEDIASTREAMS <IMicrosoftGraphMediaStream[]>: The list of media streams.
  [Direction <String>]: mediaDirection
  [Label <String>]: The media stream label.
  [MediaType <String>]: 
  [ServerMuted <Boolean?>]: If the media is muted by the server.
  [SourceId <String>]: The source ID.

RECORDINGINFO <IMicrosoftGraphRecordingInfo>: recordingInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [RecordingStatus <String>]: recordingStatus
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcallparticipant
#>
function New-MgCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant]
    # participant
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo]
    # participantInfo
    # To construct, see NOTES section for INFO properties and create a hash table.
    ${Info},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is in lobby.
    ${IsInLobby},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is muted (client or server muted).
    ${IsMuted},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaStream[]]
    # The list of media streams.
    # To construct, see NOTES section for MEDIASTREAMS properties and create a hash table.
    ${MediaStreams},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A blob of data provided by the participant in the roster.
    ${Metadata},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordingInfo]
    # recordingInfo
    # To construct, see NOTES section for RECORDINGINFO properties and create a hash table.
    ${RecordingInfo},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
List of sessions involved in the call.
Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant.
Read-only.
Nullable.
.Description
List of sessions involved in the call.
Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphCallRecordsSession>: session
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Callee <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
    [(Any) <Object>]: This indicates any property can be added to this object.
    [UserAgent <IMicrosoftGraphCallRecordsUserAgent>]: userAgent
      [(Any) <Object>]: This indicates any property can be added to this object.
      [ApplicationVersion <String>]: Identifies the version of application software used by this endpoint.
      [HeaderValue <String>]: User-agent header value reported by this endpoint.
  [Caller <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
  [EndDateTime <DateTime?>]: UTC time when the last user left the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [FailureInfo <IMicrosoftGraphCallRecordsFailureInfo>]: failureInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Reason <String>]: Classification of why a call or portion of a call failed.
    [Stage <String>]: failureStage
  [Modalities <String[]>]: List of modalities present in the session. Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
  [Segments <IMicrosoftGraphCallRecordsSegment[]>]: The list of segments involved in the session. Read-only. Nullable.
    [Id <String>]: Read-only.
    [Callee <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
    [Caller <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
    [EndDateTime <DateTime?>]: UTC time when the segment ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [FailureInfo <IMicrosoftGraphCallRecordsFailureInfo>]: failureInfo
    [Media <IMicrosoftGraphCallRecordsMedia[]>]: Media associated with this segment.
      [CalleeDevice <IMicrosoftGraphCallRecordsDeviceInfo>]: deviceInfo
        [(Any) <Object>]: This indicates any property can be added to this object.
        [CaptureDeviceDriver <String>]: Name of the capture device driver used by the media endpoint.
        [CaptureDeviceName <String>]: Name of the capture device used by the media endpoint.
        [CaptureNotFunctioningEventRatio <Single?>]: Fraction of the call that the media endpoint detected the capture device was not working properly.
        [CpuInsufficentEventRatio <Single?>]: Fraction of the call that the media endpoint detected the CPU resources available were insufficient and caused poor quality of the audio sent and received.
        [DeviceClippingEventRatio <Single?>]: Fraction of the call that the media endpoint detected clipping in the captured audio that caused poor quality of the audio being sent.
        [DeviceGlitchEventRatio <Single?>]: Fraction of the call that the media endpoint detected glitches or gaps in the audio played or captured that caused poor quality of the audio being sent or received.
        [HowlingEventCount <Int32?>]: Number of times during the call that the media endpoint detected howling or screeching audio.
        [InitialSignalLevelRootMeanSquare <Single?>]: The root mean square (RMS) of the incoming signal of up to the first 30 seconds of the call.
        [LowSpeechLevelEventRatio <Single?>]: Fraction of the call that the media endpoint detected low speech level that caused poor quality of the audio being sent.
        [LowSpeechToNoiseEventRatio <Single?>]: Fraction of the call that the media endpoint detected low speech to noise level that caused poor quality of the audio being sent.
        [MicGlitchRate <Single?>]: Glitches per 5 minute interval for the media endpoint's microphone.
        [ReceivedNoiseLevel <Int32?>]: Average energy level of received audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
        [ReceivedSignalLevel <Int32?>]: Average energy level of received audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
        [RenderDeviceDriver <String>]: Name of the render device driver used by the media endpoint.
        [RenderDeviceName <String>]: Name of the render device used by the media endpoint.
        [RenderMuteEventRatio <Single?>]: Fraction of the call that media endpoint detected device render is muted.
        [RenderNotFunctioningEventRatio <Single?>]: Fraction of the call that the media endpoint detected the render device was not working properly.
        [RenderZeroVolumeEventRatio <Single?>]: Fraction of the call that media endpoint detected device render volume is set to 0.
        [SentNoiseLevel <Int32?>]: Average energy level of sent audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
        [SentSignalLevel <Int32?>]: Average energy level of sent audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
        [SpeakerGlitchRate <Single?>]: Glitches per 5 minute internal for the media endpoint's loudspeaker.
      [CalleeNetwork <IMicrosoftGraphCallRecordsNetworkInfo>]: networkInfo
        [(Any) <Object>]: This indicates any property can be added to this object.
        [BandwidthLowEventRatio <Single?>]: Fraction of the call that the media endpoint detected the available bandwidth or bandwidth policy was low enough to cause poor quality of the audio sent.
        [BasicServiceSetIdentifier <String>]: The wireless LAN basic service set identifier of the media endpoint used to connect to the network.
        [ConnectionType <String>]: networkConnectionType
        [DelayEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network delay was significant enough to impact the ability to have real-time two-way communication.
        [DnsSuffix <String>]: DNS suffix associated with the network adapter of the media endpoint.
        [IPAddress <String>]: IP address of the media endpoint.
        [LinkSpeed <Int64?>]: Link speed in bits per second reported by the network adapter used by the media endpoint.
        [MacAddress <String>]: The media access control (MAC) address of the media endpoint's network device.
        [Port <Int32?>]: Network port number used by media endpoint.
        [ReceivedQualityEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network was causing poor quality of the audio received.
        [ReflexiveIPAddress <String>]: IP address of the media endpoint as seen by the media relay server. This is typically the public internet IP address associated to the endpoint.
        [RelayIPAddress <String>]: IP address of the media relay server allocated by the media endpoint.
        [RelayPort <Int32?>]: Network port number allocated on the media relay server by the media endpoint.
        [SentQualityEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network was causing poor quality of the audio sent.
        [Subnet <String>]: Subnet used for media stream by the media endpoint.
        [WifiBand <String>]: wifiBand
        [WifiBatteryCharge <Int32?>]: Estimated remaining battery charge in percentage reported by the media endpoint.
        [WifiChannel <Int32?>]: WiFi channel used by the media endpoint.
        [WifiMicrosoftDriver <String>]: Name of the Microsoft WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
        [WifiMicrosoftDriverVersion <String>]: Version of the Microsoft WiFi driver used by the media endpoint.
        [WifiRadioType <String>]: wifiRadioType
        [WifiSignalStrength <Int32?>]: WiFi signal strength in percentage reported by the media endpoint.
        [WifiVendorDriver <String>]: Name of the WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
        [WifiVendorDriverVersion <String>]: Version of the WiFi driver used by the media endpoint.
      [CallerDevice <IMicrosoftGraphCallRecordsDeviceInfo>]: deviceInfo
      [CallerNetwork <IMicrosoftGraphCallRecordsNetworkInfo>]: networkInfo
      [Label <String>]: How the media was identified during media negotiation stage.
      [Streams <IMicrosoftGraphCallRecordsMediaStream[]>]: Network streams associated with this media.
        [AverageAudioDegradation <Single?>]: Average Network Mean Opinion Score degradation for stream. Represents how much the network loss and jitter has impacted the quality of received audio.
        [AverageAudioNetworkJitter <TimeSpan?>]: Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [AverageBandwidthEstimate <Int64?>]: Average estimated bandwidth available between two endpoints in bits per second.
        [AverageJitter <TimeSpan?>]: Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [AveragePacketLossRate <Single?>]: Average packet loss rate for stream.
        [AverageRatioOfConcealedSamples <Single?>]: Ratio of the number of audio frames with samples generated by packet loss concealment to the total number of audio frames.
        [AverageReceivedFrameRate <Single?>]: Average frames per second received for all video streams computed over the duration of the session.
        [AverageRoundTripTime <TimeSpan?>]: Average network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [AverageVideoFrameLossPercentage <Single?>]: Average percentage of video frames lost as displayed to the user.
        [AverageVideoFrameRate <Single?>]: Average frames per second received for a video stream, computed over the duration of the session.
        [AverageVideoPacketLossRate <Single?>]: Average fraction of packets lost, as specified in [RFC 3550][], computed over the duration of the session.
        [EndDateTime <DateTime?>]: UTC time when the stream ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [LowFrameRateRatio <Single?>]: Fraction of the call where frame rate is less than 7.5 frames per second.
        [LowVideoProcessingCapabilityRatio <Single?>]: Fraction of the call that the client is running less than 70% expected video processing capability.
        [MaxAudioNetworkJitter <TimeSpan?>]: Maximum of audio network jitter computed over each of the 20 second windows during the session, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [MaxJitter <TimeSpan?>]: Maximum jitter for the stream computed as specified in RFC 3550, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [MaxPacketLossRate <Single?>]: Maximum packet loss rate for the stream.
        [MaxRatioOfConcealedSamples <Single?>]: Maximum ratio of packets concealed by the healer.
        [MaxRoundTripTime <TimeSpan?>]: Maximum network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [PacketUtilization <Int64?>]: Packet count for the stream.
        [PostForwardErrorCorrectionPacketLossRate <Single?>]: Packet loss rate after FEC has been applied aggregated across all video streams and codecs.
        [StartDateTime <DateTime?>]: UTC time when the stream started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [StreamDirection <String>]: mediaStreamDirection
        [StreamId <String>]: Unique identifier for the stream.
        [WasMediaBypassed <Boolean?>]: True if the media stream bypassed the Mediation Server and went straight between client and PSTN Gateway/PBX, false otherwise.
    [StartDateTime <DateTime?>]: UTC time when the segment started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [StartDateTime <DateTime?>]: UTC time when the first user joined the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z

CALLEE <IMicrosoftGraphCallRecordsEndpoint>: endpoint
  [(Any) <Object>]: This indicates any property can be added to this object.
  [UserAgent <IMicrosoftGraphCallRecordsUserAgent>]: userAgent
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ApplicationVersion <String>]: Identifies the version of application software used by this endpoint.
    [HeaderValue <String>]: User-agent header value reported by this endpoint.

CALLER <IMicrosoftGraphCallRecordsEndpoint>: endpoint
  [(Any) <Object>]: This indicates any property can be added to this object.
  [UserAgent <IMicrosoftGraphCallRecordsUserAgent>]: userAgent
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ApplicationVersion <String>]: Identifies the version of application software used by this endpoint.
    [HeaderValue <String>]: User-agent header value reported by this endpoint.

FAILUREINFO <IMicrosoftGraphCallRecordsFailureInfo>: failureInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Reason <String>]: Classification of why a call or portion of a call failed.
  [Stage <String>]: failureStage

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

SEGMENTS <IMicrosoftGraphCallRecordsSegment[]>: The list of segments involved in the session. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Callee <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
    [(Any) <Object>]: This indicates any property can be added to this object.
    [UserAgent <IMicrosoftGraphCallRecordsUserAgent>]: userAgent
      [(Any) <Object>]: This indicates any property can be added to this object.
      [ApplicationVersion <String>]: Identifies the version of application software used by this endpoint.
      [HeaderValue <String>]: User-agent header value reported by this endpoint.
  [Caller <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
  [EndDateTime <DateTime?>]: UTC time when the segment ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [FailureInfo <IMicrosoftGraphCallRecordsFailureInfo>]: failureInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Reason <String>]: Classification of why a call or portion of a call failed.
    [Stage <String>]: failureStage
  [Media <IMicrosoftGraphCallRecordsMedia[]>]: Media associated with this segment.
    [CalleeDevice <IMicrosoftGraphCallRecordsDeviceInfo>]: deviceInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CaptureDeviceDriver <String>]: Name of the capture device driver used by the media endpoint.
      [CaptureDeviceName <String>]: Name of the capture device used by the media endpoint.
      [CaptureNotFunctioningEventRatio <Single?>]: Fraction of the call that the media endpoint detected the capture device was not working properly.
      [CpuInsufficentEventRatio <Single?>]: Fraction of the call that the media endpoint detected the CPU resources available were insufficient and caused poor quality of the audio sent and received.
      [DeviceClippingEventRatio <Single?>]: Fraction of the call that the media endpoint detected clipping in the captured audio that caused poor quality of the audio being sent.
      [DeviceGlitchEventRatio <Single?>]: Fraction of the call that the media endpoint detected glitches or gaps in the audio played or captured that caused poor quality of the audio being sent or received.
      [HowlingEventCount <Int32?>]: Number of times during the call that the media endpoint detected howling or screeching audio.
      [InitialSignalLevelRootMeanSquare <Single?>]: The root mean square (RMS) of the incoming signal of up to the first 30 seconds of the call.
      [LowSpeechLevelEventRatio <Single?>]: Fraction of the call that the media endpoint detected low speech level that caused poor quality of the audio being sent.
      [LowSpeechToNoiseEventRatio <Single?>]: Fraction of the call that the media endpoint detected low speech to noise level that caused poor quality of the audio being sent.
      [MicGlitchRate <Single?>]: Glitches per 5 minute interval for the media endpoint's microphone.
      [ReceivedNoiseLevel <Int32?>]: Average energy level of received audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
      [ReceivedSignalLevel <Int32?>]: Average energy level of received audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
      [RenderDeviceDriver <String>]: Name of the render device driver used by the media endpoint.
      [RenderDeviceName <String>]: Name of the render device used by the media endpoint.
      [RenderMuteEventRatio <Single?>]: Fraction of the call that media endpoint detected device render is muted.
      [RenderNotFunctioningEventRatio <Single?>]: Fraction of the call that the media endpoint detected the render device was not working properly.
      [RenderZeroVolumeEventRatio <Single?>]: Fraction of the call that media endpoint detected device render volume is set to 0.
      [SentNoiseLevel <Int32?>]: Average energy level of sent audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
      [SentSignalLevel <Int32?>]: Average energy level of sent audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
      [SpeakerGlitchRate <Single?>]: Glitches per 5 minute internal for the media endpoint's loudspeaker.
    [CalleeNetwork <IMicrosoftGraphCallRecordsNetworkInfo>]: networkInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [BandwidthLowEventRatio <Single?>]: Fraction of the call that the media endpoint detected the available bandwidth or bandwidth policy was low enough to cause poor quality of the audio sent.
      [BasicServiceSetIdentifier <String>]: The wireless LAN basic service set identifier of the media endpoint used to connect to the network.
      [ConnectionType <String>]: networkConnectionType
      [DelayEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network delay was significant enough to impact the ability to have real-time two-way communication.
      [DnsSuffix <String>]: DNS suffix associated with the network adapter of the media endpoint.
      [IPAddress <String>]: IP address of the media endpoint.
      [LinkSpeed <Int64?>]: Link speed in bits per second reported by the network adapter used by the media endpoint.
      [MacAddress <String>]: The media access control (MAC) address of the media endpoint's network device.
      [Port <Int32?>]: Network port number used by media endpoint.
      [ReceivedQualityEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network was causing poor quality of the audio received.
      [ReflexiveIPAddress <String>]: IP address of the media endpoint as seen by the media relay server. This is typically the public internet IP address associated to the endpoint.
      [RelayIPAddress <String>]: IP address of the media relay server allocated by the media endpoint.
      [RelayPort <Int32?>]: Network port number allocated on the media relay server by the media endpoint.
      [SentQualityEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network was causing poor quality of the audio sent.
      [Subnet <String>]: Subnet used for media stream by the media endpoint.
      [WifiBand <String>]: wifiBand
      [WifiBatteryCharge <Int32?>]: Estimated remaining battery charge in percentage reported by the media endpoint.
      [WifiChannel <Int32?>]: WiFi channel used by the media endpoint.
      [WifiMicrosoftDriver <String>]: Name of the Microsoft WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
      [WifiMicrosoftDriverVersion <String>]: Version of the Microsoft WiFi driver used by the media endpoint.
      [WifiRadioType <String>]: wifiRadioType
      [WifiSignalStrength <Int32?>]: WiFi signal strength in percentage reported by the media endpoint.
      [WifiVendorDriver <String>]: Name of the WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
      [WifiVendorDriverVersion <String>]: Version of the WiFi driver used by the media endpoint.
    [CallerDevice <IMicrosoftGraphCallRecordsDeviceInfo>]: deviceInfo
    [CallerNetwork <IMicrosoftGraphCallRecordsNetworkInfo>]: networkInfo
    [Label <String>]: How the media was identified during media negotiation stage.
    [Streams <IMicrosoftGraphCallRecordsMediaStream[]>]: Network streams associated with this media.
      [AverageAudioDegradation <Single?>]: Average Network Mean Opinion Score degradation for stream. Represents how much the network loss and jitter has impacted the quality of received audio.
      [AverageAudioNetworkJitter <TimeSpan?>]: Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [AverageBandwidthEstimate <Int64?>]: Average estimated bandwidth available between two endpoints in bits per second.
      [AverageJitter <TimeSpan?>]: Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [AveragePacketLossRate <Single?>]: Average packet loss rate for stream.
      [AverageRatioOfConcealedSamples <Single?>]: Ratio of the number of audio frames with samples generated by packet loss concealment to the total number of audio frames.
      [AverageReceivedFrameRate <Single?>]: Average frames per second received for all video streams computed over the duration of the session.
      [AverageRoundTripTime <TimeSpan?>]: Average network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [AverageVideoFrameLossPercentage <Single?>]: Average percentage of video frames lost as displayed to the user.
      [AverageVideoFrameRate <Single?>]: Average frames per second received for a video stream, computed over the duration of the session.
      [AverageVideoPacketLossRate <Single?>]: Average fraction of packets lost, as specified in [RFC 3550][], computed over the duration of the session.
      [EndDateTime <DateTime?>]: UTC time when the stream ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [LowFrameRateRatio <Single?>]: Fraction of the call where frame rate is less than 7.5 frames per second.
      [LowVideoProcessingCapabilityRatio <Single?>]: Fraction of the call that the client is running less than 70% expected video processing capability.
      [MaxAudioNetworkJitter <TimeSpan?>]: Maximum of audio network jitter computed over each of the 20 second windows during the session, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [MaxJitter <TimeSpan?>]: Maximum jitter for the stream computed as specified in RFC 3550, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [MaxPacketLossRate <Single?>]: Maximum packet loss rate for the stream.
      [MaxRatioOfConcealedSamples <Single?>]: Maximum ratio of packets concealed by the healer.
      [MaxRoundTripTime <TimeSpan?>]: Maximum network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [PacketUtilization <Int64?>]: Packet count for the stream.
      [PostForwardErrorCorrectionPacketLossRate <Single?>]: Packet loss rate after FEC has been applied aggregated across all video streams and codecs.
      [StartDateTime <DateTime?>]: UTC time when the stream started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [StreamDirection <String>]: mediaStreamDirection
      [StreamId <String>]: Unique identifier for the stream.
      [WasMediaBypassed <Boolean?>]: True if the media stream bypassed the Mediation Server and went straight between client and PSTN Gateway/PBX, false otherwise.
  [StartDateTime <DateTime?>]: UTC time when the segment started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcallrecordsession
#>
function New-MgCommunicationCallRecordSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession]
    # session
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, see NOTES section for CALLEE properties and create a hash table.
    ${Callee},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, see NOTES section for CALLER properties and create a hash table.
    ${Caller},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the last user left the session.
    # The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsFailureInfo]
    # failureInfo
    # To construct, see NOTES section for FAILUREINFO properties and create a hash table.
    ${FailureInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of modalities present in the session.
    # Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
    ${Modalities},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSegment[]]
    # The list of segments involved in the session.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SEGMENTS properties and create a hash table.
    ${Segments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the first user joined the session.
    # The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to calls for communications
.Description
Create new navigation property to calls for communications

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphCall>: call
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [CallChainId <String>]: A unique identifier for all the participant calls in a conference or a unique identifier for two participant calls in a P2P call.  This needs to be copied over from Microsoft.Graph.Call.CallChainId.
  [CallOptions <IMicrosoftGraphCallOptions>]: callOptions
    [(Any) <Object>]: This indicates any property can be added to this object.
  [CallRoutes <IMicrosoftGraphCallRoute[]>]: The routing information on how the call was retargeted. Read-only.
    [Final <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [Original <IMicrosoftGraphIdentitySet>]: identitySet
    [RoutingType <String>]: routingType
  [CallbackUri <String>]: The callback URL on which callbacks will be delivered. Must be https.
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [Direction <String>]: callDirection
  [IncomingContext <IMicrosoftGraphIncomingContext>]: incomingContext
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ObservedParticipantId <String>]: The ID of the participant that is under observation. Read-only.
    [OnBehalfOf <IMicrosoftGraphIdentitySet>]: identitySet
    [SourceParticipantId <String>]: The ID of the participant that triggered the incoming call. Read-only.
    [Transferor <IMicrosoftGraphIdentitySet>]: identitySet
  [MediaConfig <IMicrosoftGraphMediaConfig>]: mediaConfig
    [(Any) <Object>]: This indicates any property can be added to this object.
  [MediaState <IMicrosoftGraphCallMediaState>]: callMediaState
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Audio <String>]: mediaState
  [MeetingInfo <IMicrosoftGraphMeetingInfo>]: meetingInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
  [MyParticipantId <String>]: 
  [Operations <IMicrosoftGraphCommsOperation[]>]: Read-only. Nullable.
    [Id <String>]: Read-only.
    [ClientContext <String>]: Unique Client Context string. Max limit is 256 chars.
    [ResultInfo <IMicrosoftGraphResultInfo>]: resultInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Code <Int32?>]: The result code.
      [Message <String>]: The message.
      [Subcode <Int32?>]: The result sub-code.
    [Status <String>]: operationStatus
  [Participants <IMicrosoftGraphParticipant[]>]: Read-only. Nullable.
    [Id <String>]: Read-only.
    [Info <IMicrosoftGraphParticipantInfo>]: participantInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CountryCode <String>]: The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
      [EndpointType <String>]: endpointType
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [LanguageId <String>]: The language culture string. Read-only.
      [ParticipantId <String>]: The participant ID of the participant. Read-only.
      [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
    [IsInLobby <Boolean?>]: true if the participant is in lobby.
    [IsMuted <Boolean?>]: true if the participant is muted (client or server muted).
    [MediaStreams <IMicrosoftGraphMediaStream[]>]: The list of media streams.
      [Direction <String>]: mediaDirection
      [Label <String>]: The media stream label.
      [MediaType <String>]: 
      [ServerMuted <Boolean?>]: If the media is muted by the server.
      [SourceId <String>]: The source ID.
    [Metadata <String>]: A blob of data provided by the participant in the roster.
    [RecordingInfo <IMicrosoftGraphRecordingInfo>]: recordingInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
      [RecordingStatus <String>]: recordingStatus
  [RequestedModalities <String[]>]: 
  [ResultInfo <IMicrosoftGraphResultInfo>]: resultInfo
  [Source <IMicrosoftGraphParticipantInfo>]: participantInfo
  [State <String>]: 
  [Subject <String>]: 
  [Targets <IMicrosoftGraphInvitationParticipantInfo[]>]: 
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [ReplacesCallId <String>]: Optional. The call which the target identity is currently a part of. This call will be dropped once the participant is added.
  [TenantId <String>]: 
  [ToneInfo <IMicrosoftGraphToneInfo>]: toneInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [SequenceId <Int64?>]: An incremental identifier used for ordering DTMF events.
    [Tone <String>]: tone
  [Transcription <IMicrosoftGraphCallTranscriptionInfo>]: callTranscriptionInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [LastModifiedDateTime <DateTime?>]: The state modified time in UTC.
    [State <String>]: callTranscriptionState

CALLROUTES <IMicrosoftGraphCallRoute[]>: The routing information on how the call was retargeted. Read-only.
  [Final <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [Original <IMicrosoftGraphIdentitySet>]: identitySet
  [RoutingType <String>]: routingType

CHATINFO <IMicrosoftGraphChatInfo>: chatInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
  [ReplyChainMessageId <String>]: The ID of the reply message.
  [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.

INCOMINGCONTEXT <IMicrosoftGraphIncomingContext>: incomingContext
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ObservedParticipantId <String>]: The ID of the participant that is under observation. Read-only.
  [OnBehalfOf <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [SourceParticipantId <String>]: The ID of the participant that triggered the incoming call. Read-only.
  [Transferor <IMicrosoftGraphIdentitySet>]: identitySet

MEDIASTATE <IMicrosoftGraphCallMediaState>: callMediaState
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Audio <String>]: mediaState

OPERATIONS <IMicrosoftGraphCommsOperation[]>: Read-only. Nullable.
  [Id <String>]: Read-only.
  [ClientContext <String>]: Unique Client Context string. Max limit is 256 chars.
  [ResultInfo <IMicrosoftGraphResultInfo>]: resultInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Code <Int32?>]: The result code.
    [Message <String>]: The message.
    [Subcode <Int32?>]: The result sub-code.
  [Status <String>]: operationStatus

PARTICIPANTS <IMicrosoftGraphParticipant[]>: Read-only. Nullable.
  [Id <String>]: Read-only.
  [Info <IMicrosoftGraphParticipantInfo>]: participantInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CountryCode <String>]: The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
    [EndpointType <String>]: endpointType
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [LanguageId <String>]: The language culture string. Read-only.
    [ParticipantId <String>]: The participant ID of the participant. Read-only.
    [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
  [IsInLobby <Boolean?>]: true if the participant is in lobby.
  [IsMuted <Boolean?>]: true if the participant is muted (client or server muted).
  [MediaStreams <IMicrosoftGraphMediaStream[]>]: The list of media streams.
    [Direction <String>]: mediaDirection
    [Label <String>]: The media stream label.
    [MediaType <String>]: 
    [ServerMuted <Boolean?>]: If the media is muted by the server.
    [SourceId <String>]: The source ID.
  [Metadata <String>]: A blob of data provided by the participant in the roster.
  [RecordingInfo <IMicrosoftGraphRecordingInfo>]: recordingInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
    [RecordingStatus <String>]: recordingStatus

RESULTINFO <IMicrosoftGraphResultInfo>: resultInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Code <Int32?>]: The result code.
  [Message <String>]: The message.
  [Subcode <Int32?>]: The result sub-code.

SOURCE <IMicrosoftGraphParticipantInfo>: participantInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CountryCode <String>]: The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
  [EndpointType <String>]: endpointType
  [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [LanguageId <String>]: The language culture string. Read-only.
  [ParticipantId <String>]: The participant ID of the participant. Read-only.
  [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.

TARGETS <IMicrosoftGraphInvitationParticipantInfo[]>: .
  [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [ReplacesCallId <String>]: Optional. The call which the target identity is currently a part of. This call will be dropped once the participant is added.

TONEINFO <IMicrosoftGraphToneInfo>: toneInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [SequenceId <Int64?>]: An incremental identifier used for ordering DTMF events.
  [Tone <String>]: tone

TRANSCRIPTION <IMicrosoftGraphCallTranscriptionInfo>: callTranscriptionInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [LastModifiedDateTime <DateTime?>]: The state modified time in UTC.
  [State <String>]: callTranscriptionState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcall
#>
function New-MgCommunicationCall {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall]
    # call
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
    # A unique identifier for all the participant calls in a conference or a unique identifier for two participant calls in a P2P call.
    # This needs to be copied over from Microsoft.Graph.Call.CallChainId.
    ${CallChainId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallOptions]))]
    [System.Collections.Hashtable]
    # callOptions
    ${CallOptions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRoute[]]
    # The routing information on how the call was retargeted.
    # Read-only.
    # To construct, see NOTES section for CALLROUTES properties and create a hash table.
    ${CallRoutes},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The callback URL on which callbacks will be delivered.
    # Must be https.
    ${CallbackUri},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # callDirection
    ${Direction},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncomingContext]
    # incomingContext
    # To construct, see NOTES section for INCOMINGCONTEXT properties and create a hash table.
    ${IncomingContext},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaConfig]))]
    [System.Collections.Hashtable]
    # mediaConfig
    ${MediaConfig},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallMediaState]
    # callMediaState
    # To construct, see NOTES section for MEDIASTATE properties and create a hash table.
    ${MediaState},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingInfo]))]
    [System.Collections.Hashtable]
    # meetingInfo
    ${MeetingInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${MyParticipantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation[]]
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for OPERATIONS properties and create a hash table.
    ${Operations},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant[]]
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${RequestedModalities},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo]
    # participantInfo
    # To construct, see NOTES section for SOURCE properties and create a hash table.
    ${Source},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${State},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo[]]
    # .
    # To construct, see NOTES section for TARGETS properties and create a hash table.
    ${Targets},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${TenantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphToneInfo]
    # toneInfo
    # To construct, see NOTES section for TONEINFO properties and create a hash table.
    ${ToneInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscriptionInfo]
    # callTranscriptionInfo
    # To construct, see NOTES section for TRANSCRIPTION properties and create a hash table.
    ${Transcription},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCall_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCall_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action createOrGet
.Description
Invoke action createOrGet

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [EndDateTime <DateTime?>]: 
  [ExternalId <String>]: 
  [Participants <IMicrosoftGraphMeetingParticipants>]: meetingParticipants
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [Role <String>]: onlineMeetingRole
      [Upn <String>]: User principal name of the participant.
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [StartDateTime <DateTime?>]: 
  [Subject <String>]: 

CHATINFO <IMicrosoftGraphChatInfo>: chatInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
  [ReplyChainMessageId <String>]: The ID of the reply message.
  [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.

PARTICIPANTS <IMicrosoftGraphMeetingParticipants>: meetingParticipants
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [Role <String>]: onlineMeetingRole
    [Upn <String>]: User principal name of the participant.
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationonlinemeeting
#>
function New-MgCommunicationOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ExternalId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeeting_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeeting_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to presences for communications
.Description
Create new navigation property to presences for communications

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPresence>: presence
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Activity <String>]: The supplemental information to a user's availability. Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive, InAMeeting, Offline, OffWork, OutOfOffice, PresenceUnknown, Presenting, UrgentInterruptionsOnly.
  [Availability <String>]: The base presence information for a user. Possible values are Available, AvailableIdle,  Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationpresence
#>
function New-MgCommunicationPresence {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence]
    # presence
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The supplemental information to a user's availability.
    # Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive, InAMeeting, Offline, OffWork, OutOfOffice, PresenceUnknown, Presenting, UrgentInterruptionsOnly.
    ${Activity},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The base presence information for a user.
    # Possible values are Available, AvailableIdle, Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
    ${Availability},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationPresence_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationPresence_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to onlineMeetings for users
.Description
Create new navigation property to onlineMeetings for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

AUDIOCONFERENCING <IMicrosoftGraphAudioConferencing>: audioConferencing
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ConferenceId <String>]: The conference id of the online meeting.
  [DialinUrl <String>]: A URL to the externally-accessible web page that contains dial-in information.
  [TollFreeNumber <String>]: 
  [TollFreeNumbers <String[]>]: List of toll-free numbers that are displayed in the meeting invite.
  [TollNumber <String>]: 
  [TollNumbers <String[]>]: List of toll numbers that are displayed in the meeting invite.

BODYPARAMETER <IMicrosoftGraphOnlineMeeting>: onlineMeeting
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AllowAttendeeToEnableCamera <Boolean?>]: Indicates whether attendees can turn on their camera.
  [AllowAttendeeToEnableMic <Boolean?>]: Indicates whether attendees can turn on their microphone.
  [AllowMeetingChat <String>]: meetingChatMode
  [AllowTeamworkReactions <Boolean?>]: Indicates whether Teams reactions are enabled for the meeting.
  [AllowedPresenters <String>]: onlineMeetingPresenters
  [AttendeeReport <Byte[]>]: The content stream of the attendee report of a live event. Read-only.
  [AudioConferencing <IMicrosoftGraphAudioConferencing>]: audioConferencing
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ConferenceId <String>]: The conference id of the online meeting.
    [DialinUrl <String>]: A URL to the externally-accessible web page that contains dial-in information.
    [TollFreeNumber <String>]: 
    [TollFreeNumbers <String[]>]: List of toll-free numbers that are displayed in the meeting invite.
    [TollNumber <String>]: 
    [TollNumbers <String[]>]: List of toll numbers that are displayed in the meeting invite.
  [BroadcastSettings <IMicrosoftGraphBroadcastMeetingSettings>]: broadcastMeetingSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowedAudience <String>]: broadcastMeetingAudience
    [IsAttendeeReportEnabled <Boolean?>]: Indicates whether attendee report is enabled for this live event. Default value is false.
    [IsQuestionAndAnswerEnabled <Boolean?>]: Indicates whether Q&A is enabled for this live event. Default value is false.
    [IsRecordingEnabled <Boolean?>]: Indicates whether recording is enabled for this live event. Default value is false.
    [IsVideoOnDemandEnabled <Boolean?>]: Indicates whether video on demand is enabled for this live event. Default value is false.
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [CreationDateTime <DateTime?>]: The meeting creation time in UTC. Read-only.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [ExternalId <String>]: The external ID. A custom ID. Optional.
  [IsBroadcast <Boolean?>]: Indicates if this is a live event.
  [IsEntryExitAnnounced <Boolean?>]: Indicates whether to announce when callers join or leave.
  [JoinInformation <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [JoinWebUrl <String>]: The join URL of the online meeting. Read-only.
  [LobbyBypassSettings <IMicrosoftGraphLobbyBypassSettings>]: lobbyBypassSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
    [Scope <String>]: lobbyBypassScope
  [Participants <IMicrosoftGraphMeetingParticipants>]: meetingParticipants
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [Role <String>]: onlineMeetingRole
      [Upn <String>]: User principal name of the participant.
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [RecordAutomatically <Boolean?>]: Indicates whether to record the meeting automatically.
  [StartDateTime <DateTime?>]: The meeting start time in UTC.
  [Subject <String>]: The subject of the online meeting.
  [VideoTeleconferenceId <String>]: The video teleconferencing ID. Read-only.

BROADCASTSETTINGS <IMicrosoftGraphBroadcastMeetingSettings>: broadcastMeetingSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AllowedAudience <String>]: broadcastMeetingAudience
  [IsAttendeeReportEnabled <Boolean?>]: Indicates whether attendee report is enabled for this live event. Default value is false.
  [IsQuestionAndAnswerEnabled <Boolean?>]: Indicates whether Q&A is enabled for this live event. Default value is false.
  [IsRecordingEnabled <Boolean?>]: Indicates whether recording is enabled for this live event. Default value is false.
  [IsVideoOnDemandEnabled <Boolean?>]: Indicates whether video on demand is enabled for this live event. Default value is false.

CHATINFO <IMicrosoftGraphChatInfo>: chatInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
  [ReplyChainMessageId <String>]: The ID of the reply message.
  [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

JOININFORMATION <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType

LOBBYBYPASSSETTINGS <IMicrosoftGraphLobbyBypassSettings>: lobbyBypassSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
  [Scope <String>]: lobbyBypassScope

PARTICIPANTS <IMicrosoftGraphMeetingParticipants>: meetingParticipants
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [Role <String>]: onlineMeetingRole
    [Upn <String>]: User principal name of the participant.
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mguseronlinemeeting
#>
function New-MgUserOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting]
    # onlineMeeting
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
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingChatMode
    ${AllowMeetingChat},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

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
    # Indicates if this is a live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The join URL of the online meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The video teleconferencing ID.
    # Read-only.
    ${VideoTeleconferenceId},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcalloperation
#>
function Remove-MgCommunicationCallOperation {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of commsOperation
    ${CommsOperationId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallOperation_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallOperation_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcallparticipant
#>
function Remove-MgCommunicationCallParticipant {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallParticipant_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallParticipant_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
List of sessions involved in the call.
Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant.
Read-only.
Nullable.
.Description
List of sessions involved in the call.
Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcallrecordsession
#>
function Remove-MgCommunicationCallRecordSession {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of session
    ${SessionId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallRecordSession_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallRecordSession_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property calls for communications
.Description
Delete navigation property calls for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcall
#>
function Remove-MgCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCall_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCall_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property onlineMeetings for communications
.Description
Delete navigation property onlineMeetings for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeeting
#>
function Remove-MgCommunicationOnlineMeeting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeeting_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeeting_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property presences for communications
.Description
Delete navigation property presences for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationpresence
#>
function Remove-MgCommunicationPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationPresence_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationPresence_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property onlineMeetings for users
.Description
Delete navigation property onlineMeetings for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeeting
#>
function Remove-MgUserOnlineMeeting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeeting_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeeting_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property presence for users
.Description
Delete navigation property presence for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguserpresence
#>
function Remove-MgUserPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserPresence_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserPresence_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action changeScreenSharingRole
.Description
Invoke action changeScreenSharingRole

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsOj95ZpCommunicationsCallsCallIdMicrosoftGraphChangescreensharingrolePostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsOj95ZpCommunicationsCallsCallIdMicrosoftGraphChangescreensharingrolePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Role <String>]: screenSharingRole

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/rename-mgcommunicationcallscreensharingrole
#>
function Rename-MgCommunicationCallScreenSharingRole {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ChangeExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Change', Mandatory)]
    [Parameter(ParameterSetName='ChangeExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='ChangeViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Change', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ChangeViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsOj95ZpCommunicationsCallsCallIdMicrosoftGraphChangescreensharingrolePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ChangeExpanded')]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ChangeExpanded')]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # screenSharingRole
    ${Role},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Change = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_Change';
            ChangeExpanded = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_ChangeExpanded';
            ChangeViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_ChangeViaIdentity';
            ChangeViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_ChangeViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update media content for the navigation property onlineMeetings in communications
.Description
Update media content for the navigation property onlineMeetings in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mgcommunicationonlinemeetingattendeereport
#>
function Set-MgCommunicationOnlineMeetingAttendeeReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.IO.Stream]
    # .
    ${BodyParameter},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # The path to the file to upload.
    # This should include a path and file name.
    # If you omit the path, the current location will be used.
    ${InFile},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingAttendeeReport_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingAttendeeReport_SetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action setPresence
.Description
Invoke action setPresence

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsTm7IsmCommunicationsPresencesPresenceIdMicrosoftGraphSetpresencePostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsTm7IsmCommunicationsPresencesPresenceIdMicrosoftGraphSetpresencePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Activity <String>]: 
  [Availability <String>]: 
  [ExpirationDuration <TimeSpan?>]: 
  [SessionId <String>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mgcommunicationpresence
#>
function Set-MgCommunicationPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsTm7IsmCommunicationsPresencesPresenceIdMicrosoftGraphSetpresencePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Activity},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Availability},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # .
    ${ExpirationDuration},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_Set';
            SetExpanded = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_SetExpanded';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_SetViaIdentity';
            SetViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_SetViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update media content for the navigation property onlineMeetings in users
.Description
Update media content for the navigation property onlineMeetings in users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mguseronlinemeetingattendeereport
#>
function Set-MgUserOnlineMeetingAttendeeReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.IO.Stream]
    # .
    ${BodyParameter},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # The path to the file to upload.
    # This should include a path and file name.
    # If you omit the path, the current location will be used.
    ${InFile},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingAttendeeReport_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingAttendeeReport_SetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action startHoldMusic
.Description
Invoke action startHoldMusic

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsKtcw9WCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStartholdmusicPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphStartHoldMusicOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsKtcw9WCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStartholdmusicPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 
  [CustomPrompt <IMicrosoftGraphPrompt>]: prompt
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/start-mgcommunicationcallparticipantholdmusic
#>
function Start-MgCommunicationCallParticipantHoldMusic {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphStartHoldMusicOperation])]
[CmdletBinding(DefaultParameterSetName='StartExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Start', Mandatory)]
    [Parameter(ParameterSetName='StartExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Start', Mandatory)]
    [Parameter(ParameterSetName='StartExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='StartViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StartViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Start', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StartViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsKtcw9WCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStartholdmusicPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='StartExpanded')]
    [Parameter(ParameterSetName='StartViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='StartExpanded')]
    [Parameter(ParameterSetName='StartViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='StartExpanded')]
    [Parameter(ParameterSetName='StartViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrompt]))]
    [System.Collections.Hashtable]
    # prompt
    ${CustomPrompt},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Start = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_Start';
            StartExpanded = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_StartExpanded';
            StartViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_StartViaIdentity';
            StartViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_StartViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action cancelMediaProcessing
.Description
Invoke action cancelMediaProcessing

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsYp37FjCommunicationsCallsCallIdMicrosoftGraphCancelmediaprocessingPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCancelMediaProcessingOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsYp37FjCommunicationsCallsCallIdMicrosoftGraphCancelmediaprocessingPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/stop-mgcommunicationcallmediaprocessing
#>
function Stop-MgCommunicationCallMediaProcessing {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCancelMediaProcessingOperation])]
[CmdletBinding(DefaultParameterSetName='CancelExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Cancel', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CancelViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Cancel', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsYp37FjCommunicationsCallsCallIdMicrosoftGraphCancelmediaprocessingPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CancelExpanded')]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CancelExpanded')]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Cancel = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_Cancel';
            CancelExpanded = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_CancelExpanded';
            CancelViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_CancelViaIdentity';
            CancelViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_CancelViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action stopHoldMusic
.Description
Invoke action stopHoldMusic

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1AuzqgwCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStopholdmusicPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphStopHoldMusicOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1AuzqgwCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStopholdmusicPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/stop-mgcommunicationcallparticipantholdmusic
#>
function Stop-MgCommunicationCallParticipantHoldMusic {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphStopHoldMusicOperation])]
[CmdletBinding(DefaultParameterSetName='StopExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Stop', Mandatory)]
    [Parameter(ParameterSetName='StopExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Stop', Mandatory)]
    [Parameter(ParameterSetName='StopExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='StopViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StopViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Stop', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StopViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1AuzqgwCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStopholdmusicPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='StopExpanded')]
    [Parameter(ParameterSetName='StopViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='StopExpanded')]
    [Parameter(ParameterSetName='StopViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Stop = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_Stop';
            StopExpanded = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_StopExpanded';
            StopViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_StopViaIdentity';
            StopViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_StopViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphCommsOperation>: commsOperation
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ClientContext <String>]: Unique Client Context string. Max limit is 256 chars.
  [ResultInfo <IMicrosoftGraphResultInfo>]: resultInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Code <Int32?>]: The result code.
    [Message <String>]: The message.
    [Subcode <Int32?>]: The result sub-code.
  [Status <String>]: operationStatus

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

RESULTINFO <IMicrosoftGraphResultInfo>: resultInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Code <Int32?>]: The result code.
  [Message <String>]: The message.
  [Subcode <Int32?>]: The result sub-code.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcalloperation
#>
function Update-MgCommunicationCallOperation {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of commsOperation
    ${CommsOperationId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation]
    # commsOperation
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
    # Unique Client Context string.
    # Max limit is 256 chars.
    ${ClientContext},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # operationStatus
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphParticipant>: participant
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Info <IMicrosoftGraphParticipantInfo>]: participantInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CountryCode <String>]: The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
    [EndpointType <String>]: endpointType
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [LanguageId <String>]: The language culture string. Read-only.
    [ParticipantId <String>]: The participant ID of the participant. Read-only.
    [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
  [IsInLobby <Boolean?>]: true if the participant is in lobby.
  [IsMuted <Boolean?>]: true if the participant is muted (client or server muted).
  [MediaStreams <IMicrosoftGraphMediaStream[]>]: The list of media streams.
    [Direction <String>]: mediaDirection
    [Label <String>]: The media stream label.
    [MediaType <String>]: 
    [ServerMuted <Boolean?>]: If the media is muted by the server.
    [SourceId <String>]: The source ID.
  [Metadata <String>]: A blob of data provided by the participant in the roster.
  [RecordingInfo <IMicrosoftGraphRecordingInfo>]: recordingInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
    [RecordingStatus <String>]: recordingStatus

INFO <IMicrosoftGraphParticipantInfo>: participantInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CountryCode <String>]: The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
  [EndpointType <String>]: endpointType
  [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [LanguageId <String>]: The language culture string. Read-only.
  [ParticipantId <String>]: The participant ID of the participant. Read-only.
  [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

MEDIASTREAMS <IMicrosoftGraphMediaStream[]>: The list of media streams.
  [Direction <String>]: mediaDirection
  [Label <String>]: The media stream label.
  [MediaType <String>]: 
  [ServerMuted <Boolean?>]: If the media is muted by the server.
  [SourceId <String>]: The source ID.

RECORDINGINFO <IMicrosoftGraphRecordingInfo>: recordingInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Application <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Device <IMicrosoftGraphIdentity>]: identity
    [User <IMicrosoftGraphIdentity>]: identity
  [RecordingStatus <String>]: recordingStatus
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcallparticipant
#>
function Update-MgCommunicationCallParticipant {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant]
    # participant
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo]
    # participantInfo
    # To construct, see NOTES section for INFO properties and create a hash table.
    ${Info},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is in lobby.
    ${IsInLobby},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is muted (client or server muted).
    ${IsMuted},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaStream[]]
    # The list of media streams.
    # To construct, see NOTES section for MEDIASTREAMS properties and create a hash table.
    ${MediaStreams},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A blob of data provided by the participant in the roster.
    ${Metadata},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordingInfo]
    # recordingInfo
    # To construct, see NOTES section for RECORDINGINFO properties and create a hash table.
    ${RecordingInfo},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action updateRecordingStatus
.Description
Invoke action updateRecordingStatus

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsEipedyCommunicationsCallsCallIdMicrosoftGraphUpdaterecordingstatusPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUpdateRecordingStatusOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsEipedyCommunicationsCallsCallIdMicrosoftGraphUpdaterecordingstatusPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 
  [Status <String>]: recordingStatus

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcallrecordingstatus
#>
function Update-MgCommunicationCallRecordingStatus {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUpdateRecordingStatusOperation])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsEipedyCommunicationsCallsCallIdMicrosoftGraphUpdaterecordingstatusPostRequestbodyContentApplicationJsonSchema]
    # .
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
    ${ClientContext},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # recordingStatus
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
List of sessions involved in the call.
Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant.
Read-only.
Nullable.
.Description
List of sessions involved in the call.
Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphCallRecordsSession>: session
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Callee <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
    [(Any) <Object>]: This indicates any property can be added to this object.
    [UserAgent <IMicrosoftGraphCallRecordsUserAgent>]: userAgent
      [(Any) <Object>]: This indicates any property can be added to this object.
      [ApplicationVersion <String>]: Identifies the version of application software used by this endpoint.
      [HeaderValue <String>]: User-agent header value reported by this endpoint.
  [Caller <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
  [EndDateTime <DateTime?>]: UTC time when the last user left the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [FailureInfo <IMicrosoftGraphCallRecordsFailureInfo>]: failureInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Reason <String>]: Classification of why a call or portion of a call failed.
    [Stage <String>]: failureStage
  [Modalities <String[]>]: List of modalities present in the session. Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
  [Segments <IMicrosoftGraphCallRecordsSegment[]>]: The list of segments involved in the session. Read-only. Nullable.
    [Id <String>]: Read-only.
    [Callee <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
    [Caller <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
    [EndDateTime <DateTime?>]: UTC time when the segment ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [FailureInfo <IMicrosoftGraphCallRecordsFailureInfo>]: failureInfo
    [Media <IMicrosoftGraphCallRecordsMedia[]>]: Media associated with this segment.
      [CalleeDevice <IMicrosoftGraphCallRecordsDeviceInfo>]: deviceInfo
        [(Any) <Object>]: This indicates any property can be added to this object.
        [CaptureDeviceDriver <String>]: Name of the capture device driver used by the media endpoint.
        [CaptureDeviceName <String>]: Name of the capture device used by the media endpoint.
        [CaptureNotFunctioningEventRatio <Single?>]: Fraction of the call that the media endpoint detected the capture device was not working properly.
        [CpuInsufficentEventRatio <Single?>]: Fraction of the call that the media endpoint detected the CPU resources available were insufficient and caused poor quality of the audio sent and received.
        [DeviceClippingEventRatio <Single?>]: Fraction of the call that the media endpoint detected clipping in the captured audio that caused poor quality of the audio being sent.
        [DeviceGlitchEventRatio <Single?>]: Fraction of the call that the media endpoint detected glitches or gaps in the audio played or captured that caused poor quality of the audio being sent or received.
        [HowlingEventCount <Int32?>]: Number of times during the call that the media endpoint detected howling or screeching audio.
        [InitialSignalLevelRootMeanSquare <Single?>]: The root mean square (RMS) of the incoming signal of up to the first 30 seconds of the call.
        [LowSpeechLevelEventRatio <Single?>]: Fraction of the call that the media endpoint detected low speech level that caused poor quality of the audio being sent.
        [LowSpeechToNoiseEventRatio <Single?>]: Fraction of the call that the media endpoint detected low speech to noise level that caused poor quality of the audio being sent.
        [MicGlitchRate <Single?>]: Glitches per 5 minute interval for the media endpoint's microphone.
        [ReceivedNoiseLevel <Int32?>]: Average energy level of received audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
        [ReceivedSignalLevel <Int32?>]: Average energy level of received audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
        [RenderDeviceDriver <String>]: Name of the render device driver used by the media endpoint.
        [RenderDeviceName <String>]: Name of the render device used by the media endpoint.
        [RenderMuteEventRatio <Single?>]: Fraction of the call that media endpoint detected device render is muted.
        [RenderNotFunctioningEventRatio <Single?>]: Fraction of the call that the media endpoint detected the render device was not working properly.
        [RenderZeroVolumeEventRatio <Single?>]: Fraction of the call that media endpoint detected device render volume is set to 0.
        [SentNoiseLevel <Int32?>]: Average energy level of sent audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
        [SentSignalLevel <Int32?>]: Average energy level of sent audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
        [SpeakerGlitchRate <Single?>]: Glitches per 5 minute internal for the media endpoint's loudspeaker.
      [CalleeNetwork <IMicrosoftGraphCallRecordsNetworkInfo>]: networkInfo
        [(Any) <Object>]: This indicates any property can be added to this object.
        [BandwidthLowEventRatio <Single?>]: Fraction of the call that the media endpoint detected the available bandwidth or bandwidth policy was low enough to cause poor quality of the audio sent.
        [BasicServiceSetIdentifier <String>]: The wireless LAN basic service set identifier of the media endpoint used to connect to the network.
        [ConnectionType <String>]: networkConnectionType
        [DelayEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network delay was significant enough to impact the ability to have real-time two-way communication.
        [DnsSuffix <String>]: DNS suffix associated with the network adapter of the media endpoint.
        [IPAddress <String>]: IP address of the media endpoint.
        [LinkSpeed <Int64?>]: Link speed in bits per second reported by the network adapter used by the media endpoint.
        [MacAddress <String>]: The media access control (MAC) address of the media endpoint's network device.
        [Port <Int32?>]: Network port number used by media endpoint.
        [ReceivedQualityEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network was causing poor quality of the audio received.
        [ReflexiveIPAddress <String>]: IP address of the media endpoint as seen by the media relay server. This is typically the public internet IP address associated to the endpoint.
        [RelayIPAddress <String>]: IP address of the media relay server allocated by the media endpoint.
        [RelayPort <Int32?>]: Network port number allocated on the media relay server by the media endpoint.
        [SentQualityEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network was causing poor quality of the audio sent.
        [Subnet <String>]: Subnet used for media stream by the media endpoint.
        [WifiBand <String>]: wifiBand
        [WifiBatteryCharge <Int32?>]: Estimated remaining battery charge in percentage reported by the media endpoint.
        [WifiChannel <Int32?>]: WiFi channel used by the media endpoint.
        [WifiMicrosoftDriver <String>]: Name of the Microsoft WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
        [WifiMicrosoftDriverVersion <String>]: Version of the Microsoft WiFi driver used by the media endpoint.
        [WifiRadioType <String>]: wifiRadioType
        [WifiSignalStrength <Int32?>]: WiFi signal strength in percentage reported by the media endpoint.
        [WifiVendorDriver <String>]: Name of the WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
        [WifiVendorDriverVersion <String>]: Version of the WiFi driver used by the media endpoint.
      [CallerDevice <IMicrosoftGraphCallRecordsDeviceInfo>]: deviceInfo
      [CallerNetwork <IMicrosoftGraphCallRecordsNetworkInfo>]: networkInfo
      [Label <String>]: How the media was identified during media negotiation stage.
      [Streams <IMicrosoftGraphCallRecordsMediaStream[]>]: Network streams associated with this media.
        [AverageAudioDegradation <Single?>]: Average Network Mean Opinion Score degradation for stream. Represents how much the network loss and jitter has impacted the quality of received audio.
        [AverageAudioNetworkJitter <TimeSpan?>]: Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [AverageBandwidthEstimate <Int64?>]: Average estimated bandwidth available between two endpoints in bits per second.
        [AverageJitter <TimeSpan?>]: Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [AveragePacketLossRate <Single?>]: Average packet loss rate for stream.
        [AverageRatioOfConcealedSamples <Single?>]: Ratio of the number of audio frames with samples generated by packet loss concealment to the total number of audio frames.
        [AverageReceivedFrameRate <Single?>]: Average frames per second received for all video streams computed over the duration of the session.
        [AverageRoundTripTime <TimeSpan?>]: Average network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [AverageVideoFrameLossPercentage <Single?>]: Average percentage of video frames lost as displayed to the user.
        [AverageVideoFrameRate <Single?>]: Average frames per second received for a video stream, computed over the duration of the session.
        [AverageVideoPacketLossRate <Single?>]: Average fraction of packets lost, as specified in [RFC 3550][], computed over the duration of the session.
        [EndDateTime <DateTime?>]: UTC time when the stream ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [LowFrameRateRatio <Single?>]: Fraction of the call where frame rate is less than 7.5 frames per second.
        [LowVideoProcessingCapabilityRatio <Single?>]: Fraction of the call that the client is running less than 70% expected video processing capability.
        [MaxAudioNetworkJitter <TimeSpan?>]: Maximum of audio network jitter computed over each of the 20 second windows during the session, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [MaxJitter <TimeSpan?>]: Maximum jitter for the stream computed as specified in RFC 3550, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [MaxPacketLossRate <Single?>]: Maximum packet loss rate for the stream.
        [MaxRatioOfConcealedSamples <Single?>]: Maximum ratio of packets concealed by the healer.
        [MaxRoundTripTime <TimeSpan?>]: Maximum network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        [PacketUtilization <Int64?>]: Packet count for the stream.
        [PostForwardErrorCorrectionPacketLossRate <Single?>]: Packet loss rate after FEC has been applied aggregated across all video streams and codecs.
        [StartDateTime <DateTime?>]: UTC time when the stream started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        [StreamDirection <String>]: mediaStreamDirection
        [StreamId <String>]: Unique identifier for the stream.
        [WasMediaBypassed <Boolean?>]: True if the media stream bypassed the Mediation Server and went straight between client and PSTN Gateway/PBX, false otherwise.
    [StartDateTime <DateTime?>]: UTC time when the segment started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [StartDateTime <DateTime?>]: UTC time when the first user joined the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z

CALLEE <IMicrosoftGraphCallRecordsEndpoint>: endpoint
  [(Any) <Object>]: This indicates any property can be added to this object.
  [UserAgent <IMicrosoftGraphCallRecordsUserAgent>]: userAgent
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ApplicationVersion <String>]: Identifies the version of application software used by this endpoint.
    [HeaderValue <String>]: User-agent header value reported by this endpoint.

CALLER <IMicrosoftGraphCallRecordsEndpoint>: endpoint
  [(Any) <Object>]: This indicates any property can be added to this object.
  [UserAgent <IMicrosoftGraphCallRecordsUserAgent>]: userAgent
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ApplicationVersion <String>]: Identifies the version of application software used by this endpoint.
    [HeaderValue <String>]: User-agent header value reported by this endpoint.

FAILUREINFO <IMicrosoftGraphCallRecordsFailureInfo>: failureInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Reason <String>]: Classification of why a call or portion of a call failed.
  [Stage <String>]: failureStage

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

SEGMENTS <IMicrosoftGraphCallRecordsSegment[]>: The list of segments involved in the session. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Callee <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
    [(Any) <Object>]: This indicates any property can be added to this object.
    [UserAgent <IMicrosoftGraphCallRecordsUserAgent>]: userAgent
      [(Any) <Object>]: This indicates any property can be added to this object.
      [ApplicationVersion <String>]: Identifies the version of application software used by this endpoint.
      [HeaderValue <String>]: User-agent header value reported by this endpoint.
  [Caller <IMicrosoftGraphCallRecordsEndpoint>]: endpoint
  [EndDateTime <DateTime?>]: UTC time when the segment ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [FailureInfo <IMicrosoftGraphCallRecordsFailureInfo>]: failureInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Reason <String>]: Classification of why a call or portion of a call failed.
    [Stage <String>]: failureStage
  [Media <IMicrosoftGraphCallRecordsMedia[]>]: Media associated with this segment.
    [CalleeDevice <IMicrosoftGraphCallRecordsDeviceInfo>]: deviceInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CaptureDeviceDriver <String>]: Name of the capture device driver used by the media endpoint.
      [CaptureDeviceName <String>]: Name of the capture device used by the media endpoint.
      [CaptureNotFunctioningEventRatio <Single?>]: Fraction of the call that the media endpoint detected the capture device was not working properly.
      [CpuInsufficentEventRatio <Single?>]: Fraction of the call that the media endpoint detected the CPU resources available were insufficient and caused poor quality of the audio sent and received.
      [DeviceClippingEventRatio <Single?>]: Fraction of the call that the media endpoint detected clipping in the captured audio that caused poor quality of the audio being sent.
      [DeviceGlitchEventRatio <Single?>]: Fraction of the call that the media endpoint detected glitches or gaps in the audio played or captured that caused poor quality of the audio being sent or received.
      [HowlingEventCount <Int32?>]: Number of times during the call that the media endpoint detected howling or screeching audio.
      [InitialSignalLevelRootMeanSquare <Single?>]: The root mean square (RMS) of the incoming signal of up to the first 30 seconds of the call.
      [LowSpeechLevelEventRatio <Single?>]: Fraction of the call that the media endpoint detected low speech level that caused poor quality of the audio being sent.
      [LowSpeechToNoiseEventRatio <Single?>]: Fraction of the call that the media endpoint detected low speech to noise level that caused poor quality of the audio being sent.
      [MicGlitchRate <Single?>]: Glitches per 5 minute interval for the media endpoint's microphone.
      [ReceivedNoiseLevel <Int32?>]: Average energy level of received audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
      [ReceivedSignalLevel <Int32?>]: Average energy level of received audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
      [RenderDeviceDriver <String>]: Name of the render device driver used by the media endpoint.
      [RenderDeviceName <String>]: Name of the render device used by the media endpoint.
      [RenderMuteEventRatio <Single?>]: Fraction of the call that media endpoint detected device render is muted.
      [RenderNotFunctioningEventRatio <Single?>]: Fraction of the call that the media endpoint detected the render device was not working properly.
      [RenderZeroVolumeEventRatio <Single?>]: Fraction of the call that media endpoint detected device render volume is set to 0.
      [SentNoiseLevel <Int32?>]: Average energy level of sent audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
      [SentSignalLevel <Int32?>]: Average energy level of sent audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
      [SpeakerGlitchRate <Single?>]: Glitches per 5 minute internal for the media endpoint's loudspeaker.
    [CalleeNetwork <IMicrosoftGraphCallRecordsNetworkInfo>]: networkInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [BandwidthLowEventRatio <Single?>]: Fraction of the call that the media endpoint detected the available bandwidth or bandwidth policy was low enough to cause poor quality of the audio sent.
      [BasicServiceSetIdentifier <String>]: The wireless LAN basic service set identifier of the media endpoint used to connect to the network.
      [ConnectionType <String>]: networkConnectionType
      [DelayEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network delay was significant enough to impact the ability to have real-time two-way communication.
      [DnsSuffix <String>]: DNS suffix associated with the network adapter of the media endpoint.
      [IPAddress <String>]: IP address of the media endpoint.
      [LinkSpeed <Int64?>]: Link speed in bits per second reported by the network adapter used by the media endpoint.
      [MacAddress <String>]: The media access control (MAC) address of the media endpoint's network device.
      [Port <Int32?>]: Network port number used by media endpoint.
      [ReceivedQualityEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network was causing poor quality of the audio received.
      [ReflexiveIPAddress <String>]: IP address of the media endpoint as seen by the media relay server. This is typically the public internet IP address associated to the endpoint.
      [RelayIPAddress <String>]: IP address of the media relay server allocated by the media endpoint.
      [RelayPort <Int32?>]: Network port number allocated on the media relay server by the media endpoint.
      [SentQualityEventRatio <Single?>]: Fraction of the call that the media endpoint detected the network was causing poor quality of the audio sent.
      [Subnet <String>]: Subnet used for media stream by the media endpoint.
      [WifiBand <String>]: wifiBand
      [WifiBatteryCharge <Int32?>]: Estimated remaining battery charge in percentage reported by the media endpoint.
      [WifiChannel <Int32?>]: WiFi channel used by the media endpoint.
      [WifiMicrosoftDriver <String>]: Name of the Microsoft WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
      [WifiMicrosoftDriverVersion <String>]: Version of the Microsoft WiFi driver used by the media endpoint.
      [WifiRadioType <String>]: wifiRadioType
      [WifiSignalStrength <Int32?>]: WiFi signal strength in percentage reported by the media endpoint.
      [WifiVendorDriver <String>]: Name of the WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
      [WifiVendorDriverVersion <String>]: Version of the WiFi driver used by the media endpoint.
    [CallerDevice <IMicrosoftGraphCallRecordsDeviceInfo>]: deviceInfo
    [CallerNetwork <IMicrosoftGraphCallRecordsNetworkInfo>]: networkInfo
    [Label <String>]: How the media was identified during media negotiation stage.
    [Streams <IMicrosoftGraphCallRecordsMediaStream[]>]: Network streams associated with this media.
      [AverageAudioDegradation <Single?>]: Average Network Mean Opinion Score degradation for stream. Represents how much the network loss and jitter has impacted the quality of received audio.
      [AverageAudioNetworkJitter <TimeSpan?>]: Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [AverageBandwidthEstimate <Int64?>]: Average estimated bandwidth available between two endpoints in bits per second.
      [AverageJitter <TimeSpan?>]: Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [AveragePacketLossRate <Single?>]: Average packet loss rate for stream.
      [AverageRatioOfConcealedSamples <Single?>]: Ratio of the number of audio frames with samples generated by packet loss concealment to the total number of audio frames.
      [AverageReceivedFrameRate <Single?>]: Average frames per second received for all video streams computed over the duration of the session.
      [AverageRoundTripTime <TimeSpan?>]: Average network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [AverageVideoFrameLossPercentage <Single?>]: Average percentage of video frames lost as displayed to the user.
      [AverageVideoFrameRate <Single?>]: Average frames per second received for a video stream, computed over the duration of the session.
      [AverageVideoPacketLossRate <Single?>]: Average fraction of packets lost, as specified in [RFC 3550][], computed over the duration of the session.
      [EndDateTime <DateTime?>]: UTC time when the stream ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [LowFrameRateRatio <Single?>]: Fraction of the call where frame rate is less than 7.5 frames per second.
      [LowVideoProcessingCapabilityRatio <Single?>]: Fraction of the call that the client is running less than 70% expected video processing capability.
      [MaxAudioNetworkJitter <TimeSpan?>]: Maximum of audio network jitter computed over each of the 20 second windows during the session, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [MaxJitter <TimeSpan?>]: Maximum jitter for the stream computed as specified in RFC 3550, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [MaxPacketLossRate <Single?>]: Maximum packet loss rate for the stream.
      [MaxRatioOfConcealedSamples <Single?>]: Maximum ratio of packets concealed by the healer.
      [MaxRoundTripTime <TimeSpan?>]: Maximum network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
      [PacketUtilization <Int64?>]: Packet count for the stream.
      [PostForwardErrorCorrectionPacketLossRate <Single?>]: Packet loss rate after FEC has been applied aggregated across all video streams and codecs.
      [StartDateTime <DateTime?>]: UTC time when the stream started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [StreamDirection <String>]: mediaStreamDirection
      [StreamId <String>]: Unique identifier for the stream.
      [WasMediaBypassed <Boolean?>]: True if the media stream bypassed the Mediation Server and went straight between client and PSTN Gateway/PBX, false otherwise.
  [StartDateTime <DateTime?>]: UTC time when the segment started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcallrecordsession
#>
function Update-MgCommunicationCallRecordSession {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of session
    ${SessionId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession]
    # session
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, see NOTES section for CALLEE properties and create a hash table.
    ${Callee},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, see NOTES section for CALLER properties and create a hash table.
    ${Caller},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the last user left the session.
    # The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsFailureInfo]
    # failureInfo
    # To construct, see NOTES section for FAILUREINFO properties and create a hash table.
    ${FailureInfo},

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
    # List of modalities present in the session.
    # Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
    ${Modalities},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSegment[]]
    # The list of segments involved in the session.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SEGMENTS properties and create a hash table.
    ${Segments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the first user joined the session.
    # The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property onlineMeetings in communications
.Description
Update the navigation property onlineMeetings in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

AUDIOCONFERENCING <IMicrosoftGraphAudioConferencing>: audioConferencing
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ConferenceId <String>]: The conference id of the online meeting.
  [DialinUrl <String>]: A URL to the externally-accessible web page that contains dial-in information.
  [TollFreeNumber <String>]: 
  [TollFreeNumbers <String[]>]: List of toll-free numbers that are displayed in the meeting invite.
  [TollNumber <String>]: 
  [TollNumbers <String[]>]: List of toll numbers that are displayed in the meeting invite.

BODYPARAMETER <IMicrosoftGraphOnlineMeeting>: onlineMeeting
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AllowAttendeeToEnableCamera <Boolean?>]: Indicates whether attendees can turn on their camera.
  [AllowAttendeeToEnableMic <Boolean?>]: Indicates whether attendees can turn on their microphone.
  [AllowMeetingChat <String>]: meetingChatMode
  [AllowTeamworkReactions <Boolean?>]: Indicates whether Teams reactions are enabled for the meeting.
  [AllowedPresenters <String>]: onlineMeetingPresenters
  [AttendeeReport <Byte[]>]: The content stream of the attendee report of a live event. Read-only.
  [AudioConferencing <IMicrosoftGraphAudioConferencing>]: audioConferencing
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ConferenceId <String>]: The conference id of the online meeting.
    [DialinUrl <String>]: A URL to the externally-accessible web page that contains dial-in information.
    [TollFreeNumber <String>]: 
    [TollFreeNumbers <String[]>]: List of toll-free numbers that are displayed in the meeting invite.
    [TollNumber <String>]: 
    [TollNumbers <String[]>]: List of toll numbers that are displayed in the meeting invite.
  [BroadcastSettings <IMicrosoftGraphBroadcastMeetingSettings>]: broadcastMeetingSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowedAudience <String>]: broadcastMeetingAudience
    [IsAttendeeReportEnabled <Boolean?>]: Indicates whether attendee report is enabled for this live event. Default value is false.
    [IsQuestionAndAnswerEnabled <Boolean?>]: Indicates whether Q&A is enabled for this live event. Default value is false.
    [IsRecordingEnabled <Boolean?>]: Indicates whether recording is enabled for this live event. Default value is false.
    [IsVideoOnDemandEnabled <Boolean?>]: Indicates whether video on demand is enabled for this live event. Default value is false.
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [CreationDateTime <DateTime?>]: The meeting creation time in UTC. Read-only.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [ExternalId <String>]: The external ID. A custom ID. Optional.
  [IsBroadcast <Boolean?>]: Indicates if this is a live event.
  [IsEntryExitAnnounced <Boolean?>]: Indicates whether to announce when callers join or leave.
  [JoinInformation <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [JoinWebUrl <String>]: The join URL of the online meeting. Read-only.
  [LobbyBypassSettings <IMicrosoftGraphLobbyBypassSettings>]: lobbyBypassSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
    [Scope <String>]: lobbyBypassScope
  [Participants <IMicrosoftGraphMeetingParticipants>]: meetingParticipants
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [Role <String>]: onlineMeetingRole
      [Upn <String>]: User principal name of the participant.
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [RecordAutomatically <Boolean?>]: Indicates whether to record the meeting automatically.
  [StartDateTime <DateTime?>]: The meeting start time in UTC.
  [Subject <String>]: The subject of the online meeting.
  [VideoTeleconferenceId <String>]: The video teleconferencing ID. Read-only.

BROADCASTSETTINGS <IMicrosoftGraphBroadcastMeetingSettings>: broadcastMeetingSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AllowedAudience <String>]: broadcastMeetingAudience
  [IsAttendeeReportEnabled <Boolean?>]: Indicates whether attendee report is enabled for this live event. Default value is false.
  [IsQuestionAndAnswerEnabled <Boolean?>]: Indicates whether Q&A is enabled for this live event. Default value is false.
  [IsRecordingEnabled <Boolean?>]: Indicates whether recording is enabled for this live event. Default value is false.
  [IsVideoOnDemandEnabled <Boolean?>]: Indicates whether video on demand is enabled for this live event. Default value is false.

CHATINFO <IMicrosoftGraphChatInfo>: chatInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
  [ReplyChainMessageId <String>]: The ID of the reply message.
  [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

JOININFORMATION <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType

LOBBYBYPASSSETTINGS <IMicrosoftGraphLobbyBypassSettings>: lobbyBypassSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
  [Scope <String>]: lobbyBypassScope

PARTICIPANTS <IMicrosoftGraphMeetingParticipants>: meetingParticipants
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [Role <String>]: onlineMeetingRole
    [Upn <String>]: User principal name of the participant.
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeeting
#>
function Update-MgCommunicationOnlineMeeting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting]
    # onlineMeeting
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
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingChatMode
    ${AllowMeetingChat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

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
    # Indicates if this is a live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The join URL of the online meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The video teleconferencing ID.
    # Read-only.
    ${VideoTeleconferenceId},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property presences in communications
.Description
Update the navigation property presences in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPresence>: presence
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Activity <String>]: The supplemental information to a user's availability. Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive, InAMeeting, Offline, OffWork, OutOfOffice, PresenceUnknown, Presenting, UrgentInterruptionsOnly.
  [Availability <String>]: The base presence information for a user. Possible values are Available, AvailableIdle,  Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationpresence
#>
function Update-MgCommunicationPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence]
    # presence
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The supplemental information to a user's availability.
    # Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive, InAMeeting, Offline, OffWork, OutOfOffice, PresenceUnknown, Presenting, UrgentInterruptionsOnly.
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
    [System.String]
    # The base presence information for a user.
    # Possible values are Available, AvailableIdle, Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
    ${Availability},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property onlineMeetings in users
.Description
Update the navigation property onlineMeetings in users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

AUDIOCONFERENCING <IMicrosoftGraphAudioConferencing>: audioConferencing
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ConferenceId <String>]: The conference id of the online meeting.
  [DialinUrl <String>]: A URL to the externally-accessible web page that contains dial-in information.
  [TollFreeNumber <String>]: 
  [TollFreeNumbers <String[]>]: List of toll-free numbers that are displayed in the meeting invite.
  [TollNumber <String>]: 
  [TollNumbers <String[]>]: List of toll numbers that are displayed in the meeting invite.

BODYPARAMETER <IMicrosoftGraphOnlineMeeting>: onlineMeeting
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AllowAttendeeToEnableCamera <Boolean?>]: Indicates whether attendees can turn on their camera.
  [AllowAttendeeToEnableMic <Boolean?>]: Indicates whether attendees can turn on their microphone.
  [AllowMeetingChat <String>]: meetingChatMode
  [AllowTeamworkReactions <Boolean?>]: Indicates whether Teams reactions are enabled for the meeting.
  [AllowedPresenters <String>]: onlineMeetingPresenters
  [AttendeeReport <Byte[]>]: The content stream of the attendee report of a live event. Read-only.
  [AudioConferencing <IMicrosoftGraphAudioConferencing>]: audioConferencing
    [(Any) <Object>]: This indicates any property can be added to this object.
    [ConferenceId <String>]: The conference id of the online meeting.
    [DialinUrl <String>]: A URL to the externally-accessible web page that contains dial-in information.
    [TollFreeNumber <String>]: 
    [TollFreeNumbers <String[]>]: List of toll-free numbers that are displayed in the meeting invite.
    [TollNumber <String>]: 
    [TollNumbers <String[]>]: List of toll numbers that are displayed in the meeting invite.
  [BroadcastSettings <IMicrosoftGraphBroadcastMeetingSettings>]: broadcastMeetingSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowedAudience <String>]: broadcastMeetingAudience
    [IsAttendeeReportEnabled <Boolean?>]: Indicates whether attendee report is enabled for this live event. Default value is false.
    [IsQuestionAndAnswerEnabled <Boolean?>]: Indicates whether Q&A is enabled for this live event. Default value is false.
    [IsRecordingEnabled <Boolean?>]: Indicates whether recording is enabled for this live event. Default value is false.
    [IsVideoOnDemandEnabled <Boolean?>]: Indicates whether video on demand is enabled for this live event. Default value is false.
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [CreationDateTime <DateTime?>]: The meeting creation time in UTC. Read-only.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [ExternalId <String>]: The external ID. A custom ID. Optional.
  [IsBroadcast <Boolean?>]: Indicates if this is a live event.
  [IsEntryExitAnnounced <Boolean?>]: Indicates whether to announce when callers join or leave.
  [JoinInformation <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [JoinWebUrl <String>]: The join URL of the online meeting. Read-only.
  [LobbyBypassSettings <IMicrosoftGraphLobbyBypassSettings>]: lobbyBypassSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
    [Scope <String>]: lobbyBypassScope
  [Participants <IMicrosoftGraphMeetingParticipants>]: meetingParticipants
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
          [(Any) <Object>]: This indicates any property can be added to this object.
          [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
          [Id <String>]: Unique identifier for the identity.
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [Role <String>]: onlineMeetingRole
      [Upn <String>]: User principal name of the participant.
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [RecordAutomatically <Boolean?>]: Indicates whether to record the meeting automatically.
  [StartDateTime <DateTime?>]: The meeting start time in UTC.
  [Subject <String>]: The subject of the online meeting.
  [VideoTeleconferenceId <String>]: The video teleconferencing ID. Read-only.

BROADCASTSETTINGS <IMicrosoftGraphBroadcastMeetingSettings>: broadcastMeetingSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AllowedAudience <String>]: broadcastMeetingAudience
  [IsAttendeeReportEnabled <Boolean?>]: Indicates whether attendee report is enabled for this live event. Default value is false.
  [IsQuestionAndAnswerEnabled <Boolean?>]: Indicates whether Q&A is enabled for this live event. Default value is false.
  [IsRecordingEnabled <Boolean?>]: Indicates whether recording is enabled for this live event. Default value is false.
  [IsVideoOnDemandEnabled <Boolean?>]: Indicates whether video on demand is enabled for this live event. Default value is false.

CHATINFO <IMicrosoftGraphChatInfo>: chatInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
  [ReplyChainMessageId <String>]: The ID of the reply message.
  [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user

JOININFORMATION <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType

LOBBYBYPASSSETTINGS <IMicrosoftGraphLobbyBypassSettings>: lobbyBypassSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
  [Scope <String>]: lobbyBypassScope

PARTICIPANTS <IMicrosoftGraphMeetingParticipants>: meetingParticipants
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [Role <String>]: onlineMeetingRole
    [Upn <String>]: User principal name of the participant.
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeeting
#>
function Update-MgUserOnlineMeeting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting]
    # onlineMeeting
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
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingChatMode
    ${AllowMeetingChat},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

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
    # Indicates if this is a live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The join URL of the online meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The video teleconferencing ID.
    # Read-only.
    ${VideoTeleconferenceId},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property presence in users
.Description
Update the navigation property presence in users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPresence>: presence
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Activity <String>]: The supplemental information to a user's availability. Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive, InAMeeting, Offline, OffWork, OutOfOffice, PresenceUnknown, Presenting, UrgentInterruptionsOnly.
  [Availability <String>]: The base presence information for a user. Possible values are Available, AvailableIdle,  Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown

INPUTOBJECT <ICloudCommunicationsIdentity>: Identity Parameter
  [AudioRoutingGroupId <String>]: key: id of audioRoutingGroup
  [CallId <String>]: key: id of call
  [CallRecordId <String>]: key: id of callRecord
  [CommsOperationId <String>]: key: id of commsOperation
  [MeetingRegistrantId <String>]: key: id of meetingRegistrant
  [MeetingRegistrationQuestionId <String>]: key: id of meetingRegistrationQuestion
  [OnlineMeetingId <String>]: key: id of onlineMeeting
  [ParticipantId <String>]: key: id of participant
  [PresenceId <String>]: key: id of presence
  [SessionId <String>]: key: id of session
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguserpresence
#>
function Update-MgUserPresence {
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
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence]
    # presence
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The supplemental information to a user's availability.
    # Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive, InAMeeting, Offline, OffWork, OutOfOffice, PresenceUnknown, Presenting, UrgentInterruptionsOnly.
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
    [System.String]
    # The base presence information for a user.
    # Possible values are Available, AvailableIdle, Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
    ${Availability},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCDWD+ecNpzrnim
# WvxLmnoFR6PhM52iQ1yPqMtPlcltc6CCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgMoB/msk7
# h+Vomnt+6eW98odlC4mdL4ddVUXv7aIDJY4wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQB0UMdJ+YFZxwYKp6JlH9D/v2HDDoAmWGKEfQckPWmc
# 0WAWUWFp1+d5/5cEplJKle4w2N+EX497mEOFUkFOuCdv/xlY0qjyo8VGOCHHl161
# OM988tOJHxp89M7LSnPXldbJg8hpFcFff775DG+iwVM5qM+L1Ef/ff7Xi/q6Nzdw
# k7Hs6e5aGDeGhlYefQvdFQk7H4xKVkLW35cegEh/FrVNN0QE2kSC3BQMFPkz7YKV
# 7JjDhVWJC2APUrFdRwYT7cwRhPZEwB40FMIc3TY74IILPLTFQ2D7TizgCca6PJbZ
# 4vywkMpU3wSBxaV6KK6AP8w1dRW8jryTbN+PXEtetfmAoYIS/jCCEvoGCisGAQQB
# gjcDAwExghLqMIIS5gYJKoZIhvcNAQcCoIIS1zCCEtMCAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIG7Zd2bXImNiB5CrBdS8J3Ps6GiNVwiMbC7xBlZm
# KRk9AgZhcHkHNpwYEzIwMjExMDI3MDcxMTI0LjUzOVowBIACAfSggdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046RDA4Mi00QkZELUVFQkExJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2Wggg5NMIIE+TCCA+GgAwIBAgITMwAAAUGvf1KXXPLc
# RQAAAAABQTANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMDAeFw0yMDEwMTUxNzI4MjdaFw0yMjAxMTIxNzI4MjdaMIHSMQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQg
# SXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOkQwODItNEJGRC1FRUJBMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA8irLqL28
# dal+PJUmUJOwvYn/sOCEzQzZyj94XbFPtRhDhPjagvvKOv1GgMoOuXvkpM3uM5E6
# 7vyOCPxqhTAzq7Ak3zkEXXBv7JoM8Xm0x5UcnAkpUiEo0eycRl6bnYIB3KlZW3uz
# 4Jc2v2FV0KCGkLrvqfKP8V/i2hVyN854OejWpx8wGUazM4CYUVowcgEDc76OY+Xa
# 4W27DCZJm2f9ol4BjSL+b2L/T8n/LEGknaUxwSQTN1LQCt+uBDCASd6VQR5CLLJV
# t6MBL0W1NlaWxEAJwlIdyBnS1ihLvRg1jc/KUZe0sRFdD3fhKrjPac3hoy007Fvr
# 6Go0WJ4pr2rJdQIDAQABo4IBGzCCARcwHQYDVR0OBBYEFC0oPyxuLpD9RXBr9c8N
# O0EFEsbEMB8GA1UdIwQYMBaAFNVjOlyKMZDzQ3t8RhvFM2hahW1VMFYGA1UdHwRP
# ME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1
# Y3RzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNybDBaBggrBgEFBQcBAQROMEww
# SgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMv
# TWljVGltU3RhUENBXzIwMTAtMDctMDEuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0l
# BAwwCgYIKwYBBQUHAwgwDQYJKoZIhvcNAQELBQADggEBAFJ63yJ92ChqCgpexD48
# okviGuC4ikNsvmwlCSet1sFpvJEzLJB8cTF4z4qQTz8AsQtcew6mAVmQCYDu9f5e
# e11xXj1LwHYsZGnSs/OfRul1VKmY51OQpqvK5O/Ct4fs0Iblzo8eyOLJygTk97aX
# VA4Uzq8GblL7LQ5XiwAY446MOALnNXFo/Kq9tvzipwY1YcRn/nlMQ+b92OiLLmHV
# Mi2wAUORiKFvaAfYWjhQd+2qHLMsdpNluwBbWe7FF5ABsDo0HROMWyCgxdLQ3vqr
# 3DMSH3ZWKiirFsvWJmchfZPGRObwqszvSXPFmPBZ9o+er+4UoLV+50GWnnQky7HV
# gLkwggZxMIIEWaADAgECAgphCYEqAAAAAAACMA0GCSqGSIb3DQEBCwUAMIGIMQsw
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
# bGVzIFRTUyBFU046RDA4Mi00QkZELUVFQkExJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAKrlvym1CquIoQcrzncL
# vkD1WpUDoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwDQYJ
# KoZIhvcNAQEFBQACBQDlIuBDMCIYDzIwMjExMDI3MDQxNDU5WhgPMjAyMTEwMjgw
# NDE0NTlaMHcwPQYKKwYBBAGEWQoEATEvMC0wCgIFAOUi4EMCAQAwCgIBAAICF9YC
# Af8wBwIBAAICEUIwCgIFAOUkMcMCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYB
# BAGEWQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUFAAOB
# gQAUCb4IvQ11XDKrVYqraypVm5yhtcG0OrheMJn8LgfDSFXBsjgd80H5l7DS6n8E
# qHPedHgAtaWWmx1dd7KZKEFxtMYCHw+eu/YRlUn+fHyxdKuYD4aQlLKwPGcxz0+V
# eu66BNmD5e5Mf8B8u05ZlH9oNUlvvHTczsFw6LVhnisl+zGCAw0wggMJAgEBMIGT
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABQa9/Updc8txFAAAA
# AAFBMA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQ
# AQQwLwYJKoZIhvcNAQkEMSIEIGHZEqDp1NGBBvMokkvsE8BDX6s23Q3Ju33+xA51
# BsKuMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgUT8BPIzqc3SecHRPLKBt
# W0vOOnT+78haWo+XcxVerd4wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAAUGvf1KXXPLcRQAAAAABQTAiBCCsIMhGci2I4hx/fnpoNUu5
# 9O/Sci8O3hwdWmbouUNrPjANBgkqhkiG9w0BAQsFAASCAQCBw/EWP6c/MPsZPiPN
# J5rX2KwoK2FSfoRU3KiJJmL0tAo/JUlNgmTxdfi9bqZP8SyO+8bUEPP4L7Lmr9l8
# w22W82qFCDzIAnzN0kaqEcbTV3h4B3Vv0YXU/RuGIFvwj1aeUXszHbyF6+eQ4OX+
# lRwL6ibW42pBPpZIkGCeGKxUYxmcZavgju3rjVScX5dD3iaVFTodEv/puqYa8z+D
# JrYu/Z4VNZp7oqaYXg6OuClPU5hDE41CtUUdv60fmHGPbZDRUNaU1hsCPGA5u5i6
# uZsZzrRnwArPT3IsOReDZ/lo+SGx52CoqUDxjUBy2tUzhjcUHOpounLPccJDSSI5
# 8QV8
# SIG # End signature block
