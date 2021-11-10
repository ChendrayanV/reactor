
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryAudit
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgauditlogdirectoryaudit
#>
function Get-MgAuditLogDirectoryAudit {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryAudit])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of directoryAudit
    ${DirectoryAuditId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogDirectoryAudit_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogDirectoryAudit_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogDirectoryAudit_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get provisioning from auditLogs
.Description
Get provisioning from auditLogs

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProvisioningObjectSummary
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgauditlogprovisioning
#>
function Get-MgAuditLogProvisioning {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProvisioningObjectSummary])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of provisioningObjectSummary
    ${ProvisioningObjectSummaryId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgAuditLogProvisioning_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgAuditLogProvisioning_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgAuditLogProvisioning_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get restrictedSignIns from auditLogs
.Description
Get restrictedSignIns from auditLogs

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRestrictedSignIn
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgauditlogrestrictedsignin
#>
function Get-MgAuditLogRestrictedSignIn {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRestrictedSignIn])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of restrictedSignIn
    ${RestrictedSignInId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgAuditLogRestrictedSignIn_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgAuditLogRestrictedSignIn_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgAuditLogRestrictedSignIn_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSignIn
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgauditlogsignin
#>
function Get-MgAuditLogSignIn {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSignIn])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of signIn
    ${SignInId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgAuditLogSignIn_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgAuditLogSignIn_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgAuditLogSignIn_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Entity representing a job to export a report
.Description
Entity representing a job to export a report

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExportJob
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgdevicemanagementreportexportjob
#>
function Get-MgDeviceManagementReportExportJob {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExportJob])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementExportJob
    ${DeviceManagementExportJobId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportExportJob_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportExportJob_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportExportJob_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Reports singleton
.Description
Reports singleton

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReports
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgdevicemanagementreport
#>
function Get-MgDeviceManagementReport {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReports])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReport_Get1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get dailyPrintUsageByPrinter from reports
.Description
Get dailyPrintUsageByPrinter from reports

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportdailyprintusage
#>
function Get-MgReportDailyPrintUsage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of printUsageByPrinter
    ${PrintUsageByPrinterId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of printUsageByUser
    ${PrintUsageByUserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
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

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List')]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_Get';
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_Get1';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_GetViaIdentity';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_GetViaIdentity1';
            List = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_List';
            List1 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Metadata for the device configuration device activity report
.Description
Metadata for the device configuration device activity report

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportdeviceconfigurationdeviceactivity
#>
function Get-MgReportDeviceConfigurationDeviceActivity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Device', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Device = 'Microsoft.Graph.Reports.private\Get-MgReportDeviceConfigurationDeviceActivity_Device';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Metadata for the device configuration user activity report
.Description
Metadata for the device configuration user activity report

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportdeviceconfigurationuseractivity
#>
function Get-MgReportDeviceConfigurationUserActivity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Device', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Device = 'Microsoft.Graph.Reports.private\Get-MgReportDeviceConfigurationUserActivity_Device';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getEmailActivityCounts
.Description
Invoke function getEmailActivityCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportemailactivitycount
#>
function Get-MgReportEmailActivityCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getEmailActivityUserCounts
.Description
Invoke function getEmailActivityUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportemailactivityusercount
#>
function Get-MgReportEmailActivityUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getEmailActivityUserDetail
.Description
Invoke function getEmailActivityUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportemailactivityuserdetailddb2
#>
function Get-MgReportEmailActivityUserDetailDdb2 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserDetailDdb2_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserDetailDdb2_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getEmailActivityUserDetail
.Description
Invoke function getEmailActivityUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportemailactivityuserdetailfe32
#>
function Get-MgReportEmailActivityUserDetailFe32 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserDetailFe32_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserDetailFe32_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getEmailAppUsageAppsUserCounts
.Description
Invoke function getEmailAppUsageAppsUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportemailappusageappusercount
#>
function Get-MgReportEmailAppUsageAppUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageAppUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageAppUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getEmailAppUsageUserCounts
.Description
Invoke function getEmailAppUsageUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportemailappusageusercount
#>
function Get-MgReportEmailAppUsageUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getEmailAppUsageUserDetail
.Description
Invoke function getEmailAppUsageUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportemailappusageuserdetail546b
#>
function Get-MgReportEmailAppUsageUserDetail546B {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserDetail546B_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserDetail546B_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getEmailAppUsageUserDetail
.Description
Invoke function getEmailAppUsageUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportemailappusageuserdetail62ec
#>
function Get-MgReportEmailAppUsageUserDetail62Ec {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserDetail62Ec_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserDetail62Ec_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getEmailAppUsageVersionsUserCounts
.Description
Invoke function getEmailAppUsageVersionsUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportemailappusageversionusercount
#>
function Get-MgReportEmailAppUsageVersionUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageVersionUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageVersionUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getGroupArchivedPrintJobs
.Description
Invoke function getGroupArchivedPrintJobs

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportgrouparchivedprintjob
#>
function Get-MgReportGroupArchivedPrintJob {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: endDateTime={endDateTime}
    ${EndDateTime},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: groupId={groupId}
    ${GroupId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: startDateTime={startDateTime}
    ${StartDateTime},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportGroupArchivedPrintJob_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportGroupArchivedPrintJob_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getMailboxUsageDetail
.Description
Invoke function getMailboxUsageDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmailboxusagedetail
#>
function Get-MgReportMailboxUsageDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageDetail_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageDetail_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getMailboxUsageMailboxCounts
.Description
Invoke function getMailboxUsageMailboxCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmailboxusagemailboxcount
#>
function Get-MgReportMailboxUsageMailboxCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageMailboxCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageMailboxCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getMailboxUsageQuotaStatusMailboxCounts
.Description
Invoke function getMailboxUsageQuotaStatusMailboxCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmailboxusagequotastatusmailboxcount
#>
function Get-MgReportMailboxUsageQuotaStatusMailboxCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageQuotaStatusMailboxCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageQuotaStatusMailboxCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getMailboxUsageStorage
.Description
Invoke function getMailboxUsageStorage

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmailboxusagestorage
#>
function Get-MgReportMailboxUsageStorage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageStorage_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageStorage_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function managedDeviceEnrollmentFailureDetails
.Description
Invoke function managedDeviceEnrollmentFailureDetails

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmanageddeviceenrollmentfailuredetail027e
#>
function Get-MgReportManagedDeviceEnrollmentFailureDetail027E {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Managed1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Managed1 = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentFailureDetail027E_Managed1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function managedDeviceEnrollmentFailureDetails
.Description
Invoke function managedDeviceEnrollmentFailureDetails

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmanageddeviceenrollmentfailuredetail2b3d
#>
function Get-MgReportManagedDeviceEnrollmentFailureDetail2B3D {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Managed1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Managed1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: filter={filter}
    ${Filter},

    [Parameter(ParameterSetName='Managed1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: skip={skip}
    ${Skip},

    [Parameter(ParameterSetName='Managed1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: skipToken={skipToken}
    ${SkipToken},

    [Parameter(ParameterSetName='Managed1', Mandatory)]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: top={top}
    ${Top},

    [Parameter(ParameterSetName='ManagedViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Managed1 = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentFailureDetail2B3D_Managed1';
            ManagedViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentFailureDetail2B3D_ManagedViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function managedDeviceEnrollmentTopFailures
.Description
Invoke function managedDeviceEnrollmentTopFailures

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmanageddeviceenrollmenttopfailures
#>
function Get-MgReportManagedDeviceEnrollmentTopFailures {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Top2', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Top3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='TopViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Top2 = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentTopFailures_Top2';
            Top3 = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentTopFailures_Top3';
            TopViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentTopFailures_TopViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get monthlyPrintUsageByPrinter from reports
.Description
Get monthlyPrintUsageByPrinter from reports

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmonthlyprintusage
#>
function Get-MgReportMonthlyPrintUsage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser])]
[CmdletBinding(DefaultParameterSetName='List2', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of printUsageByPrinter
    ${PrintUsageByPrinterId},

    [Parameter(ParameterSetName='Get3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of printUsageByUser
    ${PrintUsageByUserId},

    [Parameter(ParameterSetName='GetViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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

    [Parameter(ParameterSetName='List2')]
    [Parameter(ParameterSetName='List3')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List2')]
    [Parameter(ParameterSetName='List3')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List2')]
    [Parameter(ParameterSetName='List3')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List2')]
    [Parameter(ParameterSetName='List3')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List2')]
    [Parameter(ParameterSetName='List3')]
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

    [Parameter(ParameterSetName='List2')]
    [Parameter(ParameterSetName='List3')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List2')]
    [Parameter(ParameterSetName='List3')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List2')]
    [Parameter(ParameterSetName='List3')]
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
            Get2 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_Get2';
            Get3 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_Get3';
            GetViaIdentity2 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_GetViaIdentity2';
            GetViaIdentity3 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_GetViaIdentity3';
            List2 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_List2';
            List3 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_List3';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365ActivationCounts
.Description
Invoke function getOffice365ActivationCounts

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365activationcount
#>
function Get-MgReportOffice365ActivationCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActivationCount_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365ActivationsUserCounts
.Description
Invoke function getOffice365ActivationsUserCounts

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365activationusercount
#>
function Get-MgReportOffice365ActivationUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActivationUserCount_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365ActivationsUserDetail
.Description
Invoke function getOffice365ActivationsUserDetail

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365activationuserdetail
#>
function Get-MgReportOffice365ActivationUserDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActivationUserDetail_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365ActiveUserCounts
.Description
Invoke function getOffice365ActiveUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365activeusercount
#>
function Get-MgReportOffice365ActiveUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365ActiveUserDetail
.Description
Invoke function getOffice365ActiveUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365activeuserdetail68ad
#>
function Get-MgReportOffice365ActiveUserDetail68Ad {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserDetail68Ad_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserDetail68Ad_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365ActiveUserDetail
.Description
Invoke function getOffice365ActiveUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365activeuserdetaild389
#>
function Get-MgReportOffice365ActiveUserDetailD389 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserDetailD389_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserDetailD389_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365GroupsActivityCounts
.Description
Invoke function getOffice365GroupsActivityCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365groupactivitycount
#>
function Get-MgReportOffice365GroupActivityCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365GroupsActivityDetail
.Description
Invoke function getOffice365GroupsActivityDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365groupactivitydetail38f6
#>
function Get-MgReportOffice365GroupActivityDetail38F6 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityDetail38F6_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityDetail38F6_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365GroupsActivityDetail
.Description
Invoke function getOffice365GroupsActivityDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365groupactivitydetail81cc
#>
function Get-MgReportOffice365GroupActivityDetail81Cc {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityDetail81Cc_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityDetail81Cc_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365GroupsActivityFileCounts
.Description
Invoke function getOffice365GroupsActivityFileCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365groupactivityfilecount
#>
function Get-MgReportOffice365GroupActivityFileCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityFileCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityFileCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365GroupsActivityGroupCounts
.Description
Invoke function getOffice365GroupsActivityGroupCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365groupactivitygroupcount
#>
function Get-MgReportOffice365GroupActivityGroupCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityGroupCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityGroupCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365GroupsActivityStorage
.Description
Invoke function getOffice365GroupsActivityStorage

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365groupactivitystorage
#>
function Get-MgReportOffice365GroupActivityStorage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityStorage_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityStorage_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOffice365ServicesUserCounts
.Description
Invoke function getOffice365ServicesUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365serviceusercount
#>
function Get-MgReportOffice365ServiceUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ServiceUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ServiceUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOneDriveActivityFileCounts
.Description
Invoke function getOneDriveActivityFileCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportonedriveactivityfilecount
#>
function Get-MgReportOneDriveActivityFileCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityFileCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityFileCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOneDriveActivityUserCounts
.Description
Invoke function getOneDriveActivityUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportonedriveactivityusercount
#>
function Get-MgReportOneDriveActivityUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOneDriveActivityUserDetail
.Description
Invoke function getOneDriveActivityUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportonedriveactivityuserdetail05f1
#>
function Get-MgReportOneDriveActivityUserDetail05F1 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserDetail05F1_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserDetail05F1_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOneDriveActivityUserDetail
.Description
Invoke function getOneDriveActivityUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportonedriveactivityuserdetailc424
#>
function Get-MgReportOneDriveActivityUserDetailC424 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserDetailC424_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserDetailC424_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOneDriveUsageAccountCounts
.Description
Invoke function getOneDriveUsageAccountCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportonedriveusageaccountcount
#>
function Get-MgReportOneDriveUsageAccountCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOneDriveUsageAccountDetail
.Description
Invoke function getOneDriveUsageAccountDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportonedriveusageaccountdetaildd7f
#>
function Get-MgReportOneDriveUsageAccountDetailDd7F {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountDetailDd7F_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountDetailDd7F_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOneDriveUsageAccountDetail
.Description
Invoke function getOneDriveUsageAccountDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportonedriveusageaccountdetaile827
#>
function Get-MgReportOneDriveUsageAccountDetailE827 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountDetailE827_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountDetailE827_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOneDriveUsageFileCounts
.Description
Invoke function getOneDriveUsageFileCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportonedriveusagefilecount
#>
function Get-MgReportOneDriveUsageFileCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageFileCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageFileCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getOneDriveUsageStorage
.Description
Invoke function getOneDriveUsageStorage

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportonedriveusagestorage
#>
function Get-MgReportOneDriveUsageStorage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageStorage_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageStorage_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getPrinterArchivedPrintJobs
.Description
Invoke function getPrinterArchivedPrintJobs

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportprinterarchivedprintjob
#>
function Get-MgReportPrinterArchivedPrintJob {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: endDateTime={endDateTime}
    ${EndDateTime},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: printerId={printerId}
    ${PrinterId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: startDateTime={startDateTime}
    ${StartDateTime},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportPrinterArchivedPrintJob_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportPrinterArchivedPrintJob_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointActivityFileCounts
.Description
Invoke function getSharePointActivityFileCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointactivityfilecount
#>
function Get-MgReportSharePointActivityFileCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityFileCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityFileCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointActivityPages
.Description
Invoke function getSharePointActivityPages

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointactivitypage
#>
function Get-MgReportSharePointActivityPage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityPage_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityPage_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointActivityUserCounts
.Description
Invoke function getSharePointActivityUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointactivityusercount
#>
function Get-MgReportSharePointActivityUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointActivityUserDetail
.Description
Invoke function getSharePointActivityUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointactivityuserdetailb778
#>
function Get-MgReportSharePointActivityUserDetailB778 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserDetailB778_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserDetailB778_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointActivityUserDetail
.Description
Invoke function getSharePointActivityUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointactivityuserdetailf3be
#>
function Get-MgReportSharePointActivityUserDetailF3Be {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserDetailF3Be_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserDetailF3Be_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointSiteUsageDetail
.Description
Invoke function getSharePointSiteUsageDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointsiteusagedetail204b
#>
function Get-MgReportSharePointSiteUsageDetail204B {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageDetail204B_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageDetail204B_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointSiteUsageDetail
.Description
Invoke function getSharePointSiteUsageDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointsiteusagedetaild27a
#>
function Get-MgReportSharePointSiteUsageDetailD27A {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageDetailD27A_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageDetailD27A_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointSiteUsageFileCounts
.Description
Invoke function getSharePointSiteUsageFileCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointsiteusagefilecount
#>
function Get-MgReportSharePointSiteUsageFileCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageFileCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageFileCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointSiteUsagePages
.Description
Invoke function getSharePointSiteUsagePages

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointsiteusagepage
#>
function Get-MgReportSharePointSiteUsagePage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsagePage_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsagePage_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointSiteUsageSiteCounts
.Description
Invoke function getSharePointSiteUsageSiteCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointsiteusagesitecount
#>
function Get-MgReportSharePointSiteUsageSiteCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageSiteCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageSiteCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSharePointSiteUsageStorage
.Description
Invoke function getSharePointSiteUsageStorage

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportsharepointsiteusagestorage
#>
function Get-MgReportSharePointSiteUsageStorage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageStorage_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageStorage_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getSkypeForBusinessActivityCounts
.Description
Invoke function getSkypeForBusinessActivityCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportskype
#>
function Get-MgReportSkype {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get17', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get17', Mandatory)]
    [Parameter(ParameterSetName='Get18', Mandatory)]
    [Parameter(ParameterSetName='Get20', Mandatory)]
    [Parameter(ParameterSetName='Get21', Mandatory)]
    [Parameter(ParameterSetName='Get22', Mandatory)]
    [Parameter(ParameterSetName='Get24', Mandatory)]
    [Parameter(ParameterSetName='Get25', Mandatory)]
    [Parameter(ParameterSetName='Get26', Mandatory)]
    [Parameter(ParameterSetName='Get27', Mandatory)]
    [Parameter(ParameterSetName='Get28', Mandatory)]
    [Parameter(ParameterSetName='Get29', Mandatory)]
    [Parameter(ParameterSetName='Get30', Mandatory)]
    [Parameter(ParameterSetName='Get31', Mandatory)]
    [Parameter(ParameterSetName='Get32', Mandatory)]
    [Parameter(ParameterSetName='Get33', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='Get19', Mandatory)]
    [Parameter(ParameterSetName='Get23', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity17', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity18', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity19', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity20', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity21', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity22', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity23', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity24', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity25', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity26', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity27', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity28', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity29', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity30', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity31', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity32', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity33', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get17 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get17';
            Get18 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get18';
            Get19 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get19';
            Get20 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get20';
            Get21 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get21';
            Get22 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get22';
            Get23 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get23';
            Get24 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get24';
            Get25 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get25';
            Get26 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get26';
            Get27 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get27';
            Get28 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get28';
            Get29 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get29';
            Get30 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get30';
            Get31 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get31';
            Get32 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get32';
            Get33 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get33';
            GetViaIdentity17 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity17';
            GetViaIdentity18 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity18';
            GetViaIdentity19 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity19';
            GetViaIdentity20 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity20';
            GetViaIdentity21 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity21';
            GetViaIdentity22 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity22';
            GetViaIdentity23 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity23';
            GetViaIdentity24 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity24';
            GetViaIdentity25 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity25';
            GetViaIdentity26 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity26';
            GetViaIdentity27 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity27';
            GetViaIdentity28 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity28';
            GetViaIdentity29 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity29';
            GetViaIdentity30 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity30';
            GetViaIdentity31 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity31';
            GetViaIdentity32 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity32';
            GetViaIdentity33 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity33';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsDeviceUsageDistributionUserCounts
.Description
Invoke function getTeamsDeviceUsageDistributionUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamdeviceusagedistributionusercount
#>
function Get-MgReportTeamDeviceUsageDistributionUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageDistributionUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageDistributionUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsDeviceUsageUserCounts
.Description
Invoke function getTeamsDeviceUsageUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamdeviceusageusercount
#>
function Get-MgReportTeamDeviceUsageUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsDeviceUsageUserDetail
.Description
Invoke function getTeamsDeviceUsageUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamdeviceusageuserdetail7148
#>
function Get-MgReportTeamDeviceUsageUserDetail7148 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserDetail7148_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserDetail7148_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsDeviceUsageUserDetail
.Description
Invoke function getTeamsDeviceUsageUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamdeviceusageuserdetail7565
#>
function Get-MgReportTeamDeviceUsageUserDetail7565 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserDetail7565_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserDetail7565_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsUserActivityCounts
.Description
Invoke function getTeamsUserActivityCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamuseractivitycount
#>
function Get-MgReportTeamUserActivityCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsUserActivityUserCounts
.Description
Invoke function getTeamsUserActivityUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamuseractivityusercount
#>
function Get-MgReportTeamUserActivityUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsUserActivityUserDetail
.Description
Invoke function getTeamsUserActivityUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamuseractivityuserdetaila3f1
#>
function Get-MgReportTeamUserActivityUserDetailA3F1 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserDetailA3F1_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserDetailA3F1_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsUserActivityUserDetail
.Description
Invoke function getTeamsUserActivityUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamuseractivityuserdetaileb13
#>
function Get-MgReportTeamUserActivityUserDetailEb13 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserDetailEb13_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserDetailEb13_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getUserArchivedPrintJobs
.Description
Invoke function getUserArchivedPrintJobs

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportuserarchivedprintjob
#>
function Get-MgReportUserArchivedPrintJob {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: endDateTime={endDateTime}
    ${EndDateTime},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: startDateTime={startDateTime}
    ${StartDateTime},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: userId={userId}
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportUserArchivedPrintJob_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportUserArchivedPrintJob_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerActivityCounts
.Description
Invoke function getYammerActivityCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammeractivitycount
#>
function Get-MgReportYammerActivityCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerActivityUserCounts
.Description
Invoke function getYammerActivityUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammeractivityusercount
#>
function Get-MgReportYammerActivityUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerActivityUserDetail
.Description
Invoke function getYammerActivityUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammeractivityuserdetail15a5
#>
function Get-MgReportYammerActivityUserDetail15A5 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserDetail15A5_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserDetail15A5_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerActivityUserDetail
.Description
Invoke function getYammerActivityUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammeractivityuserdetailac30
#>
function Get-MgReportYammerActivityUserDetailAc30 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserDetailAc30_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserDetailAc30_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerDeviceUsageDistributionUserCounts
.Description
Invoke function getYammerDeviceUsageDistributionUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammerdeviceusagedistributionusercount
#>
function Get-MgReportYammerDeviceUsageDistributionUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageDistributionUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageDistributionUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerDeviceUsageUserCounts
.Description
Invoke function getYammerDeviceUsageUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammerdeviceusageusercount
#>
function Get-MgReportYammerDeviceUsageUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerDeviceUsageUserDetail
.Description
Invoke function getYammerDeviceUsageUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammerdeviceusageuserdetailcfad
#>
function Get-MgReportYammerDeviceUsageUserDetailCfad {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserDetailCfad_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserDetailCfad_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerDeviceUsageUserDetail
.Description
Invoke function getYammerDeviceUsageUserDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammerdeviceusageuserdetaild0ac
#>
function Get-MgReportYammerDeviceUsageUserDetailD0Ac {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserDetailD0Ac_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserDetailD0Ac_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerGroupsActivityCounts
.Description
Invoke function getYammerGroupsActivityCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammergroupactivitycount
#>
function Get-MgReportYammerGroupActivityCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerGroupsActivityDetail
.Description
Invoke function getYammerGroupsActivityDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammergroupactivitydetail0d7d
#>
function Get-MgReportYammerGroupActivityDetail0D7D {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityDetail0D7D_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityDetail0D7D_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerGroupsActivityDetail
.Description
Invoke function getYammerGroupsActivityDetail

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammergroupactivitydetailda9a
#>
function Get-MgReportYammerGroupActivityDetailDa9A {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityDetailDa9A_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityDetailDa9A_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getYammerGroupsActivityGroupCounts
.Description
Invoke function getYammerGroupsActivityGroupCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IReportsIdentity>: Identity Parameter
  [ApplicationSignInDetailedSummaryId <String>]: key: id of applicationSignInDetailedSummary
  [CredentialUserRegistrationDetailsId <String>]: key: id of credentialUserRegistrationDetails
  [Date <DateTime?>]: Usage: date={date}
  [DeviceManagementCachedReportConfigurationId <String>]: key: id of deviceManagementCachedReportConfiguration
  [DeviceManagementExportJobId <String>]: key: id of deviceManagementExportJob
  [DeviceManagementReportScheduleId <String>]: key: id of deviceManagementReportSchedule
  [DirectoryAuditId <String>]: key: id of directoryAudit
  [EndDateTime <DateTime?>]: Usage: endDateTime={endDateTime}
  [Filter <String>]: Usage: filter={filter}
  [GroupId <String>]: Usage: groupId={groupId}
  [IncludedUserRoles <String>]: Usage: includedUserRoles={includedUserRoles}
  [IncludedUserTypes <String>]: Usage: includedUserTypes={includedUserTypes}
  [Period <String>]: Usage: period={period}
  [PrintUsageByPrinterId <String>]: key: id of printUsageByPrinter
  [PrintUsageByUserId <String>]: key: id of printUsageByUser
  [PrinterId <String>]: Usage: printerId={printerId}
  [ProvisioningObjectSummaryId <String>]: key: id of provisioningObjectSummary
  [RestrictedSignInId <String>]: key: id of restrictedSignIn
  [SignInId <String>]: key: id of signIn
  [Skip <Int32?>]: Usage: skip={skip}
  [SkipToken <String>]: Usage: skipToken={skipToken}
  [StartDateTime <DateTime?>]: Usage: startDateTime={startDateTime}
  [Top <Int32?>]: Usage: top={top}
  [UserCredentialUsageDetailsId <String>]: key: id of userCredentialUsageDetails
  [UserId <String>]: Usage: userId={userId}
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportyammergroupactivitygroupcount
#>
function Get-MgReportYammerGroupActivityGroupCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IReportsIdentity]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityGroupCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityGroupCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Reports singleton
.Description
Reports singleton

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/remove-mgdevicemanagementreport
#>
function Remove-MgDeviceManagementReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Delete1 = 'Microsoft.Graph.Reports.private\Remove-MgDeviceManagementReport_Delete1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Reports singleton
.Description
Reports singleton

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReports
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphDeviceManagementReports>: Singleton entity that acts as a container for all reports functionality.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ExportJobs <IMicrosoftGraphDeviceManagementExportJob[]>]: Entity representing a job to export a report
    [Id <String>]: Read-only.
    [ExpirationDateTime <DateTime?>]: Time that the exported report expires
    [Filter <String>]: Filters applied on the report
    [Format <String>]: Possible values for the file format of a report
    [LocalizationType <String>]: Configures how the requested export job is localized
    [ReportName <String>]: Name of the report
    [RequestDateTime <DateTime?>]: Time that the exported report was requested
    [Select <String[]>]: Columns selected from the report
    [SnapshotId <String>]: A snapshot is an identifiable subset of the dataset represented by the ReportName. A sessionId or CachedReportConfiguration id can be used here. If a sessionId is specified, Filter, Select, and OrderBy are applied to the data represented by the sessionId. Filter, Select, and OrderBy cannot be specified together with a CachedReportConfiguration id.
    [Status <String>]: Possible statuses associated with a generated report
    [Url <String>]: Temporary location of the exported report

EXPORTJOBS <IMicrosoftGraphDeviceManagementExportJob[]>: Entity representing a job to export a report
  [Id <String>]: Read-only.
  [ExpirationDateTime <DateTime?>]: Time that the exported report expires
  [Filter <String>]: Filters applied on the report
  [Format <String>]: Possible values for the file format of a report
  [LocalizationType <String>]: Configures how the requested export job is localized
  [ReportName <String>]: Name of the report
  [RequestDateTime <DateTime?>]: Time that the exported report was requested
  [Select <String[]>]: Columns selected from the report
  [SnapshotId <String>]: A snapshot is an identifiable subset of the dataset represented by the ReportName. A sessionId or CachedReportConfiguration id can be used here. If a sessionId is specified, Filter, Select, and OrderBy are applied to the data represented by the sessionId. Filter, Select, and OrderBy cannot be specified together with a CachedReportConfiguration id.
  [Status <String>]: Possible statuses associated with a generated report
  [Url <String>]: Temporary location of the exported report
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/update-mgdevicemanagementreport
#>
function Update-MgDeviceManagementReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReports]
    # Singleton entity that acts as a container for all reports functionality.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExportJob[]]
    # Entity representing a job to export a report
    # To construct, see NOTES section for EXPORTJOBS properties and create a hash table.
    ${ExportJobs},

    [Parameter(ParameterSetName='UpdateExpanded1')]
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
            Update1 = 'Microsoft.Graph.Reports.private\Update-MgDeviceManagementReport_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Reports.private\Update-MgDeviceManagementReport_UpdateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAveksMCjTGkUuH
# lanfaPek4fUi5bNQcKb1Ni4aeOXwpaCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgQMmp0mo9
# EZfj/Ec9HUKggif/akjl6OjGLOSdW3Sh+twwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQAFRt76yt5O4mr29J068qLMuihfgz2vKW1ceucbIC1M
# Dp9jiCG1khZUWb1OWEgi+LgblQy2TNiQO7cbD75NbLidyLB6mhLmqt0vyaB4k4vj
# vcqOTLoLuL4Y0D+NvlW53+POh6mD/b69ZFaljpZxoBi9Ul/OuV92VO3Lmcklt64x
# 1JrL2KlDjAmmo7/QEEw4pGeyAhS03/B3l5+s+dFipa6LuulrlWW5ihNxopoRZS2M
# Q4hHT3Mlo6aUQSIPQBpTjman5SNlLf1+GT7ALYe4XBCdtu8ZvT40QY8O998iMaiq
# ugJlijlb2EYyOCzXIddlsZEFiX77XTyg9JkN8BrionNWoYIS8TCCEu0GCisGAQQB
# gjcDAwExghLdMIIS2QYJKoZIhvcNAQcCoIISyjCCEsYCAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIAEKorWUUvxQKl/xMkbCous01uS3qaLyRsYtIPT5
# DAmAAgZhb0cvwGUYEzIwMjExMDI3MDcxMTI1LjA3MlowBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjpGNzdGLUUzNTYtNUJBRTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCDkQwggT1MIID3aADAgECAhMzAAABXp0px1+HBaHqAAAA
# AAFeMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMDExNDE5MDIxOVoXDTIyMDQxMTE5MDIxOVowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpGNzdG
# LUUzNTYtNUJBRTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJrTI4OQehn3oKp2zuh6
# WP2Zib/Dxw/srLeeyTb9ed7PX+fLg7zBA0yl6ivF2n6lauGH8W7EBwRPEv7ZCSXw
# XgYZ6GGaH8aU+OrDXAbc4BXTO5XnLGwSbaye9R2+uQHdCJmaMtz/lEBWUK5xvHoj
# 0TUrXOZdZ/vv7TqMWA4h1AT1w/JBR4kHtV1i8KWdlQ+dZX/gNHpA72IoLoOmpImb
# GRzcGQ4Z2Kzq4eMB9wjaFRV1JF/wz1hLFIjGtlU3eGjRBiBEEVI7UEMMSvI4rK+C
# fLAIZnULu7SzlIfqSU3R0pSNUahwpWdCiB6fKzIq94Z+9888moQuo95RAPmzHQW1
# MI0CAwEAAaOCARswggEXMB0GA1UdDgQWBBSqcny6Dd1L5VTCEACezlR41fgfKzAf
# BgNVHSMEGDAWgBTVYzpcijGQ80N7fEYbxTNoWoVtVTBWBgNVHR8ETzBNMEugSaBH
# hkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNU
# aW1TdGFQQ0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUF
# BzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1RpbVN0
# YVBDQV8yMDEwLTA3LTAxLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsG
# AQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IBAQB/IfxZhMYkBMqRmXnh/Vit4bfxyioA
# lr7HJ1XDSHTIvRwDD1PGr0upZE/vrrI/QN/1Wi6vDcKmnJ2r7Xj6pWZOZqc9Bp+u
# BvpPaulue4stu3TqKTc9Fu2K5ibctpF4oHPfZ+IKeChop+Mk9g7N5llHzv0aCDia
# M0w2aAT3rj3QHQS8ijnQ5/qhtzwo1AoUnV1y2urWwX5aHdUzaoeAJrvnf2ee89Kf
# 4ycjjyafNJSUp/qaXBlbjMu90vNubJstdSxOtvwcxeeHP6ZaYbTl2cOla4cokiPU
# +BUjIZA/t/IZfYoazMGmBtLWFJZdC9LYWWmLLsNJ2W21qkeSSpEAw4pmMIIGcTCC
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
# cGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpG
# NzdGLUUzNTYtNUJBRTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vy
# dmljZaIjCgEBMAcGBSsOAwIaAxUAVkmPV/8hZVS9FzbtoX2x3Z2xYyqggYMwgYCk
# fjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIF
# AOUi//0wIhgPMjAyMTEwMjcwMjMwMjFaGA8yMDIxMTAyODAyMzAyMVowdzA9Bgor
# BgEEAYRZCgQBMS8wLTAKAgUA5SL//QIBADAKAgEAAgIZlgIB/zAHAgEAAgIQqDAK
# AgUA5SRRfQIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIB
# AAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBAIzKrHyq/KEiQKY4
# XSzj4F8Ijaibl569Wz0Hu4O2eRBfsTOvSSqRBX0FhoxTcknV5mJRWsmH0q1yIi/z
# LA0ssqvgisIsKJ6c2USXKNf9WI1ZZtPjZAwiOeYQOn0QCDne++8olO0KgolrrscQ
# revINOWtOQ2MAH2RezZetReRPQ3oMYIDDTCCAwkCAQEwgZMwfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTACEzMAAAFenSnHX4cFoeoAAAAAAV4wDQYJYIZIAWUD
# BAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0B
# CQQxIgQgvTGLnteOJ7mxaDX3RIhnSbOhOAMT29WIhMCvjutRuhQwgfoGCyqGSIb3
# DQEJEAIvMYHqMIHnMIHkMIG9BCB+5YTslNSXjuB+5mQDTKRkM7prkewhXnevXpLv
# 8RLT4jCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAB
# Xp0px1+HBaHqAAAAAAFeMCIEIGj0SxmnZ2K8AYJKgHka0OiJ6ZCHrfdu2is3dYRV
# cyf0MA0GCSqGSIb3DQEBCwUABIIBAAKJg1Mtjy18cr0yhAmapOBORtpTiGsp/3ED
# 8ZcLc2Ep9y9/GHwNICdIeDQpNRqdNCX9BBi3aLkQN3zGKvdm4Yy+8ukaJJBo1RmU
# 4LD7V8z4ti06WARJO+l+j2fXG3bC0aYVvks15HNKW+gnX0mVzoDrDRWR3MOejZw/
# dqXpy5HwJLcjF2vzsi2CcayVDhgq67Sp0YGbP+Uy/9r8bazZkr7hrPfC5lETPMGg
# WwqUaeRXhqWSzXQy7U17WyozprjgVpSmijCLArqh8a5Qv9ch7jocT/7/dW+QrcSH
# aPsv3IpKoZAmYrhWFOo/Dm1f9PCH34RoxVzAUvxFhWZcde6Ym5o=
# SIG # End signature block
