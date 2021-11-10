
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of alert
    ${AlertId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityAlert_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityAlert_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecurityAlert_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScoreControlProfile
    ${SecureScoreControlProfileId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScoreControlProfile_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScoreControlProfile_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScoreControlProfile_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScore
    ${SecureScoreId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScore_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScore_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScore_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert]
    # alert
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name or alias of the activity group (attacker) this alert is attributed to.
    ${ActivityGroupName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertDetection[]]
    # .
    # To construct, see NOTES section for ALERTDETECTIONS properties and create a hash table.
    ${AlertDetections},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name of the analyst the alert is assigned to for triage, investigation, or remediation (supports update).
    ${AssignedTo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure subscription ID, present if this alert is related to an Azure resource.
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure Active Directory tenant ID.
    # Required.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Category of the alert (for example, credentialTheft, ransomware, etc.).
    ${Category},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was closed.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z (supports update).
    ${ClosedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityState[]]
    # Security-related stateful information generated by the provider about the cloud application/s related to this alert.
    # To construct, see NOTES section for CLOUDAPPSTATES properties and create a hash table.
    ${CloudAppStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Customer-provided comments on alert (for customer alert management) (supports update).
    ${Comments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Confidence of the detection logic (percentage between 1-100).
    ${Confidence},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was created by the alert provider.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert description.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Set of alerts related to this alert entity (each alert is pushed to the SIEM as a separate record).
    ${DetectionIds},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the event(s) that served as the trigger(s) to generate the alert occurred.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${EventDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertFeedback
    ${Feedback},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityState[]]
    # Security-related stateful information generated by the provider about the file(s) related to this alert.
    # To construct, see NOTES section for FILESTATES properties and create a hash table.
    ${FileStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertHistoryState[]]
    # A collection of alertHistoryStates comprising an audit log of all updates made to an alert.
    # To construct, see NOTES section for HISTORYSTATES properties and create a hash table.
    ${HistoryStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityState[]]
    # Security-related stateful information generated by the provider about the host(s) related to this alert.
    # To construct, see NOTES section for HOSTSTATES properties and create a hash table.
    ${HostStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # IDs of incidents related to current alert.
    ${IncidentIds},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvestigationSecurityState[]]
    # .
    # To construct, see NOTES section for INVESTIGATIONSECURITYSTATES properties and create a hash table.
    ${InvestigationSecurityStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastEventDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert entity was last modified.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMalwareState[]]
    # Threat Intelligence pertaining to malware related to this alert.
    # To construct, see NOTES section for MALWARESTATES properties and create a hash table.
    ${MalwareStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageSecurityState[]]
    # .
    # To construct, see NOTES section for MESSAGESECURITYSTATES properties and create a hash table.
    ${MessageSecurityStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphNetworkConnection[]]
    # Security-related stateful information generated by the provider about the network connection(s) related to this alert.
    # To construct, see NOTES section for NETWORKCONNECTIONS properties and create a hash table.
    ${NetworkConnections},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProcess[]]
    # Security-related stateful information generated by the provider about the process or processes related to this alert.
    # To construct, see NOTES section for PROCESSES properties and create a hash table.
    ${Processes},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Vendor/provider recommended action(s) to take as a result of the alert (for example, isolate machine, enforce2FA, reimage host).
    ${RecommendedActions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRegistryKeyState[]]
    # Security-related stateful information generated by the provider about the registry keys related to this alert.
    # To construct, see NOTES section for REGISTRYKEYSTATES properties and create a hash table.
    ${RegistryKeyStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityResource[]]
    # Resources related to current alert.
    # For example, for some alerts this can have the Azure Resource value.
    # To construct, see NOTES section for SECURITYRESOURCES properties and create a hash table.
    ${SecurityResources},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertSeverity
    ${Severity},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Hyperlinks (URIs) to the source material related to the alert, for example, provider's user interface for alerts or log search, etc.
    ${SourceMaterials},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertStatus
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # User-definable labels that can be applied to an alert and can serve as filter conditions (for example 'HVA', 'SAW', etc.) (supports update).
    ${Tags},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert title.
    # Required.
    ${Title},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertTrigger[]]
    # Security-related information about the specific properties that triggered the alert (properties appearing in the alert).
    # Alerts might contain information about multiple users, hosts, files, ip addresses.
    # This field indicates which properties triggered the alert generation.
    # To construct, see NOTES section for TRIGGERS properties and create a hash table.
    ${Triggers},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUriClickSecurityState[]]
    # .
    # To construct, see NOTES section for URICLICKSECURITYSTATES properties and create a hash table.
    ${UriClickSecurityStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityState[]]
    # Security-related stateful information generated by the provider about the user accounts related to this alert.
    # To construct, see NOTES section for USERSTATES properties and create a hash table.
    ${UserStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(ParameterSetName='CreateExpanded1')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecurityAlert_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityAlert_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile]
    # secureScoreControlProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action type (Config, Review, Behavior).
    ${ActionType},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # URL to where the control can be actioned.
    ${ActionUrl},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceInformation[]]
    # The collection of compliance information associated with secure score control
    # To construct, see NOTES section for COMPLIANCEINFORMATION properties and create a hash table.
    ${ComplianceInformation},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action category (Identity, Data, Device, Apps, Infrastructure).
    ${ControlCategory},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlStateUpdate[]]
    # Flag to indicate where the tenant has marked a control (ignore, thirdParty, reviewed) (supports update).
    # To construct, see NOTES section for CONTROLSTATEUPDATES properties and create a hash table.
    ${ControlStateUpdates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag to indicate if a control is depreciated.
    ${Deprecated},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Resource cost of implemmentating control (low, moderate, high).
    ${ImplementationCost},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the control profile entity was last modified.
    # The Timestamp type represents date and time
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # max attainable score for the control.
    ${MaxScore},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Microsoft's stack ranking of control.
    ${Rank},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of what the control will help remediate.
    ${Remediation},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the impact on users of the remediation.
    ${RemediationImpact},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Service that owns the control (Exchange, Sharepoint, Azure AD).
    ${Service},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
    ${Threats},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control tier (Core, Defense in Depth, Advanced.)
    ${Tier},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the control.
    ${Title},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # User impact of implementing control (low, moderate, high).
    ${UserImpact},

    [Parameter(ParameterSetName='CreateExpanded1')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScoreControlProfile_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScoreControlProfile_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore]
    # secureScore
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Active user count of the given tenant.
    ${ActiveUserCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAverageComparativeScore[]]
    # Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
    # To construct, see NOTES section for AVERAGECOMPARATIVESCORES properties and create a hash table.
    ${AverageComparativeScores},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphControlScore[]]
    # Contains tenant scores for a set of controls.
    # To construct, see NOTES section for CONTROLSCORES properties and create a hash table.
    ${ControlScores},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date when the entity is created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant current attained score on specified date.
    ${CurrentScore},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
    ${EnabledServices},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Licensed user count of the given tenant.
    ${LicensedUserCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant maximum possible score on specified date.
    ${MaxScore},

    [Parameter(ParameterSetName='CreateExpanded1')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScore_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScore_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of alert
    ${AlertId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityAlert_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityAlert_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScoreControlProfile
    ${SecureScoreControlProfileId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScoreControlProfile_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScoreControlProfile_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScore
    ${SecureScoreId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScore_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScore_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update2', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of alert
    ${AlertId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert]
    # alert
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name or alias of the activity group (attacker) this alert is attributed to.
    ${ActivityGroupName},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertDetection[]]
    # .
    # To construct, see NOTES section for ALERTDETECTIONS properties and create a hash table.
    ${AlertDetections},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name of the analyst the alert is assigned to for triage, investigation, or remediation (supports update).
    ${AssignedTo},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure subscription ID, present if this alert is related to an Azure resource.
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure Active Directory tenant ID.
    # Required.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Category of the alert (for example, credentialTheft, ransomware, etc.).
    ${Category},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was closed.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z (supports update).
    ${ClosedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityState[]]
    # Security-related stateful information generated by the provider about the cloud application/s related to this alert.
    # To construct, see NOTES section for CLOUDAPPSTATES properties and create a hash table.
    ${CloudAppStates},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Customer-provided comments on alert (for customer alert management) (supports update).
    ${Comments},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Confidence of the detection logic (percentage between 1-100).
    ${Confidence},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was created by the alert provider.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert description.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Set of alerts related to this alert entity (each alert is pushed to the SIEM as a separate record).
    ${DetectionIds},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the event(s) that served as the trigger(s) to generate the alert occurred.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${EventDateTime},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertFeedback
    ${Feedback},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityState[]]
    # Security-related stateful information generated by the provider about the file(s) related to this alert.
    # To construct, see NOTES section for FILESTATES properties and create a hash table.
    ${FileStates},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertHistoryState[]]
    # A collection of alertHistoryStates comprising an audit log of all updates made to an alert.
    # To construct, see NOTES section for HISTORYSTATES properties and create a hash table.
    ${HistoryStates},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityState[]]
    # Security-related stateful information generated by the provider about the host(s) related to this alert.
    # To construct, see NOTES section for HOSTSTATES properties and create a hash table.
    ${HostStates},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # IDs of incidents related to current alert.
    ${IncidentIds},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvestigationSecurityState[]]
    # .
    # To construct, see NOTES section for INVESTIGATIONSECURITYSTATES properties and create a hash table.
    ${InvestigationSecurityStates},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastEventDateTime},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert entity was last modified.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMalwareState[]]
    # Threat Intelligence pertaining to malware related to this alert.
    # To construct, see NOTES section for MALWARESTATES properties and create a hash table.
    ${MalwareStates},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageSecurityState[]]
    # .
    # To construct, see NOTES section for MESSAGESECURITYSTATES properties and create a hash table.
    ${MessageSecurityStates},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphNetworkConnection[]]
    # Security-related stateful information generated by the provider about the network connection(s) related to this alert.
    # To construct, see NOTES section for NETWORKCONNECTIONS properties and create a hash table.
    ${NetworkConnections},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProcess[]]
    # Security-related stateful information generated by the provider about the process or processes related to this alert.
    # To construct, see NOTES section for PROCESSES properties and create a hash table.
    ${Processes},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Vendor/provider recommended action(s) to take as a result of the alert (for example, isolate machine, enforce2FA, reimage host).
    ${RecommendedActions},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRegistryKeyState[]]
    # Security-related stateful information generated by the provider about the registry keys related to this alert.
    # To construct, see NOTES section for REGISTRYKEYSTATES properties and create a hash table.
    ${RegistryKeyStates},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityResource[]]
    # Resources related to current alert.
    # For example, for some alerts this can have the Azure Resource value.
    # To construct, see NOTES section for SECURITYRESOURCES properties and create a hash table.
    ${SecurityResources},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertSeverity
    ${Severity},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Hyperlinks (URIs) to the source material related to the alert, for example, provider's user interface for alerts or log search, etc.
    ${SourceMaterials},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertStatus
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # User-definable labels that can be applied to an alert and can serve as filter conditions (for example 'HVA', 'SAW', etc.) (supports update).
    ${Tags},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert title.
    # Required.
    ${Title},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertTrigger[]]
    # Security-related information about the specific properties that triggered the alert (properties appearing in the alert).
    # Alerts might contain information about multiple users, hosts, files, ip addresses.
    # This field indicates which properties triggered the alert generation.
    # To construct, see NOTES section for TRIGGERS properties and create a hash table.
    ${Triggers},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUriClickSecurityState[]]
    # .
    # To construct, see NOTES section for URICLICKSECURITYSTATES properties and create a hash table.
    ${UriClickSecurityStates},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityState[]]
    # Security-related stateful information generated by the provider about the user accounts related to this alert.
    # To construct, see NOTES section for USERSTATES properties and create a hash table.
    ${UserStates},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
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
            Update2 = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_Update2';
            UpdateExpanded2 = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_UpdateExpanded2';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScoreControlProfile
    ${SecureScoreControlProfileId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile]
    # secureScoreControlProfile
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action type (Config, Review, Behavior).
    ${ActionType},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # URL to where the control can be actioned.
    ${ActionUrl},

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
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceInformation[]]
    # The collection of compliance information associated with secure score control
    # To construct, see NOTES section for COMPLIANCEINFORMATION properties and create a hash table.
    ${ComplianceInformation},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action category (Identity, Data, Device, Apps, Infrastructure).
    ${ControlCategory},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlStateUpdate[]]
    # Flag to indicate where the tenant has marked a control (ignore, thirdParty, reviewed) (supports update).
    # To construct, see NOTES section for CONTROLSTATEUPDATES properties and create a hash table.
    ${ControlStateUpdates},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag to indicate if a control is depreciated.
    ${Deprecated},

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
    # Resource cost of implemmentating control (low, moderate, high).
    ${ImplementationCost},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the control profile entity was last modified.
    # The Timestamp type represents date and time
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # max attainable score for the control.
    ${MaxScore},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Microsoft's stack ranking of control.
    ${Rank},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of what the control will help remediate.
    ${Remediation},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the impact on users of the remediation.
    ${RemediationImpact},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Service that owns the control (Exchange, Sharepoint, Azure AD).
    ${Service},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
    ${Threats},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control tier (Core, Defense in Depth, Advanced.)
    ${Tier},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the control.
    ${Title},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # User impact of implementing control (low, moderate, high).
    ${UserImpact},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScore
    ${SecureScoreId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore]
    # secureScore
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Active user count of the given tenant.
    ${ActiveUserCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAverageComparativeScore[]]
    # Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
    # To construct, see NOTES section for AVERAGECOMPARATIVESCORES properties and create a hash table.
    ${AverageComparativeScores},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphControlScore[]]
    # Contains tenant scores for a set of controls.
    # To construct, see NOTES section for CONTROLSCORES properties and create a hash table.
    ${ControlScores},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date when the entity is created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant current attained score on specified date.
    ${CurrentScore},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
    ${EnabledServices},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Licensed user count of the given tenant.
    ${LicensedUserCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant maximum possible score on specified date.
    ${MaxScore},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDBaAviYF75y5+p
# wj+4MJPwK45DQCXHAMUoJJiXkgFFe6CCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgkip526Dx
# hI7ocXt5nUsbbbPSTAY607IE8R82e1Il6uIwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBiD3DSgF1bmOKWuSAmSPYqcmfZRbKx90GgzEOt6K+m
# 6FdrNVR8GbKfB5QwZ/W1mng8sBTm+Do9R94pUp3NcvyIfD3lKAKXBp4Uas18IsGJ
# Z+Zo9aKWmIJDQTMZr5ZVdqGeif2KntYMizuG2TgGDt6XYYrR5NyzVUCgbY7NyxU1
# L5wc3gt307d7lGIpFD2hVbjt9nxy5ZGo7bqFALHM0xd40UiaVJpEw0SKqJzzD5fG
# bhwwZ6cXa+UHss8jzrj9Ukx1131P9kVPaZH7kY6jTu3Aj2dLEbRCoGWfzJ8VMuzt
# Vli1dIVJQ/OQYuq4V+IMAOFjdWWjbVnxVZjmUGliAlXPoYIS/jCCEvoGCisGAQQB
# gjcDAwExghLqMIIS5gYJKoZIhvcNAQcCoIIS1zCCEtMCAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIDHNlXn0LpCJOOXjqTFFJtANOCLxHtHzd/iC+TxY
# dj2hAgZhcHkHNpgYEzIwMjExMDI3MDcxMTI0LjQyOFowBIACAfSggdikgdUwgdIx
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
# AQQwLwYJKoZIhvcNAQkEMSIEIPRfCqkYif7VPGCeQ0m/VOPAEFTYVqZIhdtceEix
# 7bTcMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgUT8BPIzqc3SecHRPLKBt
# W0vOOnT+78haWo+XcxVerd4wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAAUGvf1KXXPLcRQAAAAABQTAiBCCsIMhGci2I4hx/fnpoNUu5
# 9O/Sci8O3hwdWmbouUNrPjANBgkqhkiG9w0BAQsFAASCAQDfd974jUAHfFvKZYv9
# d2FSLdUPcKSOWTYl/zeFU0TSb7HRGDHtco0AZ+ceq3KiTMPyadfR7dx1b0/hn/fT
# DMHIJNinPq8TWYikdO7f+6kq+/ULYaS/9bFnyProz1f4u4rckQDUhEsZCXfZ5wUL
# UCVAT2pL/a5Q2Bkm9hP89d0BpP7a77jZE8oqi5FWCV46mxiHEFFj0Z0zom9zuad7
# fEdvwngdXHDXOFIH8uCPhMMVSy0CErlEo2xV/LFzem6N/kqtJ8Z7oh2Mnu399Gsl
# zmJuG9J0K+N4zSXIHumW/pKBUkwHBhE8/q8Ck+lLk0YyFZXIjJnzmuhOkLf46gzU
# PeQw
# SIG # End signature block
