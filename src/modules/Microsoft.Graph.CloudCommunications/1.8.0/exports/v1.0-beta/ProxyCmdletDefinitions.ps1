
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='ClearExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Clear1', Mandatory)]
    [Parameter(ParameterSetName='ClearExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='ClearViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Clear1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ClearViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ca0Rf4CommunicationsPresencesPresenceIdMicrosoftGraphClearpresencePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ClearExpanded1')]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ClearExpanded1')]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded1')]
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
            Clear1 = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_Clear1';
            ClearExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_ClearExpanded1';
            ClearViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_ClearViaIdentity1';
            ClearViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_ClearViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcallaudioroutinggroup
#>
function Get-MgCommunicationCallAudioRoutingGroup {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of audioRoutingGroup
    ${AudioRoutingGroupId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallAudioRoutingGroup_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallAudioRoutingGroup_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallAudioRoutingGroup_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of commsOperation
    ${CommsOperationId},

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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallOperation_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallOperation_GetViaIdentity1';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallOperation_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallParticipant_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallParticipant_GetViaIdentity1';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallParticipant_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of session
    ${SessionId},

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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecordSession_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecordSession_GetViaIdentity1';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecordSession_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecord_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecord_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCall_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCall_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingalternativerecording
#>
function Get-MgCommunicationOnlineMeetingAlternativeRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAlternativeRecording_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAlternativeRecording_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The attendance report of an online meeting.
Read-only.
.Description
The attendance report of an online meeting.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingattendancereport
#>
function Get-MgCommunicationOnlineMeetingAttendanceReport {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReport_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReport_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendeeReport_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendeeReport_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingrecording
#>
function Get-MgCommunicationOnlineMeetingRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRecording_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRecording_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Custom registration questions.
.Description
Custom registration questions.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingregistrationcustomquestion
#>
function Get-MgCommunicationOnlineMeetingRegistrationCustomQuestion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistrationCustomQuestion_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistrationCustomQuestion_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistrationCustomQuestion_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Registrants of the online meeting.
.Description
Registrants of the online meeting.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingregistrationregistrant
#>
function Get-MgCommunicationOnlineMeetingRegistrationRegistrant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrant
    ${MeetingRegistrantId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistrationRegistrant_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistrationRegistrant_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistrationRegistrant_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.
.Description
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingregistration
#>
function Get-MgCommunicationOnlineMeetingRegistration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistration_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistration_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [EndDateTime <DateTime?>]: 
  [ExternalId <String>]: 
  [Participants <IMicrosoftGraphMeetingParticipants1>]: meetingParticipants
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
    [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
    [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 
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

PARTICIPANTS <IMicrosoftGraphMeetingParticipants1>: meetingParticipants
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
  [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeeting
#>
function Get-MgCommunicationOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get2')]
    [Parameter(ParameterSetName='GetViaIdentity1')]
    [Parameter(ParameterSetName='List1')]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter(ParameterSetName='Get2')]
    [Parameter(ParameterSetName='GetViaIdentity1')]
    [Parameter(ParameterSetName='List1')]
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

    [Parameter(ParameterSetName='Get3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${EndDateTime},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ExternalId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${StartDateTime},

    [Parameter(ParameterSetName='GetExpanded1')]
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
            Get2 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_Get2';
            Get3 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_Get3';
            GetExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_GetExpanded1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_GetViaIdentity1';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get3')]
    [Parameter(ParameterSetName='GetViaIdentity1')]
    [Parameter(ParameterSetName='List1')]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter(ParameterSetName='Get3')]
    [Parameter(ParameterSetName='GetViaIdentity1')]
    [Parameter(ParameterSetName='List1')]
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

    [Parameter(ParameterSetName='Get2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths10WpgkzCommunicationsMicrosoftGraphGetpresencesbyuseridPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
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
            Get2 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_Get2';
            Get3 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_Get3';
            GetExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_GetExpanded1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_GetViaIdentity1';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingalternativerecording
#>
function Get-MgUserOnlineMeetingAlternativeRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAlternativeRecording_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAlternativeRecording_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The attendance report of an online meeting.
Read-only.
.Description
The attendance report of an online meeting.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingattendancereport
#>
function Get-MgUserOnlineMeetingAttendanceReport {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReport_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReport_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendeeReport_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendeeReport_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingrecording
#>
function Get-MgUserOnlineMeetingRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRecording_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRecording_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Custom registration questions.
.Description
Custom registration questions.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingregistrationcustomquestion
#>
function Get-MgUserOnlineMeetingRegistrationCustomQuestion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistrationCustomQuestion_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistrationCustomQuestion_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistrationCustomQuestion_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Registrants of the online meeting.
.Description
Registrants of the online meeting.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingregistrationregistrant
#>
function Get-MgUserOnlineMeetingRegistrationRegistrant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrant
    ${MeetingRegistrantId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistrationRegistrant_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistrationRegistrant_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistrationRegistrant_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.
.Description
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingregistration
#>
function Get-MgUserOnlineMeetingRegistration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistration_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistration_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeeting_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeeting_GetViaIdentity1';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeeting_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1])]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserPresence_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserPresence_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IPathsQvpqn4CommunicationsCallsCallIdMicrosoftGraphAnswerPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsQvpqn4CommunicationsCallsCallIdMicrosoftGraphAnswerPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AcceptedModalities <String[]>]: 
  [CallbackUri <String>]: 
  [MediaConfig <IMicrosoftGraphMediaConfig1>]: mediaConfig
    [(Any) <Object>]: This indicates any property can be added to this object.
    [RemoveFromDefaultAudioGroup <Boolean?>]: 
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

MEDIACONFIG <IMicrosoftGraphMediaConfig1>: mediaConfig
  [(Any) <Object>]: This indicates any property can be added to this object.
  [RemoveFromDefaultAudioGroup <Boolean?>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mganswercommunicationcall
#>
function Invoke-MgAnswerCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AnswerExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Answer1', Mandatory)]
    [Parameter(ParameterSetName='AnswerExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='AnswerViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Answer1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AnswerViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsQvpqn4CommunicationsCallsCallIdMicrosoftGraphAnswerPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${AcceptedModalities},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CallbackUri},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaConfig1]
    # mediaConfig
    # To construct, see NOTES section for MEDIACONFIG properties and create a hash table.
    ${MediaConfig},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
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
            Answer1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_Answer1';
            AnswerExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_AnswerExpanded1';
            AnswerViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_AnswerViaIdentity1';
            AnswerViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_AnswerViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
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

BODYPARAMETER <IMicrosoftGraphOnlineMeeting1>: onlineMeeting
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AccessLevel <String>]: accessLevel
  [AllowAttendeeToEnableCamera <Boolean?>]: Indicates whether attendees can turn on their camera.
  [AllowAttendeeToEnableMic <Boolean?>]: Indicates whether attendees can turn on their microphone.
  [AllowMeetingChat <String>]: meetingChatMode
  [AllowTeamworkReactions <Boolean?>]: Indicates whether Teams reactions are enabled for the meeting.
  [AllowedPresenters <String>]: onlineMeetingPresenters
  [AlternativeRecording <Byte[]>]: The content stream of the alternative recording of a live event. Read-only.
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
  [CanceledDateTime <DateTime?>]: 
  [Capabilities <String[]>]: 
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [CreationDateTime <DateTime?>]: The meeting creation time in UTC. Read-only.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [EntryExitAnnouncement <Boolean?>]: 
  [ExpirationDateTime <DateTime?>]: 
  [ExternalId <String>]: The external ID. A custom ID. Optional.
  [IsBroadcast <Boolean?>]: Indicates if this is a live event.
  [IsCancelled <Boolean?>]: 
  [IsEntryExitAnnounced <Boolean?>]: Indicates whether to announce when callers join or leave.
  [JoinInformation <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [JoinUrl <String>]: 
  [LobbyBypassSettings <IMicrosoftGraphLobbyBypassSettings>]: lobbyBypassSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
    [Scope <String>]: lobbyBypassScope
  [MeetingAttendanceReport <IMicrosoftGraphMeetingAttendanceReport>]: meetingAttendanceReport
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AttendanceRecords <IMicrosoftGraphAttendanceRecord[]>]: The list of attendance records.
      [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
        [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
        [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
        [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
      [EmailAddress <String>]: Email address.
      [Identity <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
      [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.
    [TotalParticipantCount <Int32?>]: Total number of participants.
  [Participants <IMicrosoftGraphMeetingParticipants1>]: meetingParticipants
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [Role <String>]: onlineMeetingRole
      [Upn <String>]: User principal name of the participant.
    [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
    [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [RecordAutomatically <Boolean?>]: Indicates whether to record the meeting automatically.
  [Recording <Byte[]>]: The content stream of the recording of a live event. Read-only.
  [Registration <IMicrosoftGraphMeetingRegistration>]: meetingRegistration
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AllowedRegistrant <String>]: meetingAudience
    [CustomQuestions <IMicrosoftGraphMeetingRegistrationQuestion[]>]: Custom registration questions.
      [Id <String>]: Read-only.
      [AnswerInputType <String>]: answerInputType
      [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
      [DisplayName <String>]: Display name of the custom registration question.
      [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.
    [Description <String>]: The description of the meeting.
    [EndDateTime <DateTime?>]: The meeting end time in UTC.
    [Registrants <IMicrosoftGraphMeetingRegistrant[]>]: Registrants of the online meeting.
      [Id <String>]: Read-only.
      [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
        [DisplayName <String>]: Display name of the custom registration question. Read-only.
        [QuestionId <String>]: ID the custom registration question. Read-only.
        [Value <String>]: Answer to the custom registration question.
      [Email <String>]: The email address of the registrant.
      [FirstName <String>]: The first name of the registrant.
      [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
      [LastName <String>]: The last name of the registrant.
      [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
      [Status <String>]: meetingRegistrantStatus
    [RegistrationPageViewCount <Int32?>]: The number of times the registration page has been visited. Read-only.
    [RegistrationPageWebUrl <String>]: The URL of the registration page. Read-only.
    [Speakers <IMicrosoftGraphMeetingSpeaker[]>]: The meeting speaker's information.
      [Bio <String>]: Bio of the speaker.
      [DisplayName <String>]: Display name of the speaker.
    [StartDateTime <DateTime?>]: The meeting start time in UTC.
    [Subject <String>]: The subject of the meeting.
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

MEETINGATTENDANCEREPORT <IMicrosoftGraphMeetingAttendanceReport>: meetingAttendanceReport
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AttendanceRecords <IMicrosoftGraphAttendanceRecord[]>]: The list of attendance records.
    [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
      [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
      [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
      [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
    [EmailAddress <String>]: Email address.
    [Identity <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
    [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.
  [TotalParticipantCount <Int32?>]: Total number of participants.

PARTICIPANTS <IMicrosoftGraphMeetingParticipants1>: meetingParticipants
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
  [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 

REGISTRATION <IMicrosoftGraphMeetingRegistration>: meetingRegistration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AllowedRegistrant <String>]: meetingAudience
  [CustomQuestions <IMicrosoftGraphMeetingRegistrationQuestion[]>]: Custom registration questions.
    [Id <String>]: Read-only.
    [AnswerInputType <String>]: answerInputType
    [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
    [DisplayName <String>]: Display name of the custom registration question.
    [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.
  [Description <String>]: The description of the meeting.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [Registrants <IMicrosoftGraphMeetingRegistrant[]>]: Registrants of the online meeting.
    [Id <String>]: Read-only.
    [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
      [DisplayName <String>]: Display name of the custom registration question. Read-only.
      [QuestionId <String>]: ID the custom registration question. Read-only.
      [Value <String>]: Answer to the custom registration question.
    [Email <String>]: The email address of the registrant.
    [FirstName <String>]: The first name of the registrant.
    [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
    [LastName <String>]: The last name of the registrant.
    [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
    [Status <String>]: meetingRegistrantStatus
  [RegistrationPageViewCount <Int32?>]: The number of times the registration page has been visited. Read-only.
  [RegistrationPageWebUrl <String>]: The URL of the registration page. Read-only.
  [Speakers <IMicrosoftGraphMeetingSpeaker[]>]: The meeting speaker's information.
    [Bio <String>]: Bio of the speaker.
    [DisplayName <String>]: Display name of the speaker.
  [StartDateTime <DateTime?>]: The meeting start time in UTC.
  [Subject <String>]: The subject of the meeting.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgcreateorgetcommunicationonlinemeeting
#>
function Invoke-MgCreateOrGetCommunicationOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1]
    # onlineMeeting
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # accessLevel
    ${AccessLevel},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingChatMode
    ${AllowMeetingChat},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AlternativeRecording (The content stream of the alternative recording of a live event.
    # Read-only.)
    ${AlternativeRecordingInputFile},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CanceledDateTime},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Capabilities},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${EntryExitAnnouncement},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if this is a live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsCancelled},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinUrl},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport]
    # meetingAttendanceReport
    # To construct, see NOTES section for MEETINGATTENDANCEREPORT properties and create a hash table.
    ${MeetingAttendanceReport},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for Recording (The content stream of the recording of a live event.
    # Read-only.)
    ${RecordingInputFile},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
    # To construct, see NOTES section for REGISTRATION properties and create a hash table.
    ${Registration},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded2')]
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
            Create2 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgCreateOrGetCommunicationOnlineMeeting_Create2';
            CreateExpanded2 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgCreateOrGetCommunicationOnlineMeeting_CreateExpanded2';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IPaths1Bh76WaCommunicationsCallsCallIdParticipantsMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInviteParticipantsOperation1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Bh76WaCommunicationsCallsCallIdParticipantsMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 
  [Participants <IMicrosoftGraphInvitationParticipantInfo1[]>]: 
    [EndpointType <String>]: endpointType
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

PARTICIPANTS <IMicrosoftGraphInvitationParticipantInfo1[]>: .
  [EndpointType <String>]: endpointType
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInviteParticipantsOperation1])]
[CmdletBinding(DefaultParameterSetName='InviteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Invite1', Mandatory)]
    [Parameter(ParameterSetName='InviteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='InviteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Invite1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='InviteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Bh76WaCommunicationsCallsCallIdParticipantsMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='InviteExpanded1')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='InviteExpanded1')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='InviteExpanded1')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo1[]]
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
            Invite1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_Invite1';
            InviteExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_InviteExpanded1';
            InviteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_InviteViaIdentity1';
            InviteViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_InviteViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Keep1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Keep1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='KeepViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Keep1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgKeepCommunicationCallAlive_Keep1';
            KeepViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgKeepCommunicationCallAlive_KeepViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='LogExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Log1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1JbdsmaCommunicationsCallsMicrosoftGraphLogteleconferencedevicequalityPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='LogExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='LogExpanded1')]
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
            Log1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgLogCommunicationCallTeleconferenceDeviceQuality_Log1';
            LogExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgLogCommunicationCallTeleconferenceDeviceQuality_LogExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgmuteallcommunicationcallparticipant
#>
function Invoke-MgMuteAllCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantOperation])]
[CmdletBinding(DefaultParameterSetName='MuteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Mute1', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Mute1', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='MuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Mute1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsTobgxoCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MuteExpanded1')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MuteExpanded1')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1')]
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
            Mute1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteAllCommunicationCallParticipant_Mute1';
            MuteExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteAllCommunicationCallParticipant_MuteExpanded1';
            MuteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteAllCommunicationCallParticipant_MuteViaIdentity1';
            MuteViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteAllCommunicationCallParticipant_MuteViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action muteAll
.Description
Invoke action muteAll

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsKpvac3CommunicationsCallsCallIdParticipantsMicrosoftGraphMuteallPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantsOperation
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPathsKpvac3CommunicationsCallsCallIdParticipantsMicrosoftGraphMuteallPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 
  [Participants <String[]>]: 

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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantsOperation])]
[CmdletBinding(DefaultParameterSetName='MuteExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Mute2', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='MuteViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Mute2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsKpvac3CommunicationsCallsCallIdParticipantsMicrosoftGraphMuteallPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MuteExpanded2')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MuteExpanded2')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='MuteExpanded2')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
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
            Mute2 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_Mute2';
            MuteExpanded2 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_MuteExpanded2';
            MuteViaIdentity2 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_MuteViaIdentity2';
            MuteViaIdentityExpanded2 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_MuteViaIdentityExpanded2';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='MuteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Mute1', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='MuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Mute1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths13Zt223CommunicationsCallsCallIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MuteExpanded1')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MuteExpanded1')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1')]
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
            Mute1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_Mute1';
            MuteExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_MuteExpanded1';
            MuteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_MuteViaIdentity1';
            MuteViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_MuteViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IPaths1Gzqcv2CommunicationsCallsCallIdMicrosoftGraphPlaypromptPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlayPromptOperation1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Gzqcv2CommunicationsCallsCallIdMicrosoftGraphPlaypromptPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ClientContext <String>]: 
  [Loop <Boolean?>]: 
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlayPromptOperation1])]
[CmdletBinding(DefaultParameterSetName='PlayExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Play1', Mandatory)]
    [Parameter(ParameterSetName='PlayExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='PlayViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Play1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PlayViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Gzqcv2CommunicationsCallsCallIdMicrosoftGraphPlaypromptPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='PlayExpanded1')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='PlayExpanded1')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='PlayExpanded1')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${Loop},

    [Parameter(ParameterSetName='PlayExpanded1')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded1')]
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
            Play1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_Play1';
            PlayExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_PlayExpanded1';
            PlayViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_PlayViaIdentity1';
            PlayViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_PlayViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IPaths14Wb7KqCommunicationsCallsCallIdMicrosoftGraphRecordresponsePostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordOperation1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths14Wb7KqCommunicationsCallsCallIdMicrosoftGraphRecordresponsePostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [BargeInAllowed <Boolean?>]: 
  [ClientContext <String>]: 
  [InitialSilenceTimeoutInSeconds <Int32?>]: 
  [MaxRecordDurationInSeconds <Int32?>]: 
  [MaxSilenceTimeoutInSeconds <Int32?>]: 
  [PlayBeep <Boolean?>]: 
  [Prompts <IMicrosoftGraphPrompt[]>]: 
  [StopTones <String[]>]: 
  [StreamWhileRecording <Boolean?>]: 

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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordOperation1])]
[CmdletBinding(DefaultParameterSetName='RecordExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Record1', Mandatory)]
    [Parameter(ParameterSetName='RecordExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='RecordViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Record1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RecordViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths14Wb7KqCommunicationsCallsCallIdMicrosoftGraphRecordresponsePostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${BargeInAllowed},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${InitialSilenceTimeoutInSeconds},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${MaxRecordDurationInSeconds},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${MaxSilenceTimeoutInSeconds},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${PlayBeep},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrompt[]]
    # .
    ${Prompts},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${StopTones},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${StreamWhileRecording},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Record1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_Record1';
            RecordExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_RecordExpanded1';
            RecordViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_RecordViaIdentity1';
            RecordViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_RecordViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke action record
.Description
Invoke action record

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Mdqe66CommunicationsCallsCallIdMicrosoftGraphRecordPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordOperation1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Mdqe66CommunicationsCallsCallIdMicrosoftGraphRecordPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [BargeInAllowed <Boolean?>]: 
  [ClientContext <String>]: 
  [InitialSilenceTimeoutInSeconds <Int32?>]: 
  [MaxRecordDurationInSeconds <Int32?>]: 
  [MaxSilenceTimeoutInSeconds <Int32?>]: 
  [PlayBeep <Boolean?>]: 
  [Prompts <IMicrosoftGraphPrompt[]>]: 
  [StopTones <String[]>]: 
  [StreamWhileRecording <Boolean?>]: 

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgrecordcommunicationcall
#>
function Invoke-MgRecordCommunicationCall {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordOperation1])]
[CmdletBinding(DefaultParameterSetName='RecordExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
    [Microsoft.Graph.PowerShell.Models.IPaths1Mdqe66CommunicationsCallsCallIdMicrosoftGraphRecordPostRequestbodyContentApplicationJsonSchema]
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

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${StreamWhileRecording},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Record = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCall_Record';
            RecordExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCall_RecordExpanded';
            RecordViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCall_RecordViaIdentity';
            RecordViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCall_RecordViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IPaths183Gi8UCommunicationsCallsCallIdMicrosoftGraphRedirectPostRequestbodyContentApplicationJsonSchema1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths183Gi8UCommunicationsCallsCallIdMicrosoftGraphRedirectPostRequestbodyContentApplicationJsonSchema1>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CallbackUri <String>]: 
  [MaskCallee <Boolean?>]: 
  [MaskCaller <Boolean?>]: 
  [TargetDisposition <String>]: callDisposition
  [Targets <IMicrosoftGraphInvitationParticipantInfo1[]>]: 
    [EndpointType <String>]: endpointType
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

TARGETS <IMicrosoftGraphInvitationParticipantInfo1[]>: .
  [EndpointType <String>]: endpointType
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
[CmdletBinding(DefaultParameterSetName='RedirectExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Redirect1', Mandatory)]
    [Parameter(ParameterSetName='RedirectExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='RedirectViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Redirect1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RedirectViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths183Gi8UCommunicationsCallsCallIdMicrosoftGraphRedirectPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CallbackUri},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${MaskCallee},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${MaskCaller},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # callDisposition
    ${TargetDisposition},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo1[]]
    # .
    # To construct, see NOTES section for TARGETS properties and create a hash table.
    ${Targets},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
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
            Redirect1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_Redirect1';
            RedirectExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_RedirectExpanded1';
            RedirectViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_RedirectViaIdentity1';
            RedirectViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_RedirectViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='RejectExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Reject1', Mandatory)]
    [Parameter(ParameterSetName='RejectExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='RejectViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Reject1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RejectViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths4QrghdCommunicationsCallsCallIdMicrosoftGraphRejectPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RejectExpanded1')]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RejectExpanded1')]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CallbackUri},

    [Parameter(ParameterSetName='RejectExpanded1')]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded1')]
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
            Reject1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_Reject1';
            RejectExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_RejectExpanded1';
            RejectViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_RejectViaIdentity1';
            RejectViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_RejectViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='SubscribeExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Subscribe1', Mandatory)]
    [Parameter(ParameterSetName='SubscribeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='SubscribeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SubscribeViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Subscribe1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SubscribeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsXyl6WiCommunicationsCallsCallIdMicrosoftGraphSubscribetotonePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SubscribeExpanded1')]
    [Parameter(ParameterSetName='SubscribeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SubscribeExpanded1')]
    [Parameter(ParameterSetName='SubscribeViaIdentityExpanded1')]
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
            Subscribe1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_Subscribe1';
            SubscribeExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_SubscribeExpanded1';
            SubscribeViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_SubscribeViaIdentity1';
            SubscribeViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_SubscribeViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UnmuteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Unmute1', Mandatory)]
    [Parameter(ParameterSetName='UnmuteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='UnmuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UnmuteViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Unmute1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UnmuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1X7BvttCommunicationsCallsCallIdMicrosoftGraphUnmutePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UnmuteExpanded1')]
    [Parameter(ParameterSetName='UnmuteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UnmuteExpanded1')]
    [Parameter(ParameterSetName='UnmuteViaIdentityExpanded1')]
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
            Unmute1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_Unmute1';
            UnmuteExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_UnmuteExpanded1';
            UnmuteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_UnmuteViaIdentity1';
            UnmuteViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_UnmuteViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IPaths4Zbm7LCommunicationsCallsCallIdMicrosoftGraphTransferPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths4Zbm7LCommunicationsCallsCallIdMicrosoftGraphTransferPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [TransferTarget <IMicrosoftGraphInvitationParticipantInfo1>]: invitationParticipantInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [EndpointType <String>]: endpointType
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Application <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Device <IMicrosoftGraphIdentity>]: identity
      [User <IMicrosoftGraphIdentity>]: identity
    [ReplacesCallId <String>]: Optional. The call which the target identity is currently a part of. This call will be dropped once the participant is added.
  [Transferee <IMicrosoftGraphParticipantInfo1>]: participantInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CountryCode <String>]: The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
    [EndpointType <String>]: endpointType
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [LanguageId <String>]: The language culture string. Read-only.
    [ParticipantId <String>]: The participant ID of the participant. Read-only.
    [PlatformId <String>]: The client platform ID of the participant. Read-only.
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

TRANSFEREE <IMicrosoftGraphParticipantInfo1>: participantInfo
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
  [PlatformId <String>]: The client platform ID of the participant. Read-only.
  [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.

TRANSFERTARGET <IMicrosoftGraphInvitationParticipantInfo1>: invitationParticipantInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EndpointType <String>]: endpointType
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
[CmdletBinding(DefaultParameterSetName='TransferExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Transfer1', Mandatory)]
    [Parameter(ParameterSetName='TransferExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='TransferViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Transfer1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TransferViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths4Zbm7LCommunicationsCallsCallIdMicrosoftGraphTransferPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='TransferExpanded1')]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='TransferExpanded1')]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo1]
    # invitationParticipantInfo
    # To construct, see NOTES section for TRANSFERTARGET properties and create a hash table.
    ${TransferTarget},

    [Parameter(ParameterSetName='TransferExpanded1')]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo1]
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
            Transfer1 = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_Transfer1';
            TransferExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_TransferExpanded1';
            TransferViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_TransferViaIdentity1';
            TransferViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_TransferViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAudioRoutingGroup>: audioRoutingGroup
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Receivers <String[]>]: List of receiving participant ids.
  [RoutingMode <String>]: routingMode
  [Sources <String[]>]: List of source participant ids.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcallaudioroutinggroup
#>
function New-MgCommunicationCallAudioRoutingGroup {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup]
    # audioRoutingGroup
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
    [System.String[]]
    # List of receiving participant ids.
    ${Receivers},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # routingMode
    ${RoutingMode},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of source participant ids.
    ${Sources},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallAudioRoutingGroup_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallAudioRoutingGroup_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallAudioRoutingGroup_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallAudioRoutingGroup_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation]
    # commsOperation
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
    # Unique Client Context string.
    # Max limit is 256 chars.
    ${ClientContext},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphParticipant1>: participant
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Info <IMicrosoftGraphParticipantInfo1>]: participantInfo
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
    [PlatformId <String>]: The client platform ID of the participant. Read-only.
    [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
  [IsInLobby <Boolean?>]: true if the participant is in lobby.
  [IsMuted <Boolean?>]: true if the participant is muted (client or server muted).
  [MediaStreams <IMicrosoftGraphMediaStream1[]>]: The list of media streams.
    [Direction <String>]: mediaDirection
    [Label <String>]: The media stream label.
    [MediaType <String>]: 
    [ServerMuted <Boolean?>]: If the media is muted by the server.
    [SourceId <String>]: The source ID.
  [Metadata <String>]: A blob of data provided by the participant in the roster.
  [RecordingInfo <IMicrosoftGraphRecordingInfo1>]: recordingInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [InitiatedBy <IMicrosoftGraphParticipantInfo1>]: participantInfo
    [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
    [RecordingStatus <String>]: recordingStatus

INFO <IMicrosoftGraphParticipantInfo1>: participantInfo
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
  [PlatformId <String>]: The client platform ID of the participant. Read-only.
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

MEDIASTREAMS <IMicrosoftGraphMediaStream1[]>: The list of media streams.
  [Direction <String>]: mediaDirection
  [Label <String>]: The media stream label.
  [MediaType <String>]: 
  [ServerMuted <Boolean?>]: If the media is muted by the server.
  [SourceId <String>]: The source ID.

RECORDINGINFO <IMicrosoftGraphRecordingInfo1>: recordingInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [InitiatedBy <IMicrosoftGraphParticipantInfo1>]: participantInfo
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
    [PlatformId <String>]: The client platform ID of the participant. Read-only.
    [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
  [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
  [RecordingStatus <String>]: recordingStatus
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcallparticipant
#>
function New-MgCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1]
    # participant
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
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo1]
    # participantInfo
    # To construct, see NOTES section for INFO properties and create a hash table.
    ${Info},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is in lobby.
    ${IsInLobby},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is muted (client or server muted).
    ${IsMuted},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaStream1[]]
    # The list of media streams.
    # To construct, see NOTES section for MEDIASTREAMS properties and create a hash table.
    ${MediaStreams},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A blob of data provided by the participant in the roster.
    ${Metadata},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordingInfo1]
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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession]
    # session
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, see NOTES section for CALLEE properties and create a hash table.
    ${Callee},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, see NOTES section for CALLER properties and create a hash table.
    ${Caller},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the last user left the session.
    # The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsFailureInfo]
    # failureInfo
    # To construct, see NOTES section for FAILUREINFO properties and create a hash table.
    ${FailureInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of modalities present in the session.
    # Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
    ${Modalities},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSegment[]]
    # The list of segments involved in the session.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SEGMENTS properties and create a hash table.
    ${Segments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ANSWEREDBY <IMicrosoftGraphParticipantInfo1>: participantInfo
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
  [PlatformId <String>]: The client platform ID of the participant. Read-only.
  [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.

AUDIOROUTINGGROUPS <IMicrosoftGraphAudioRoutingGroup[]>: Read-only. Nullable.
  [Id <String>]: Read-only.
  [Receivers <String[]>]: List of receiving participant ids.
  [RoutingMode <String>]: routingMode
  [Sources <String[]>]: List of source participant ids.

BODYPARAMETER <IMicrosoftGraphCall1>: call
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ActiveModalities <String[]>]: The list of active modalities. Possible values are: unknown, audio, video, videoBasedScreenSharing, data. Read-only.
  [AnsweredBy <IMicrosoftGraphParticipantInfo1>]: participantInfo
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
    [PlatformId <String>]: The client platform ID of the participant. Read-only.
    [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
  [AudioRoutingGroups <IMicrosoftGraphAudioRoutingGroup[]>]: Read-only. Nullable.
    [Id <String>]: Read-only.
    [Receivers <String[]>]: List of receiving participant ids.
    [RoutingMode <String>]: routingMode
    [Sources <String[]>]: List of source participant ids.
  [CallChainId <String>]: A unique identifier for all the participant calls in a conference or a unique identifier for two participant calls in a P2P call.  This needs to be copied over from Microsoft.Graph.Call.CallChainId.
  [CallOptions <IMicrosoftGraphCallOptions>]: callOptions
    [(Any) <Object>]: This indicates any property can be added to this object.
  [CallRoutes <IMicrosoftGraphCallRoute[]>]: The routing information on how the call was retargeted. Read-only.
    [Final <IMicrosoftGraphIdentitySet>]: identitySet
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
  [MediaConfig <IMicrosoftGraphMediaConfig1>]: mediaConfig
    [(Any) <Object>]: This indicates any property can be added to this object.
    [RemoveFromDefaultAudioGroup <Boolean?>]: 
  [MediaState <IMicrosoftGraphCallMediaState>]: callMediaState
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Audio <String>]: mediaState
  [MeetingCapability <IMicrosoftGraphMeetingCapability>]: meetingCapability
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowAnonymousUsersToDialOut <Boolean?>]: Indicates whether anonymous users dialout is allowed in a meeting.
    [AllowAnonymousUsersToStartMeeting <Boolean?>]: Indicates whether anonymous users are allowed to start a meeting.
    [AutoAdmittedUsers <String>]: autoAdmittedUsersType
  [MeetingInfo <IMicrosoftGraphMeetingInfo1>]: meetingInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowConversationWithoutHost <Boolean?>]: 
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
  [Participants <IMicrosoftGraphParticipant1[]>]: Read-only. Nullable.
    [Id <String>]: Read-only.
    [Info <IMicrosoftGraphParticipantInfo1>]: participantInfo
    [IsInLobby <Boolean?>]: true if the participant is in lobby.
    [IsMuted <Boolean?>]: true if the participant is muted (client or server muted).
    [MediaStreams <IMicrosoftGraphMediaStream1[]>]: The list of media streams.
      [Direction <String>]: mediaDirection
      [Label <String>]: The media stream label.
      [MediaType <String>]: 
      [ServerMuted <Boolean?>]: If the media is muted by the server.
      [SourceId <String>]: The source ID.
    [Metadata <String>]: A blob of data provided by the participant in the roster.
    [RecordingInfo <IMicrosoftGraphRecordingInfo1>]: recordingInfo
      [(Any) <Object>]: This indicates any property can be added to this object.
      [InitiatedBy <IMicrosoftGraphParticipantInfo1>]: participantInfo
      [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
      [RecordingStatus <String>]: recordingStatus
  [RequestedModalities <String[]>]: 
  [ResultInfo <IMicrosoftGraphResultInfo>]: resultInfo
  [RingingTimeoutInSeconds <Int32?>]: 
  [RoutingPolicies <String[]>]: 
  [Source <IMicrosoftGraphParticipantInfo1>]: participantInfo
  [State <String>]: 
  [Subject <String>]: 
  [Targets <IMicrosoftGraphInvitationParticipantInfo1[]>]: 
    [EndpointType <String>]: endpointType
    [Identity <IMicrosoftGraphIdentitySet>]: identitySet
    [ReplacesCallId <String>]: Optional. The call which the target identity is currently a part of. This call will be dropped once the participant is added.
  [TenantId <String>]: 
  [TerminationReason <String>]: 
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

MEDIACONFIG <IMicrosoftGraphMediaConfig1>: mediaConfig
  [(Any) <Object>]: This indicates any property can be added to this object.
  [RemoveFromDefaultAudioGroup <Boolean?>]: 

MEDIASTATE <IMicrosoftGraphCallMediaState>: callMediaState
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Audio <String>]: mediaState

MEETINGCAPABILITY <IMicrosoftGraphMeetingCapability>: meetingCapability
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AllowAnonymousUsersToDialOut <Boolean?>]: Indicates whether anonymous users dialout is allowed in a meeting.
  [AllowAnonymousUsersToStartMeeting <Boolean?>]: Indicates whether anonymous users are allowed to start a meeting.
  [AutoAdmittedUsers <String>]: autoAdmittedUsersType

MEETINGINFO <IMicrosoftGraphMeetingInfo1>: meetingInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AllowConversationWithoutHost <Boolean?>]: 

OPERATIONS <IMicrosoftGraphCommsOperation[]>: Read-only. Nullable.
  [Id <String>]: Read-only.
  [ClientContext <String>]: Unique Client Context string. Max limit is 256 chars.
  [ResultInfo <IMicrosoftGraphResultInfo>]: resultInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Code <Int32?>]: The result code.
    [Message <String>]: The message.
    [Subcode <Int32?>]: The result sub-code.
  [Status <String>]: operationStatus

PARTICIPANTS <IMicrosoftGraphParticipant1[]>: Read-only. Nullable.
  [Id <String>]: Read-only.
  [Info <IMicrosoftGraphParticipantInfo1>]: participantInfo
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
    [PlatformId <String>]: The client platform ID of the participant. Read-only.
    [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
  [IsInLobby <Boolean?>]: true if the participant is in lobby.
  [IsMuted <Boolean?>]: true if the participant is muted (client or server muted).
  [MediaStreams <IMicrosoftGraphMediaStream1[]>]: The list of media streams.
    [Direction <String>]: mediaDirection
    [Label <String>]: The media stream label.
    [MediaType <String>]: 
    [ServerMuted <Boolean?>]: If the media is muted by the server.
    [SourceId <String>]: The source ID.
  [Metadata <String>]: A blob of data provided by the participant in the roster.
  [RecordingInfo <IMicrosoftGraphRecordingInfo1>]: recordingInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [InitiatedBy <IMicrosoftGraphParticipantInfo1>]: participantInfo
    [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
    [RecordingStatus <String>]: recordingStatus

RESULTINFO <IMicrosoftGraphResultInfo>: resultInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Code <Int32?>]: The result code.
  [Message <String>]: The message.
  [Subcode <Int32?>]: The result sub-code.

SOURCE <IMicrosoftGraphParticipantInfo1>: participantInfo
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
  [PlatformId <String>]: The client platform ID of the participant. Read-only.
  [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.

TARGETS <IMicrosoftGraphInvitationParticipantInfo1[]>: .
  [EndpointType <String>]: endpointType
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1]
    # call
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The list of active modalities.
    # Possible values are: unknown, audio, video, videoBasedScreenSharing, data.
    # Read-only.
    ${ActiveModalities},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo1]
    # participantInfo
    # To construct, see NOTES section for ANSWEREDBY properties and create a hash table.
    ${AnsweredBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup[]]
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for AUDIOROUTINGGROUPS properties and create a hash table.
    ${AudioRoutingGroups},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A unique identifier for all the participant calls in a conference or a unique identifier for two participant calls in a P2P call.
    # This needs to be copied over from Microsoft.Graph.Call.CallChainId.
    ${CallChainId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallOptions]))]
    [System.Collections.Hashtable]
    # callOptions
    ${CallOptions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRoute[]]
    # The routing information on how the call was retargeted.
    # Read-only.
    # To construct, see NOTES section for CALLROUTES properties and create a hash table.
    ${CallRoutes},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The callback URL on which callbacks will be delivered.
    # Must be https.
    ${CallbackUri},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # callDirection
    ${Direction},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncomingContext]
    # incomingContext
    # To construct, see NOTES section for INCOMINGCONTEXT properties and create a hash table.
    ${IncomingContext},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaConfig1]
    # mediaConfig
    # To construct, see NOTES section for MEDIACONFIG properties and create a hash table.
    ${MediaConfig},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallMediaState]
    # callMediaState
    # To construct, see NOTES section for MEDIASTATE properties and create a hash table.
    ${MediaState},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingCapability]
    # meetingCapability
    # To construct, see NOTES section for MEETINGCAPABILITY properties and create a hash table.
    ${MeetingCapability},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingInfo1]
    # meetingInfo
    # To construct, see NOTES section for MEETINGINFO properties and create a hash table.
    ${MeetingInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${MyParticipantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation[]]
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for OPERATIONS properties and create a hash table.
    ${Operations},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1[]]
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${RequestedModalities},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${RingingTimeoutInSeconds},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${RoutingPolicies},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo1]
    # participantInfo
    # To construct, see NOTES section for SOURCE properties and create a hash table.
    ${Source},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${State},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo1[]]
    # .
    # To construct, see NOTES section for TARGETS properties and create a hash table.
    ${Targets},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${TenantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${TerminationReason},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphToneInfo]
    # toneInfo
    # To construct, see NOTES section for TONEINFO properties and create a hash table.
    ${ToneInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCall_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCall_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Custom registration questions.
.Description
Custom registration questions.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMeetingRegistrationQuestion>: meetingRegistrationQuestion
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AnswerInputType <String>]: answerInputType
  [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
  [DisplayName <String>]: Display name of the custom registration question.
  [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationonlinemeetingregistrationcustomquestion
#>
function New-MgCommunicationOnlineMeetingRegistrationCustomQuestion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion]
    # meetingRegistrationQuestion
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
    # answerInputType
    ${AnswerInputType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Answer options when answerInputType is radioButton.
    ${AnswerOptions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the custom registration question.
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
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the question is required.
    # Default value is false.
    ${IsRequired},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationCustomQuestion_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationCustomQuestion_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationCustomQuestion_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationCustomQuestion_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Registrants of the online meeting.
.Description
Registrants of the online meeting.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMeetingRegistrant>: meetingRegistrant
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
    [DisplayName <String>]: Display name of the custom registration question. Read-only.
    [QuestionId <String>]: ID the custom registration question. Read-only.
    [Value <String>]: Answer to the custom registration question.
  [Email <String>]: The email address of the registrant.
  [FirstName <String>]: The first name of the registrant.
  [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
  [LastName <String>]: The last name of the registrant.
  [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
  [Status <String>]: meetingRegistrantStatus

CUSTOMQUESTIONANSWERS <IMicrosoftGraphCustomQuestionAnswer[]>: The registrant's answer to custom questions.
  [DisplayName <String>]: Display name of the custom registration question. Read-only.
  [QuestionId <String>]: ID the custom registration question. Read-only.
  [Value <String>]: Answer to the custom registration question.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationonlinemeetingregistrationregistrant
#>
function New-MgCommunicationOnlineMeetingRegistrationRegistrant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant]
    # meetingRegistrant
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCustomQuestionAnswer[]]
    # The registrant's answer to custom questions.
    # To construct, see NOTES section for CUSTOMQUESTIONANSWERS properties and create a hash table.
    ${CustomQuestionAnswers},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The email address of the registrant.
    ${Email},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first name of the registrant.
    ${FirstName},

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
    # A unique web URL for the registrant to join the meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The last name of the registrant.
    ${LastName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time in UTC when the registrant registers for the meeting.
    # Read-only.
    ${RegistrationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingRegistrantStatus
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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationRegistrant_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationRegistrant_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationRegistrant_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationRegistrant_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [EndDateTime <DateTime?>]: 
  [ExternalId <String>]: 
  [Participants <IMicrosoftGraphMeetingParticipants1>]: meetingParticipants
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
    [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
    [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [StartDateTime <DateTime?>]: 
  [Subject <String>]: 

CHATINFO <IMicrosoftGraphChatInfo>: chatInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
  [ReplyChainMessageId <String>]: The ID of the reply message.
  [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.

PARTICIPANTS <IMicrosoftGraphMeetingParticipants1>: meetingParticipants
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
  [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationonlinemeeting
#>
function New-MgCommunicationOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded3', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ExternalId},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded3')]
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
            Create3 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeeting_Create3';
            CreateExpanded3 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeeting_CreateExpanded3';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPresence1>: presence
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Activity <String>]: The supplemental information to a user's availability. Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive, InAMeeting, Offline, OffWork, OutOfOffice, PresenceUnknown, Presenting, UrgentInterruptionsOnly.
  [Availability <String>]: The base presence information for a user. Possible values are Available, AvailableIdle,  Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
  [OutOfOfficeSettings <IMicrosoftGraphOutOfOfficeSettings>]: outOfOfficeSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsOutOfOffice <Boolean?>]: True if either:It is currently in the out of office time window configured on the Outlook or Teams client.There is currently an event on the user's calendar that's marked as Show as Out of OfficeOtherwise, false.
    [Message <String>]: The out of office message that the user configured on Outlook client (Automatic Replies (Out of Office)) or the Teams client (Schedule out of office).

OUTOFOFFICESETTINGS <IMicrosoftGraphOutOfOfficeSettings>: outOfOfficeSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsOutOfOffice <Boolean?>]: True if either:It is currently in the out of office time window configured on the Outlook or Teams client.There is currently an event on the user's calendar that's marked as Show as Out of OfficeOtherwise, false.
  [Message <String>]: The out of office message that the user configured on Outlook client (Automatic Replies (Out of Office)) or the Teams client (Schedule out of office).
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationpresence
#>
function New-MgCommunicationPresence {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1]
    # presence
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The supplemental information to a user's availability.
    # Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive, InAMeeting, Offline, OffWork, OutOfOffice, PresenceUnknown, Presenting, UrgentInterruptionsOnly.
    ${Activity},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The base presence information for a user.
    # Possible values are Available, AvailableIdle, Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
    ${Availability},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOutOfOfficeSettings]
    # outOfOfficeSettings
    # To construct, see NOTES section for OUTOFOFFICESETTINGS properties and create a hash table.
    ${OutOfOfficeSettings},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationPresence_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationPresence_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Custom registration questions.
.Description
Custom registration questions.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMeetingRegistrationQuestion>: meetingRegistrationQuestion
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AnswerInputType <String>]: answerInputType
  [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
  [DisplayName <String>]: Display name of the custom registration question.
  [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mguseronlinemeetingregistrationcustomquestion
#>
function New-MgUserOnlineMeetingRegistrationCustomQuestion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion]
    # meetingRegistrationQuestion
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
    # answerInputType
    ${AnswerInputType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Answer options when answerInputType is radioButton.
    ${AnswerOptions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the custom registration question.
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
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the question is required.
    # Default value is false.
    ${IsRequired},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationCustomQuestion_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationCustomQuestion_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationCustomQuestion_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationCustomQuestion_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Registrants of the online meeting.
.Description
Registrants of the online meeting.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMeetingRegistrant>: meetingRegistrant
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
    [DisplayName <String>]: Display name of the custom registration question. Read-only.
    [QuestionId <String>]: ID the custom registration question. Read-only.
    [Value <String>]: Answer to the custom registration question.
  [Email <String>]: The email address of the registrant.
  [FirstName <String>]: The first name of the registrant.
  [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
  [LastName <String>]: The last name of the registrant.
  [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
  [Status <String>]: meetingRegistrantStatus

CUSTOMQUESTIONANSWERS <IMicrosoftGraphCustomQuestionAnswer[]>: The registrant's answer to custom questions.
  [DisplayName <String>]: Display name of the custom registration question. Read-only.
  [QuestionId <String>]: ID the custom registration question. Read-only.
  [Value <String>]: Answer to the custom registration question.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mguseronlinemeetingregistrationregistrant
#>
function New-MgUserOnlineMeetingRegistrationRegistrant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant]
    # meetingRegistrant
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCustomQuestionAnswer[]]
    # The registrant's answer to custom questions.
    # To construct, see NOTES section for CUSTOMQUESTIONANSWERS properties and create a hash table.
    ${CustomQuestionAnswers},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The email address of the registrant.
    ${Email},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first name of the registrant.
    ${FirstName},

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
    # A unique web URL for the registrant to join the meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The last name of the registrant.
    ${LastName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time in UTC when the registrant registers for the meeting.
    # Read-only.
    ${RegistrationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingRegistrantStatus
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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationRegistrant_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationRegistrant_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationRegistrant_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationRegistrant_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
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

BODYPARAMETER <IMicrosoftGraphOnlineMeeting1>: onlineMeeting
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AccessLevel <String>]: accessLevel
  [AllowAttendeeToEnableCamera <Boolean?>]: Indicates whether attendees can turn on their camera.
  [AllowAttendeeToEnableMic <Boolean?>]: Indicates whether attendees can turn on their microphone.
  [AllowMeetingChat <String>]: meetingChatMode
  [AllowTeamworkReactions <Boolean?>]: Indicates whether Teams reactions are enabled for the meeting.
  [AllowedPresenters <String>]: onlineMeetingPresenters
  [AlternativeRecording <Byte[]>]: The content stream of the alternative recording of a live event. Read-only.
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
  [CanceledDateTime <DateTime?>]: 
  [Capabilities <String[]>]: 
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [CreationDateTime <DateTime?>]: The meeting creation time in UTC. Read-only.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [EntryExitAnnouncement <Boolean?>]: 
  [ExpirationDateTime <DateTime?>]: 
  [ExternalId <String>]: The external ID. A custom ID. Optional.
  [IsBroadcast <Boolean?>]: Indicates if this is a live event.
  [IsCancelled <Boolean?>]: 
  [IsEntryExitAnnounced <Boolean?>]: Indicates whether to announce when callers join or leave.
  [JoinInformation <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [JoinUrl <String>]: 
  [LobbyBypassSettings <IMicrosoftGraphLobbyBypassSettings>]: lobbyBypassSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
    [Scope <String>]: lobbyBypassScope
  [MeetingAttendanceReport <IMicrosoftGraphMeetingAttendanceReport>]: meetingAttendanceReport
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AttendanceRecords <IMicrosoftGraphAttendanceRecord[]>]: The list of attendance records.
      [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
        [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
        [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
        [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
      [EmailAddress <String>]: Email address.
      [Identity <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
      [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.
    [TotalParticipantCount <Int32?>]: Total number of participants.
  [Participants <IMicrosoftGraphMeetingParticipants1>]: meetingParticipants
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [Role <String>]: onlineMeetingRole
      [Upn <String>]: User principal name of the participant.
    [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
    [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [RecordAutomatically <Boolean?>]: Indicates whether to record the meeting automatically.
  [Recording <Byte[]>]: The content stream of the recording of a live event. Read-only.
  [Registration <IMicrosoftGraphMeetingRegistration>]: meetingRegistration
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AllowedRegistrant <String>]: meetingAudience
    [CustomQuestions <IMicrosoftGraphMeetingRegistrationQuestion[]>]: Custom registration questions.
      [Id <String>]: Read-only.
      [AnswerInputType <String>]: answerInputType
      [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
      [DisplayName <String>]: Display name of the custom registration question.
      [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.
    [Description <String>]: The description of the meeting.
    [EndDateTime <DateTime?>]: The meeting end time in UTC.
    [Registrants <IMicrosoftGraphMeetingRegistrant[]>]: Registrants of the online meeting.
      [Id <String>]: Read-only.
      [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
        [DisplayName <String>]: Display name of the custom registration question. Read-only.
        [QuestionId <String>]: ID the custom registration question. Read-only.
        [Value <String>]: Answer to the custom registration question.
      [Email <String>]: The email address of the registrant.
      [FirstName <String>]: The first name of the registrant.
      [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
      [LastName <String>]: The last name of the registrant.
      [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
      [Status <String>]: meetingRegistrantStatus
    [RegistrationPageViewCount <Int32?>]: The number of times the registration page has been visited. Read-only.
    [RegistrationPageWebUrl <String>]: The URL of the registration page. Read-only.
    [Speakers <IMicrosoftGraphMeetingSpeaker[]>]: The meeting speaker's information.
      [Bio <String>]: Bio of the speaker.
      [DisplayName <String>]: Display name of the speaker.
    [StartDateTime <DateTime?>]: The meeting start time in UTC.
    [Subject <String>]: The subject of the meeting.
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

MEETINGATTENDANCEREPORT <IMicrosoftGraphMeetingAttendanceReport>: meetingAttendanceReport
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AttendanceRecords <IMicrosoftGraphAttendanceRecord[]>]: The list of attendance records.
    [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
      [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
      [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
      [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
    [EmailAddress <String>]: Email address.
    [Identity <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
    [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.
  [TotalParticipantCount <Int32?>]: Total number of participants.

PARTICIPANTS <IMicrosoftGraphMeetingParticipants1>: meetingParticipants
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
  [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 

REGISTRATION <IMicrosoftGraphMeetingRegistration>: meetingRegistration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AllowedRegistrant <String>]: meetingAudience
  [CustomQuestions <IMicrosoftGraphMeetingRegistrationQuestion[]>]: Custom registration questions.
    [Id <String>]: Read-only.
    [AnswerInputType <String>]: answerInputType
    [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
    [DisplayName <String>]: Display name of the custom registration question.
    [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.
  [Description <String>]: The description of the meeting.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [Registrants <IMicrosoftGraphMeetingRegistrant[]>]: Registrants of the online meeting.
    [Id <String>]: Read-only.
    [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
      [DisplayName <String>]: Display name of the custom registration question. Read-only.
      [QuestionId <String>]: ID the custom registration question. Read-only.
      [Value <String>]: Answer to the custom registration question.
    [Email <String>]: The email address of the registrant.
    [FirstName <String>]: The first name of the registrant.
    [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
    [LastName <String>]: The last name of the registrant.
    [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
    [Status <String>]: meetingRegistrantStatus
  [RegistrationPageViewCount <Int32?>]: The number of times the registration page has been visited. Read-only.
  [RegistrationPageWebUrl <String>]: The URL of the registration page. Read-only.
  [Speakers <IMicrosoftGraphMeetingSpeaker[]>]: The meeting speaker's information.
    [Bio <String>]: Bio of the speaker.
    [DisplayName <String>]: Display name of the speaker.
  [StartDateTime <DateTime?>]: The meeting start time in UTC.
  [Subject <String>]: The subject of the meeting.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mguseronlinemeeting
#>
function New-MgUserOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1]
    # onlineMeeting
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # accessLevel
    ${AccessLevel},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingChatMode
    ${AllowMeetingChat},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AlternativeRecording (The content stream of the alternative recording of a live event.
    # Read-only.)
    ${AlternativeRecordingInputFile},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CanceledDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Capabilities},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${EntryExitAnnouncement},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

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
    # Indicates if this is a live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsCancelled},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinUrl},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport]
    # meetingAttendanceReport
    # To construct, see NOTES section for MEETINGATTENDANCEREPORT properties and create a hash table.
    ${MeetingAttendanceReport},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for Recording (The content stream of the recording of a live event.
    # Read-only.)
    ${RecordingInputFile},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
    # To construct, see NOTES section for REGISTRATION properties and create a hash table.
    ${Registration},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcallaudioroutinggroup
#>
function Remove-MgCommunicationCallAudioRoutingGroup {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of audioRoutingGroup
    ${AudioRoutingGroupId},

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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallAudioRoutingGroup_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallAudioRoutingGroup_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of commsOperation
    ${CommsOperationId},

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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallOperation_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallOperation_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallParticipant_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallParticipant_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of session
    ${SessionId},

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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallRecordSession_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallRecordSession_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCall_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCall_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The attendance report of an online meeting.
Read-only.
.Description
The attendance report of an online meeting.
Read-only.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeetingattendancereport
#>
function Remove-MgCommunicationOnlineMeetingAttendanceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingAttendanceReport_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingAttendanceReport_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Custom registration questions.
.Description
Custom registration questions.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeetingregistrationcustomquestion
#>
function Remove-MgCommunicationOnlineMeetingRegistrationCustomQuestion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingRegistrationCustomQuestion_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingRegistrationCustomQuestion_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Registrants of the online meeting.
.Description
Registrants of the online meeting.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeetingregistrationregistrant
#>
function Remove-MgCommunicationOnlineMeetingRegistrationRegistrant {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrant
    ${MeetingRegistrantId},

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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingRegistrationRegistrant_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingRegistrationRegistrant_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.
.Description
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeetingregistration
#>
function Remove-MgCommunicationOnlineMeetingRegistration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingRegistration_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingRegistration_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeeting_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeeting_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationPresence_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationPresence_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The attendance report of an online meeting.
Read-only.
.Description
The attendance report of an online meeting.
Read-only.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeetingattendancereport
#>
function Remove-MgUserOnlineMeetingAttendanceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingAttendanceReport_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingAttendanceReport_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Custom registration questions.
.Description
Custom registration questions.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeetingregistrationcustomquestion
#>
function Remove-MgUserOnlineMeetingRegistrationCustomQuestion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingRegistrationCustomQuestion_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingRegistrationCustomQuestion_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Registrants of the online meeting.
.Description
Registrants of the online meeting.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeetingregistrationregistrant
#>
function Remove-MgUserOnlineMeetingRegistrationRegistrant {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrant
    ${MeetingRegistrantId},

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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingRegistrationRegistrant_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingRegistrationRegistrant_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.
.Description
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeetingregistration
#>
function Remove-MgUserOnlineMeetingRegistration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingRegistration_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingRegistration_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeeting_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeeting_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserPresence_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserPresence_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='ChangeExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Change1', Mandatory)]
    [Parameter(ParameterSetName='ChangeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='ChangeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Change1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ChangeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsOj95ZpCommunicationsCallsCallIdMicrosoftGraphChangescreensharingrolePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ChangeExpanded1')]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ChangeExpanded1')]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded1')]
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
            Change1 = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_Change1';
            ChangeExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_ChangeExpanded1';
            ChangeViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_ChangeViaIdentity1';
            ChangeViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_ChangeViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mgcommunicationonlinemeetingalternativerecording
#>
function Set-MgCommunicationOnlineMeetingAlternativeRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingAlternativeRecording_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingAlternativeRecording_SetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Set1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Set1 = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingAttendeeReport_Set1';
            SetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingAttendeeReport_SetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mgcommunicationonlinemeetingrecording
#>
function Set-MgCommunicationOnlineMeetingRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingRecording_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingRecording_SetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='SetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsTm7IsmCommunicationsPresencesPresenceIdMicrosoftGraphSetpresencePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Activity},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Availability},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # .
    ${ExpirationDuration},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
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
            Set1 = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_Set1';
            SetExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_SetExpanded1';
            SetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_SetViaIdentity1';
            SetViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_SetViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mguseronlinemeetingalternativerecording
#>
function Set-MgUserOnlineMeetingAlternativeRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingAlternativeRecording_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingAlternativeRecording_SetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Set1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Set1 = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingAttendeeReport_Set1';
            SetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingAttendeeReport_SetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mguseronlinemeetingrecording
#>
function Set-MgUserOnlineMeetingRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingRecording_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingRecording_SetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='StartExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Start1', Mandatory)]
    [Parameter(ParameterSetName='StartExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Start1', Mandatory)]
    [Parameter(ParameterSetName='StartExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='StartViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StartViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Start1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StartViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsKtcw9WCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStartholdmusicPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='StartExpanded1')]
    [Parameter(ParameterSetName='StartViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='StartExpanded1')]
    [Parameter(ParameterSetName='StartViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='StartExpanded1')]
    [Parameter(ParameterSetName='StartViaIdentityExpanded1')]
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
            Start1 = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_Start1';
            StartExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_StartExpanded1';
            StartViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_StartViaIdentity1';
            StartViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_StartViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CancelExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Cancel1', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CancelViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Cancel1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsYp37FjCommunicationsCallsCallIdMicrosoftGraphCancelmediaprocessingPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CancelExpanded1')]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CancelExpanded1')]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded1')]
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
            Cancel1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_Cancel1';
            CancelExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_CancelExpanded1';
            CancelViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_CancelViaIdentity1';
            CancelViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_CancelViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='StopExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Stop1', Mandatory)]
    [Parameter(ParameterSetName='StopExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Stop1', Mandatory)]
    [Parameter(ParameterSetName='StopExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='StopViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StopViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Stop1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StopViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1AuzqgwCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStopholdmusicPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='StopExpanded1')]
    [Parameter(ParameterSetName='StopViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='StopExpanded1')]
    [Parameter(ParameterSetName='StopViaIdentityExpanded1')]
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
            Stop1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_Stop1';
            StopExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_StopExpanded1';
            StopViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_StopViaIdentity1';
            StopViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_StopViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAudioRoutingGroup>: audioRoutingGroup
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Receivers <String[]>]: List of receiving participant ids.
  [RoutingMode <String>]: routingMode
  [Sources <String[]>]: List of source participant ids.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcallaudioroutinggroup
#>
function Update-MgCommunicationCallAudioRoutingGroup {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of audioRoutingGroup
    ${AudioRoutingGroupId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup]
    # audioRoutingGroup
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
    [System.String[]]
    # List of receiving participant ids.
    ${Receivers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # routingMode
    ${RoutingMode},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of source participant ids.
    ${Sources},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallAudioRoutingGroup_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallAudioRoutingGroup_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallAudioRoutingGroup_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallAudioRoutingGroup_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of commsOperation
    ${CommsOperationId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation]
    # commsOperation
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
    # Unique Client Context string.
    # Max limit is 256 chars.
    ${ClientContext},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphParticipant1>: participant
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Info <IMicrosoftGraphParticipantInfo1>]: participantInfo
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
    [PlatformId <String>]: The client platform ID of the participant. Read-only.
    [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
  [IsInLobby <Boolean?>]: true if the participant is in lobby.
  [IsMuted <Boolean?>]: true if the participant is muted (client or server muted).
  [MediaStreams <IMicrosoftGraphMediaStream1[]>]: The list of media streams.
    [Direction <String>]: mediaDirection
    [Label <String>]: The media stream label.
    [MediaType <String>]: 
    [ServerMuted <Boolean?>]: If the media is muted by the server.
    [SourceId <String>]: The source ID.
  [Metadata <String>]: A blob of data provided by the participant in the roster.
  [RecordingInfo <IMicrosoftGraphRecordingInfo1>]: recordingInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [InitiatedBy <IMicrosoftGraphParticipantInfo1>]: participantInfo
    [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
    [RecordingStatus <String>]: recordingStatus

INFO <IMicrosoftGraphParticipantInfo1>: participantInfo
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
  [PlatformId <String>]: The client platform ID of the participant. Read-only.
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

MEDIASTREAMS <IMicrosoftGraphMediaStream1[]>: The list of media streams.
  [Direction <String>]: mediaDirection
  [Label <String>]: The media stream label.
  [MediaType <String>]: 
  [ServerMuted <Boolean?>]: If the media is muted by the server.
  [SourceId <String>]: The source ID.

RECORDINGINFO <IMicrosoftGraphRecordingInfo1>: recordingInfo
  [(Any) <Object>]: This indicates any property can be added to this object.
  [InitiatedBy <IMicrosoftGraphParticipantInfo1>]: participantInfo
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
    [PlatformId <String>]: The client platform ID of the participant. Read-only.
    [Region <String>]: The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
  [Initiator <IMicrosoftGraphIdentitySet>]: identitySet
  [RecordingStatus <String>]: recordingStatus
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcallparticipant
#>
function Update-MgCommunicationCallParticipant {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1]
    # participant
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo1]
    # participantInfo
    # To construct, see NOTES section for INFO properties and create a hash table.
    ${Info},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is in lobby.
    ${IsInLobby},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is muted (client or server muted).
    ${IsMuted},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaStream1[]]
    # The list of media streams.
    # To construct, see NOTES section for MEDIASTREAMS properties and create a hash table.
    ${MediaStreams},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A blob of data provided by the participant in the roster.
    ${Metadata},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordingInfo1]
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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

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
    [Microsoft.Graph.PowerShell.Models.IPathsEipedyCommunicationsCallsCallIdMicrosoftGraphUpdaterecordingstatusPostRequestbodyContentApplicationJsonSchema]
    # .
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
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of session
    ${SessionId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession]
    # session
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, see NOTES section for CALLEE properties and create a hash table.
    ${Callee},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, see NOTES section for CALLER properties and create a hash table.
    ${Caller},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the last user left the session.
    # The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsFailureInfo]
    # failureInfo
    # To construct, see NOTES section for FAILUREINFO properties and create a hash table.
    ${FailureInfo},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of modalities present in the session.
    # Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
    ${Modalities},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSegment[]]
    # The list of segments involved in the session.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SEGMENTS properties and create a hash table.
    ${Segments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The attendance report of an online meeting.
Read-only.
.Description
The attendance report of an online meeting.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ATTENDANCERECORDS <IMicrosoftGraphAttendanceRecord[]>: The list of attendance records.
  [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
    [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
    [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
    [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
  [EmailAddress <String>]: Email address.
  [Identity <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
  [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.

BODYPARAMETER <IMicrosoftGraphMeetingAttendanceReport>: meetingAttendanceReport
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AttendanceRecords <IMicrosoftGraphAttendanceRecord[]>]: The list of attendance records.
    [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
      [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
      [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
      [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
    [EmailAddress <String>]: Email address.
    [Identity <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
    [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.
  [TotalParticipantCount <Int32?>]: Total number of participants.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeetingattendancereport
#>
function Update-MgCommunicationOnlineMeetingAttendanceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport]
    # meetingAttendanceReport
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord[]]
    # The list of attendance records.
    # To construct, see NOTES section for ATTENDANCERECORDS properties and create a hash table.
    ${AttendanceRecords},

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
    # Total number of participants.
    ${TotalParticipantCount},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Custom registration questions.
.Description
Custom registration questions.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMeetingRegistrationQuestion>: meetingRegistrationQuestion
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AnswerInputType <String>]: answerInputType
  [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
  [DisplayName <String>]: Display name of the custom registration question.
  [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeetingregistrationcustomquestion
#>
function Update-MgCommunicationOnlineMeetingRegistrationCustomQuestion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion]
    # meetingRegistrationQuestion
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
    # answerInputType
    ${AnswerInputType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Answer options when answerInputType is radioButton.
    ${AnswerOptions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the custom registration question.
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
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the question is required.
    # Default value is false.
    ${IsRequired},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationCustomQuestion_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationCustomQuestion_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationCustomQuestion_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationCustomQuestion_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Registrants of the online meeting.
.Description
Registrants of the online meeting.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMeetingRegistrant>: meetingRegistrant
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
    [DisplayName <String>]: Display name of the custom registration question. Read-only.
    [QuestionId <String>]: ID the custom registration question. Read-only.
    [Value <String>]: Answer to the custom registration question.
  [Email <String>]: The email address of the registrant.
  [FirstName <String>]: The first name of the registrant.
  [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
  [LastName <String>]: The last name of the registrant.
  [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
  [Status <String>]: meetingRegistrantStatus

CUSTOMQUESTIONANSWERS <IMicrosoftGraphCustomQuestionAnswer[]>: The registrant's answer to custom questions.
  [DisplayName <String>]: Display name of the custom registration question. Read-only.
  [QuestionId <String>]: ID the custom registration question. Read-only.
  [Value <String>]: Answer to the custom registration question.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeetingregistrationregistrant
#>
function Update-MgCommunicationOnlineMeetingRegistrationRegistrant {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrant
    ${MeetingRegistrantId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant]
    # meetingRegistrant
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCustomQuestionAnswer[]]
    # The registrant's answer to custom questions.
    # To construct, see NOTES section for CUSTOMQUESTIONANSWERS properties and create a hash table.
    ${CustomQuestionAnswers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The email address of the registrant.
    ${Email},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first name of the registrant.
    ${FirstName},

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
    # A unique web URL for the registrant to join the meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The last name of the registrant.
    ${LastName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time in UTC when the registrant registers for the meeting.
    # Read-only.
    ${RegistrationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingRegistrantStatus
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationRegistrant_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationRegistrant_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationRegistrant_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationRegistrant_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.
.Description
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMeetingRegistration>: meetingRegistration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AllowedRegistrant <String>]: meetingAudience
  [CustomQuestions <IMicrosoftGraphMeetingRegistrationQuestion[]>]: Custom registration questions.
    [Id <String>]: Read-only.
    [AnswerInputType <String>]: answerInputType
    [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
    [DisplayName <String>]: Display name of the custom registration question.
    [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.
  [Description <String>]: The description of the meeting.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [Registrants <IMicrosoftGraphMeetingRegistrant[]>]: Registrants of the online meeting.
    [Id <String>]: Read-only.
    [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
      [DisplayName <String>]: Display name of the custom registration question. Read-only.
      [QuestionId <String>]: ID the custom registration question. Read-only.
      [Value <String>]: Answer to the custom registration question.
    [Email <String>]: The email address of the registrant.
    [FirstName <String>]: The first name of the registrant.
    [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
    [LastName <String>]: The last name of the registrant.
    [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
    [Status <String>]: meetingRegistrantStatus
  [RegistrationPageViewCount <Int32?>]: The number of times the registration page has been visited. Read-only.
  [RegistrationPageWebUrl <String>]: The URL of the registration page. Read-only.
  [Speakers <IMicrosoftGraphMeetingSpeaker[]>]: The meeting speaker's information.
    [Bio <String>]: Bio of the speaker.
    [DisplayName <String>]: Display name of the speaker.
  [StartDateTime <DateTime?>]: The meeting start time in UTC.
  [Subject <String>]: The subject of the meeting.

CUSTOMQUESTIONS <IMicrosoftGraphMeetingRegistrationQuestion[]>: Custom registration questions.
  [Id <String>]: Read-only.
  [AnswerInputType <String>]: answerInputType
  [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
  [DisplayName <String>]: Display name of the custom registration question.
  [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.

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

REGISTRANTS <IMicrosoftGraphMeetingRegistrant[]>: Registrants of the online meeting.
  [Id <String>]: Read-only.
  [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
    [DisplayName <String>]: Display name of the custom registration question. Read-only.
    [QuestionId <String>]: ID the custom registration question. Read-only.
    [Value <String>]: Answer to the custom registration question.
  [Email <String>]: The email address of the registrant.
  [FirstName <String>]: The first name of the registrant.
  [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
  [LastName <String>]: The last name of the registrant.
  [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
  [Status <String>]: meetingRegistrantStatus

SPEAKERS <IMicrosoftGraphMeetingSpeaker[]>: The meeting speaker's information.
  [Bio <String>]: Bio of the speaker.
  [DisplayName <String>]: Display name of the speaker.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeetingregistration
#>
function Update-MgCommunicationOnlineMeetingRegistration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
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
    # meetingAudience
    ${AllowedRegistrant},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion[]]
    # Custom registration questions.
    # To construct, see NOTES section for CUSTOMQUESTIONS properties and create a hash table.
    ${CustomQuestions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The description of the meeting.
    ${Description},

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
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant[]]
    # Registrants of the online meeting.
    # To construct, see NOTES section for REGISTRANTS properties and create a hash table.
    ${Registrants},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of times the registration page has been visited.
    # Read-only.
    ${RegistrationPageViewCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the registration page.
    # Read-only.
    ${RegistrationPageWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingSpeaker[]]
    # The meeting speaker's information.
    # To construct, see NOTES section for SPEAKERS properties and create a hash table.
    ${Speakers},

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
    # The subject of the meeting.
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistration_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistration_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistration_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistration_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
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

BODYPARAMETER <IMicrosoftGraphOnlineMeeting1>: onlineMeeting
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AccessLevel <String>]: accessLevel
  [AllowAttendeeToEnableCamera <Boolean?>]: Indicates whether attendees can turn on their camera.
  [AllowAttendeeToEnableMic <Boolean?>]: Indicates whether attendees can turn on their microphone.
  [AllowMeetingChat <String>]: meetingChatMode
  [AllowTeamworkReactions <Boolean?>]: Indicates whether Teams reactions are enabled for the meeting.
  [AllowedPresenters <String>]: onlineMeetingPresenters
  [AlternativeRecording <Byte[]>]: The content stream of the alternative recording of a live event. Read-only.
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
  [CanceledDateTime <DateTime?>]: 
  [Capabilities <String[]>]: 
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [CreationDateTime <DateTime?>]: The meeting creation time in UTC. Read-only.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [EntryExitAnnouncement <Boolean?>]: 
  [ExpirationDateTime <DateTime?>]: 
  [ExternalId <String>]: The external ID. A custom ID. Optional.
  [IsBroadcast <Boolean?>]: Indicates if this is a live event.
  [IsCancelled <Boolean?>]: 
  [IsEntryExitAnnounced <Boolean?>]: Indicates whether to announce when callers join or leave.
  [JoinInformation <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [JoinUrl <String>]: 
  [LobbyBypassSettings <IMicrosoftGraphLobbyBypassSettings>]: lobbyBypassSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
    [Scope <String>]: lobbyBypassScope
  [MeetingAttendanceReport <IMicrosoftGraphMeetingAttendanceReport>]: meetingAttendanceReport
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AttendanceRecords <IMicrosoftGraphAttendanceRecord[]>]: The list of attendance records.
      [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
        [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
        [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
        [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
      [EmailAddress <String>]: Email address.
      [Identity <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
      [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.
    [TotalParticipantCount <Int32?>]: Total number of participants.
  [Participants <IMicrosoftGraphMeetingParticipants1>]: meetingParticipants
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [Role <String>]: onlineMeetingRole
      [Upn <String>]: User principal name of the participant.
    [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
    [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [RecordAutomatically <Boolean?>]: Indicates whether to record the meeting automatically.
  [Recording <Byte[]>]: The content stream of the recording of a live event. Read-only.
  [Registration <IMicrosoftGraphMeetingRegistration>]: meetingRegistration
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AllowedRegistrant <String>]: meetingAudience
    [CustomQuestions <IMicrosoftGraphMeetingRegistrationQuestion[]>]: Custom registration questions.
      [Id <String>]: Read-only.
      [AnswerInputType <String>]: answerInputType
      [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
      [DisplayName <String>]: Display name of the custom registration question.
      [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.
    [Description <String>]: The description of the meeting.
    [EndDateTime <DateTime?>]: The meeting end time in UTC.
    [Registrants <IMicrosoftGraphMeetingRegistrant[]>]: Registrants of the online meeting.
      [Id <String>]: Read-only.
      [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
        [DisplayName <String>]: Display name of the custom registration question. Read-only.
        [QuestionId <String>]: ID the custom registration question. Read-only.
        [Value <String>]: Answer to the custom registration question.
      [Email <String>]: The email address of the registrant.
      [FirstName <String>]: The first name of the registrant.
      [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
      [LastName <String>]: The last name of the registrant.
      [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
      [Status <String>]: meetingRegistrantStatus
    [RegistrationPageViewCount <Int32?>]: The number of times the registration page has been visited. Read-only.
    [RegistrationPageWebUrl <String>]: The URL of the registration page. Read-only.
    [Speakers <IMicrosoftGraphMeetingSpeaker[]>]: The meeting speaker's information.
      [Bio <String>]: Bio of the speaker.
      [DisplayName <String>]: Display name of the speaker.
    [StartDateTime <DateTime?>]: The meeting start time in UTC.
    [Subject <String>]: The subject of the meeting.
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

MEETINGATTENDANCEREPORT <IMicrosoftGraphMeetingAttendanceReport>: meetingAttendanceReport
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AttendanceRecords <IMicrosoftGraphAttendanceRecord[]>]: The list of attendance records.
    [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
      [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
      [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
      [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
    [EmailAddress <String>]: Email address.
    [Identity <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
    [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.
  [TotalParticipantCount <Int32?>]: Total number of participants.

PARTICIPANTS <IMicrosoftGraphMeetingParticipants1>: meetingParticipants
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
  [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 

REGISTRATION <IMicrosoftGraphMeetingRegistration>: meetingRegistration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AllowedRegistrant <String>]: meetingAudience
  [CustomQuestions <IMicrosoftGraphMeetingRegistrationQuestion[]>]: Custom registration questions.
    [Id <String>]: Read-only.
    [AnswerInputType <String>]: answerInputType
    [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
    [DisplayName <String>]: Display name of the custom registration question.
    [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.
  [Description <String>]: The description of the meeting.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [Registrants <IMicrosoftGraphMeetingRegistrant[]>]: Registrants of the online meeting.
    [Id <String>]: Read-only.
    [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
      [DisplayName <String>]: Display name of the custom registration question. Read-only.
      [QuestionId <String>]: ID the custom registration question. Read-only.
      [Value <String>]: Answer to the custom registration question.
    [Email <String>]: The email address of the registrant.
    [FirstName <String>]: The first name of the registrant.
    [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
    [LastName <String>]: The last name of the registrant.
    [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
    [Status <String>]: meetingRegistrantStatus
  [RegistrationPageViewCount <Int32?>]: The number of times the registration page has been visited. Read-only.
  [RegistrationPageWebUrl <String>]: The URL of the registration page. Read-only.
  [Speakers <IMicrosoftGraphMeetingSpeaker[]>]: The meeting speaker's information.
    [Bio <String>]: Bio of the speaker.
    [DisplayName <String>]: Display name of the speaker.
  [StartDateTime <DateTime?>]: The meeting start time in UTC.
  [Subject <String>]: The subject of the meeting.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeeting
#>
function Update-MgCommunicationOnlineMeeting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1]
    # onlineMeeting
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # accessLevel
    ${AccessLevel},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingChatMode
    ${AllowMeetingChat},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AlternativeRecording (The content stream of the alternative recording of a live event.
    # Read-only.)
    ${AlternativeRecordingInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CanceledDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Capabilities},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${EntryExitAnnouncement},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

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
    # Indicates if this is a live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsCancelled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinUrl},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport]
    # meetingAttendanceReport
    # To construct, see NOTES section for MEETINGATTENDANCEREPORT properties and create a hash table.
    ${MeetingAttendanceReport},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for Recording (The content stream of the recording of a live event.
    # Read-only.)
    ${RecordingInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
    # To construct, see NOTES section for REGISTRATION properties and create a hash table.
    ${Registration},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPresence1>: presence
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Activity <String>]: The supplemental information to a user's availability. Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive, InAMeeting, Offline, OffWork, OutOfOffice, PresenceUnknown, Presenting, UrgentInterruptionsOnly.
  [Availability <String>]: The base presence information for a user. Possible values are Available, AvailableIdle,  Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
  [OutOfOfficeSettings <IMicrosoftGraphOutOfOfficeSettings>]: outOfOfficeSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsOutOfOffice <Boolean?>]: True if either:It is currently in the out of office time window configured on the Outlook or Teams client.There is currently an event on the user's calendar that's marked as Show as Out of OfficeOtherwise, false.
    [Message <String>]: The out of office message that the user configured on Outlook client (Automatic Replies (Out of Office)) or the Teams client (Schedule out of office).

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

OUTOFOFFICESETTINGS <IMicrosoftGraphOutOfOfficeSettings>: outOfOfficeSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsOutOfOffice <Boolean?>]: True if either:It is currently in the out of office time window configured on the Outlook or Teams client.There is currently an event on the user's calendar that's marked as Show as Out of OfficeOtherwise, false.
  [Message <String>]: The out of office message that the user configured on Outlook client (Automatic Replies (Out of Office)) or the Teams client (Schedule out of office).
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationpresence
#>
function Update-MgCommunicationPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1]
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

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOutOfOfficeSettings]
    # outOfOfficeSettings
    # To construct, see NOTES section for OUTOFOFFICESETTINGS properties and create a hash table.
    ${OutOfOfficeSettings},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The attendance report of an online meeting.
Read-only.
.Description
The attendance report of an online meeting.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ATTENDANCERECORDS <IMicrosoftGraphAttendanceRecord[]>: The list of attendance records.
  [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
    [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
    [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
    [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
  [EmailAddress <String>]: Email address.
  [Identity <IMicrosoftGraphIdentity>]: identity
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
    [Id <String>]: Unique identifier for the identity.
  [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
  [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.

BODYPARAMETER <IMicrosoftGraphMeetingAttendanceReport>: meetingAttendanceReport
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AttendanceRecords <IMicrosoftGraphAttendanceRecord[]>]: The list of attendance records.
    [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
      [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
      [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
      [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
    [EmailAddress <String>]: Email address.
    [Identity <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
    [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.
  [TotalParticipantCount <Int32?>]: Total number of participants.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeetingattendancereport
#>
function Update-MgUserOnlineMeetingAttendanceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport]
    # meetingAttendanceReport
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord[]]
    # The list of attendance records.
    # To construct, see NOTES section for ATTENDANCERECORDS properties and create a hash table.
    ${AttendanceRecords},

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
    # Total number of participants.
    ${TotalParticipantCount},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Custom registration questions.
.Description
Custom registration questions.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMeetingRegistrationQuestion>: meetingRegistrationQuestion
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AnswerInputType <String>]: answerInputType
  [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
  [DisplayName <String>]: Display name of the custom registration question.
  [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeetingregistrationcustomquestion
#>
function Update-MgUserOnlineMeetingRegistrationCustomQuestion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion]
    # meetingRegistrationQuestion
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
    # answerInputType
    ${AnswerInputType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Answer options when answerInputType is radioButton.
    ${AnswerOptions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the custom registration question.
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
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the question is required.
    # Default value is false.
    ${IsRequired},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationCustomQuestion_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationCustomQuestion_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationCustomQuestion_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationCustomQuestion_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Registrants of the online meeting.
.Description
Registrants of the online meeting.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMeetingRegistrant>: meetingRegistrant
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
    [DisplayName <String>]: Display name of the custom registration question. Read-only.
    [QuestionId <String>]: ID the custom registration question. Read-only.
    [Value <String>]: Answer to the custom registration question.
  [Email <String>]: The email address of the registrant.
  [FirstName <String>]: The first name of the registrant.
  [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
  [LastName <String>]: The last name of the registrant.
  [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
  [Status <String>]: meetingRegistrantStatus

CUSTOMQUESTIONANSWERS <IMicrosoftGraphCustomQuestionAnswer[]>: The registrant's answer to custom questions.
  [DisplayName <String>]: Display name of the custom registration question. Read-only.
  [QuestionId <String>]: ID the custom registration question. Read-only.
  [Value <String>]: Answer to the custom registration question.

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeetingregistrationregistrant
#>
function Update-MgUserOnlineMeetingRegistrationRegistrant {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrant
    ${MeetingRegistrantId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant]
    # meetingRegistrant
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCustomQuestionAnswer[]]
    # The registrant's answer to custom questions.
    # To construct, see NOTES section for CUSTOMQUESTIONANSWERS properties and create a hash table.
    ${CustomQuestionAnswers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The email address of the registrant.
    ${Email},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first name of the registrant.
    ${FirstName},

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
    # A unique web URL for the registrant to join the meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The last name of the registrant.
    ${LastName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time in UTC when the registrant registers for the meeting.
    # Read-only.
    ${RegistrationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingRegistrantStatus
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationRegistrant_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationRegistrant_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationRegistrant_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationRegistrant_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.
.Description
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMeetingRegistration>: meetingRegistration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AllowedRegistrant <String>]: meetingAudience
  [CustomQuestions <IMicrosoftGraphMeetingRegistrationQuestion[]>]: Custom registration questions.
    [Id <String>]: Read-only.
    [AnswerInputType <String>]: answerInputType
    [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
    [DisplayName <String>]: Display name of the custom registration question.
    [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.
  [Description <String>]: The description of the meeting.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [Registrants <IMicrosoftGraphMeetingRegistrant[]>]: Registrants of the online meeting.
    [Id <String>]: Read-only.
    [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
      [DisplayName <String>]: Display name of the custom registration question. Read-only.
      [QuestionId <String>]: ID the custom registration question. Read-only.
      [Value <String>]: Answer to the custom registration question.
    [Email <String>]: The email address of the registrant.
    [FirstName <String>]: The first name of the registrant.
    [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
    [LastName <String>]: The last name of the registrant.
    [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
    [Status <String>]: meetingRegistrantStatus
  [RegistrationPageViewCount <Int32?>]: The number of times the registration page has been visited. Read-only.
  [RegistrationPageWebUrl <String>]: The URL of the registration page. Read-only.
  [Speakers <IMicrosoftGraphMeetingSpeaker[]>]: The meeting speaker's information.
    [Bio <String>]: Bio of the speaker.
    [DisplayName <String>]: Display name of the speaker.
  [StartDateTime <DateTime?>]: The meeting start time in UTC.
  [Subject <String>]: The subject of the meeting.

CUSTOMQUESTIONS <IMicrosoftGraphMeetingRegistrationQuestion[]>: Custom registration questions.
  [Id <String>]: Read-only.
  [AnswerInputType <String>]: answerInputType
  [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
  [DisplayName <String>]: Display name of the custom registration question.
  [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.

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

REGISTRANTS <IMicrosoftGraphMeetingRegistrant[]>: Registrants of the online meeting.
  [Id <String>]: Read-only.
  [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
    [DisplayName <String>]: Display name of the custom registration question. Read-only.
    [QuestionId <String>]: ID the custom registration question. Read-only.
    [Value <String>]: Answer to the custom registration question.
  [Email <String>]: The email address of the registrant.
  [FirstName <String>]: The first name of the registrant.
  [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
  [LastName <String>]: The last name of the registrant.
  [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
  [Status <String>]: meetingRegistrantStatus

SPEAKERS <IMicrosoftGraphMeetingSpeaker[]>: The meeting speaker's information.
  [Bio <String>]: Bio of the speaker.
  [DisplayName <String>]: Display name of the speaker.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeetingregistration
#>
function Update-MgUserOnlineMeetingRegistration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
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
    # meetingAudience
    ${AllowedRegistrant},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion[]]
    # Custom registration questions.
    # To construct, see NOTES section for CUSTOMQUESTIONS properties and create a hash table.
    ${CustomQuestions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The description of the meeting.
    ${Description},

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
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrant[]]
    # Registrants of the online meeting.
    # To construct, see NOTES section for REGISTRANTS properties and create a hash table.
    ${Registrants},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of times the registration page has been visited.
    # Read-only.
    ${RegistrationPageViewCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the registration page.
    # Read-only.
    ${RegistrationPageWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingSpeaker[]]
    # The meeting speaker's information.
    # To construct, see NOTES section for SPEAKERS properties and create a hash table.
    ${Speakers},

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
    # The subject of the meeting.
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistration_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistration_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistration_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistration_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
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

BODYPARAMETER <IMicrosoftGraphOnlineMeeting1>: onlineMeeting
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AccessLevel <String>]: accessLevel
  [AllowAttendeeToEnableCamera <Boolean?>]: Indicates whether attendees can turn on their camera.
  [AllowAttendeeToEnableMic <Boolean?>]: Indicates whether attendees can turn on their microphone.
  [AllowMeetingChat <String>]: meetingChatMode
  [AllowTeamworkReactions <Boolean?>]: Indicates whether Teams reactions are enabled for the meeting.
  [AllowedPresenters <String>]: onlineMeetingPresenters
  [AlternativeRecording <Byte[]>]: The content stream of the alternative recording of a live event. Read-only.
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
  [CanceledDateTime <DateTime?>]: 
  [Capabilities <String[]>]: 
  [ChatInfo <IMicrosoftGraphChatInfo>]: chatInfo
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MessageId <String>]: The unique identifier of a message in a Microsoft Teams channel.
    [ReplyChainMessageId <String>]: The ID of the reply message.
    [ThreadId <String>]: The unique identifier for a thread in Microsoft Teams.
  [CreationDateTime <DateTime?>]: The meeting creation time in UTC. Read-only.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [EntryExitAnnouncement <Boolean?>]: 
  [ExpirationDateTime <DateTime?>]: 
  [ExternalId <String>]: The external ID. A custom ID. Optional.
  [IsBroadcast <Boolean?>]: Indicates if this is a live event.
  [IsCancelled <Boolean?>]: 
  [IsEntryExitAnnounced <Boolean?>]: Indicates whether to announce when callers join or leave.
  [JoinInformation <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [JoinUrl <String>]: 
  [LobbyBypassSettings <IMicrosoftGraphLobbyBypassSettings>]: lobbyBypassSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsDialInBypassEnabled <Boolean?>]: Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
    [Scope <String>]: lobbyBypassScope
  [MeetingAttendanceReport <IMicrosoftGraphMeetingAttendanceReport>]: meetingAttendanceReport
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AttendanceRecords <IMicrosoftGraphAttendanceRecord[]>]: The list of attendance records.
      [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
        [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
        [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
        [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
      [EmailAddress <String>]: Email address.
      [Identity <IMicrosoftGraphIdentity>]: identity
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
        [Id <String>]: Unique identifier for the identity.
      [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
      [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.
    [TotalParticipantCount <Int32?>]: Total number of participants.
  [Participants <IMicrosoftGraphMeetingParticipants1>]: meetingParticipants
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Attendees <IMicrosoftGraphMeetingParticipantInfo[]>]: Information of the meeting attendees.
      [Identity <IMicrosoftGraphIdentitySet>]: identitySet
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Application <IMicrosoftGraphIdentity>]: identity
        [Device <IMicrosoftGraphIdentity>]: identity
        [User <IMicrosoftGraphIdentity>]: identity
      [Role <String>]: onlineMeetingRole
      [Upn <String>]: User principal name of the participant.
    [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
    [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
    [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [RecordAutomatically <Boolean?>]: Indicates whether to record the meeting automatically.
  [Recording <Byte[]>]: The content stream of the recording of a live event. Read-only.
  [Registration <IMicrosoftGraphMeetingRegistration>]: meetingRegistration
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Id <String>]: Read-only.
    [AllowedRegistrant <String>]: meetingAudience
    [CustomQuestions <IMicrosoftGraphMeetingRegistrationQuestion[]>]: Custom registration questions.
      [Id <String>]: Read-only.
      [AnswerInputType <String>]: answerInputType
      [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
      [DisplayName <String>]: Display name of the custom registration question.
      [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.
    [Description <String>]: The description of the meeting.
    [EndDateTime <DateTime?>]: The meeting end time in UTC.
    [Registrants <IMicrosoftGraphMeetingRegistrant[]>]: Registrants of the online meeting.
      [Id <String>]: Read-only.
      [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
        [DisplayName <String>]: Display name of the custom registration question. Read-only.
        [QuestionId <String>]: ID the custom registration question. Read-only.
        [Value <String>]: Answer to the custom registration question.
      [Email <String>]: The email address of the registrant.
      [FirstName <String>]: The first name of the registrant.
      [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
      [LastName <String>]: The last name of the registrant.
      [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
      [Status <String>]: meetingRegistrantStatus
    [RegistrationPageViewCount <Int32?>]: The number of times the registration page has been visited. Read-only.
    [RegistrationPageWebUrl <String>]: The URL of the registration page. Read-only.
    [Speakers <IMicrosoftGraphMeetingSpeaker[]>]: The meeting speaker's information.
      [Bio <String>]: Bio of the speaker.
      [DisplayName <String>]: Display name of the speaker.
    [StartDateTime <DateTime?>]: The meeting start time in UTC.
    [Subject <String>]: The subject of the meeting.
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

MEETINGATTENDANCEREPORT <IMicrosoftGraphMeetingAttendanceReport>: meetingAttendanceReport
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AttendanceRecords <IMicrosoftGraphAttendanceRecord[]>]: The list of attendance records.
    [AttendanceIntervals <IMicrosoftGraphAttendanceInterval[]>]: List of time periods between joining and leaving.
      [DurationInSeconds <Int32?>]: Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
      [JoinDateTime <DateTime?>]: Time attendee joined in UTC.
      [LeaveDateTime <DateTime?>]: Time attendee left in UTC.
    [EmailAddress <String>]: Email address.
    [Identity <IMicrosoftGraphIdentity>]: identity
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DisplayName <String>]: The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using delta.
      [Id <String>]: Unique identifier for the identity.
    [Role <String>]: Role of the attendee. Possible values are None, Attendee, Presenter, and Organizer.
    [TotalAttendanceInSeconds <Int32?>]: Total duration of the attendances in seconds.
  [TotalParticipantCount <Int32?>]: Total number of participants.

PARTICIPANTS <IMicrosoftGraphMeetingParticipants1>: meetingParticipants
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
  [Contributors <IMicrosoftGraphMeetingParticipantInfo[]>]: 
  [Organizer <IMicrosoftGraphMeetingParticipantInfo>]: meetingParticipantInfo
  [Producers <IMicrosoftGraphMeetingParticipantInfo[]>]: 

REGISTRATION <IMicrosoftGraphMeetingRegistration>: meetingRegistration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AllowedRegistrant <String>]: meetingAudience
  [CustomQuestions <IMicrosoftGraphMeetingRegistrationQuestion[]>]: Custom registration questions.
    [Id <String>]: Read-only.
    [AnswerInputType <String>]: answerInputType
    [AnswerOptions <String[]>]: Answer options when answerInputType is radioButton.
    [DisplayName <String>]: Display name of the custom registration question.
    [IsRequired <Boolean?>]: Indicates whether the question is required. Default value is false.
  [Description <String>]: The description of the meeting.
  [EndDateTime <DateTime?>]: The meeting end time in UTC.
  [Registrants <IMicrosoftGraphMeetingRegistrant[]>]: Registrants of the online meeting.
    [Id <String>]: Read-only.
    [CustomQuestionAnswers <IMicrosoftGraphCustomQuestionAnswer[]>]: The registrant's answer to custom questions.
      [DisplayName <String>]: Display name of the custom registration question. Read-only.
      [QuestionId <String>]: ID the custom registration question. Read-only.
      [Value <String>]: Answer to the custom registration question.
    [Email <String>]: The email address of the registrant.
    [FirstName <String>]: The first name of the registrant.
    [JoinWebUrl <String>]: A unique web URL for the registrant to join the meeting. Read-only.
    [LastName <String>]: The last name of the registrant.
    [RegistrationDateTime <DateTime?>]: Time in UTC when the registrant registers for the meeting. Read-only.
    [Status <String>]: meetingRegistrantStatus
  [RegistrationPageViewCount <Int32?>]: The number of times the registration page has been visited. Read-only.
  [RegistrationPageWebUrl <String>]: The URL of the registration page. Read-only.
  [Speakers <IMicrosoftGraphMeetingSpeaker[]>]: The meeting speaker's information.
    [Bio <String>]: Bio of the speaker.
    [DisplayName <String>]: Display name of the speaker.
  [StartDateTime <DateTime?>]: The meeting start time in UTC.
  [Subject <String>]: The subject of the meeting.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeeting
#>
function Update-MgUserOnlineMeeting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1]
    # onlineMeeting
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # accessLevel
    ${AccessLevel},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # meetingChatMode
    ${AllowMeetingChat},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AlternativeRecording (The content stream of the alternative recording of a live event.
    # Read-only.)
    ${AlternativeRecordingInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CanceledDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Capabilities},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${EntryExitAnnouncement},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

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
    # Indicates if this is a live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsCancelled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinUrl},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport]
    # meetingAttendanceReport
    # To construct, see NOTES section for MEETINGATTENDANCEREPORT properties and create a hash table.
    ${MeetingAttendanceReport},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for Recording (The content stream of the recording of a live event.
    # Read-only.)
    ${RecordingInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
    # To construct, see NOTES section for REGISTRATION properties and create a hash table.
    ${Registration},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphPresence1>: presence
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Activity <String>]: The supplemental information to a user's availability. Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive, InAMeeting, Offline, OffWork, OutOfOffice, PresenceUnknown, Presenting, UrgentInterruptionsOnly.
  [Availability <String>]: The base presence information for a user. Possible values are Available, AvailableIdle,  Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
  [OutOfOfficeSettings <IMicrosoftGraphOutOfOfficeSettings>]: outOfOfficeSettings
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsOutOfOffice <Boolean?>]: True if either:It is currently in the out of office time window configured on the Outlook or Teams client.There is currently an event on the user's calendar that's marked as Show as Out of OfficeOtherwise, false.
    [Message <String>]: The out of office message that the user configured on Outlook client (Automatic Replies (Out of Office)) or the Teams client (Schedule out of office).

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

OUTOFOFFICESETTINGS <IMicrosoftGraphOutOfOfficeSettings>: outOfOfficeSettings
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsOutOfOffice <Boolean?>]: True if either:It is currently in the out of office time window configured on the Outlook or Teams client.There is currently an event on the user's calendar that's marked as Show as Out of OfficeOtherwise, false.
  [Message <String>]: The out of office message that the user configured on Outlook client (Automatic Replies (Out of Office)) or the Teams client (Schedule out of office).
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguserpresence
#>
function Update-MgUserPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1]
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

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOutOfOfficeSettings]
    # outOfOfficeSettings
    # To construct, see NOTES section for OUTOFOFFICESETTINGS properties and create a hash table.
    ${OutOfOfficeSettings},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDPCAPm7s3a9XQ+
# OlG08qbXttPonKfuC9iGeBA69L5xBKCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgjVlVvqkz
# 0lsEWWwOTq9kjTFR2Yf1exwT0KzIZO1fgX0wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQC0NzqP92Uh9YXrYxPoLl1rR/hGt7dRGJMH7OjahPO5
# 6pZLtm9Ptm5E6IBQIZ0JxWsLocC1Lt1IcN1FWU3iuoMu2hPA9QsS/zNz08pt2qkI
# xkKkNpt6+8tn8M6aEGlqZDqWAL3gNxrtz2O2WXd8EqKFQFLanfDY3XfzZX6CUA0H
# F5ub+/1kNn84+hpQACNM2OwiXY3AieaYO6geKKO2Zz7SUzV5cfQu5FIkO4ehMHVb
# wHnRLvKAt3l1lV53H0Lm5kOtaGN/zYVfRejciOrKuBGJoZxlVDwRVdYvDd/gVK75
# 1pGoi4BGVj8bn35MY45lw0Ei4BtU+esN2nAmsFTMS0KSoYIS/jCCEvoGCisGAQQB
# gjcDAwExghLqMIIS5gYJKoZIhvcNAQcCoIIS1zCCEtMCAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIC9aAW9tM8meRv6oi1o6Hw7qzs1MqKTpeQ5brNiM
# 4o3BAgZhcIeMkWQYEzIwMjExMDI3MDcxMTI0LjM2NFowBIACAfSggdikgdUwgdIx
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
# AQQwLwYJKoZIhvcNAQkEMSIEIK+AaRbTQoiI5Z4ehchb28zVSL3Nm8Y2raUPvXHq
# IrGfMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgn6/QhAepLF/7Bdsvfu8G
# OT+ihL9c4cgo5Nf1aUN8tG0wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAATqNjTH3d0lJwgAAAAABOjAiBCCad1sT4fODZN4IPSh9v6at
# bbtTBV3axXkL6x81mXZBgDANBgkqhkiG9w0BAQsFAASCAQAOIIvC4lMDX0T429Cn
# Wdk7jPdBnR/a9Qu3rgps4vx5/zneca3jgJ8cxcZ+0MCGFeZq5SyaTJDPLpU+7GsD
# 2bNGOGw6D9M1QdlaPfOR++SgSP1Cd5LgUKVmtlWUHAKoaVEeZg+C3apwNd/MbFK9
# OhedCBYRvQ/FvBEgtyCQ7kDRINXoIyXD51D7E0zuAuaVZ6G3KsDK1ur6quQt5TOW
# KzXm9jsxmrfYB3iRCy3iNdh1ifrMTNNBqwunqHvMpbhyg75iYPc+jXA/f4fccxN1
# BkAYfwQ8qzZnd8dE4EW6BdIngK0sA6GSkUmcty+Pq1dgD6EWPwb7s3pNvjxiPrjT
# yr/y
# SIG # End signature block
