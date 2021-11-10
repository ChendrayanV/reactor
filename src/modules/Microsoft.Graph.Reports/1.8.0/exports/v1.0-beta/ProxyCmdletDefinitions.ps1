
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryAudit1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryAudit1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of directoryAudit
    ${DirectoryAuditId},

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
            Get = 'Microsoft.Graph.Reports.private\Get-MgAuditLogDirectoryAudit_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgAuditLogDirectoryAudit_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgAuditLogDirectoryAudit_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get directoryProvisioning from auditLogs
.Description
Get directoryProvisioning from auditLogs

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProvisioningObjectSummary1
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgauditlogdirectoryprovisioning
#>
function Get-MgAuditLogDirectoryProvisioning {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProvisioningObjectSummary1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgAuditLogDirectoryProvisioning_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgAuditLogDirectoryProvisioning_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgAuditLogDirectoryProvisioning_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProvisioningObjectSummary1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProvisioningObjectSummary1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of provisioningObjectSummary
    ${ProvisioningObjectSummaryId},

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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogProvisioning_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogProvisioning_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogProvisioning_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRestrictedSignIn1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRestrictedSignIn1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of restrictedSignIn
    ${RestrictedSignInId},

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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogRestrictedSignIn_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogRestrictedSignIn_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogRestrictedSignIn_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSignIn1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSignIn1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of signIn
    ${SignInId},

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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogSignIn_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogSignIn_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Reports.private\Get-MgAuditLogSignIn_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Entity representing the configuration of a cached report
.Description
Entity representing the configuration of a cached report

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementCachedReportConfiguration
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgdevicemanagementreportcachedreportconfiguration
#>
function Get-MgDeviceManagementReportCachedReportConfiguration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementCachedReportConfiguration])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementCachedReportConfiguration
    ${DeviceManagementCachedReportConfigurationId},

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
            Get = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportCachedReportConfiguration_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportCachedReportConfiguration_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportCachedReportConfiguration_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementExportJob
    ${DeviceManagementExportJobId},

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
            Get = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportExportJob_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportExportJob_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportExportJob_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Entity representing a schedule for which reports are delivered
.Description
Entity representing a schedule for which reports are delivered

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReportSchedule
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgdevicemanagementreportschedule
#>
function Get-MgDeviceManagementReportSchedule {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReportSchedule])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceManagementReportSchedule
    ${DeviceManagementReportScheduleId},

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
            Get = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportSchedule_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportSchedule_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReportSchedule_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReports1
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgdevicemanagementreport
#>
function Get-MgDeviceManagementReport {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReports1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgDeviceManagementReport_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get applicationSignInDetailedSummary from reports
.Description
Get applicationSignInDetailedSummary from reports

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApplicationSignInDetailedSummary
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportapplicationsign
#>
function Get-MgReportApplicationSign {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApplicationSignInDetailedSummary])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of applicationSignInDetailedSummary
    ${ApplicationSignInDetailedSummaryId},

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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportApplicationSign_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportApplicationSign_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgReportApplicationSign_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getAttackSimulationRepeatOffenders
.Description
Invoke function getAttackSimulationRepeatOffenders

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttackSimulationRepeatOffender
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportattacksimulationrepeatoffender
#>
function Get-MgReportAttackSimulationRepeatOffender {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttackSimulationRepeatOffender])]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportAttackSimulationRepeatOffender_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getAttackSimulationTrainingUserCoverage
.Description
Invoke function getAttackSimulationTrainingUserCoverage

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttackSimulationTrainingUserCoverage
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportattacksimulationtrainingusercoverage
#>
function Get-MgReportAttackSimulationTrainingUserCoverage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttackSimulationTrainingUserCoverage])]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportAttackSimulationTrainingUserCoverage_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getAttackSimulationSimulationUserCoverage
.Description
Invoke function getAttackSimulationSimulationUserCoverage

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttackSimulationUserCoverage
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportattacksimulationusercoverage
#>
function Get-MgReportAttackSimulationUserCoverage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttackSimulationUserCoverage])]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportAttackSimulationUserCoverage_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get authenticationMethods from reports
.Description
Get authenticationMethods from reports

.Outputs
System.String
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportauthenticationmethod
#>
function Get-MgReportAuthenticationMethod {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportAuthenticationMethod_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getAzureADApplicationSignInSummary
.Description
Invoke function getAzureADApplicationSignInSummary

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApplicationSignInSummary
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportazureadapplicationsign
#>
function Get-MgReportAzureAdApplicationSign {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphApplicationSignInSummary])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportAzureAdApplicationSign_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportAzureAdApplicationSign_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getAzureADFeatureUsage
.Description
Invoke function getAzureADFeatureUsage

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAzureAdFeatureUsage
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportazureadfeatureusage
#>
function Get-MgReportAzureAdFeatureUsage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAzureAdFeatureUsage])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportAzureAdFeatureUsage_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportAzureAdFeatureUsage_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getAzureADLicenseUsage
.Description
Invoke function getAzureADLicenseUsage

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAzureAdLicenseUsage
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportazureadlicenseusage
#>
function Get-MgReportAzureAdLicenseUsage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAzureAdLicenseUsage])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportAzureAdLicenseUsage_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportAzureAdLicenseUsage_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getAzureADUserFeatureUsage
.Description
Invoke function getAzureADUserFeatureUsage

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAzureAdUserFeatureUsage
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportazureaduserfeatureusage
#>
function Get-MgReportAzureAdUserFeatureUsage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAzureAdUserFeatureUsage])]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportAzureAdUserFeatureUsage_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getCredentialUsageSummary
.Description
Invoke function getCredentialUsageSummary

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCredentialUsageSummary
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportcredentialusagesummary
#>
function Get-MgReportCredentialUsageSummary {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCredentialUsageSummary])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportCredentialUsageSummary_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportCredentialUsageSummary_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getCredentialUserRegistrationCount
.Description
Invoke function getCredentialUserRegistrationCount

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCredentialUserRegistrationCount
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportcredentialuserregistrationcount
#>
function Get-MgReportCredentialUserRegistrationCount {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCredentialUserRegistrationCount])]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportCredentialUserRegistrationCount_Get';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get credentialUserRegistrationDetails from reports
.Description
Get credentialUserRegistrationDetails from reports

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCredentialUserRegistrationDetails
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportcredentialuserregistrationdetail
#>
function Get-MgReportCredentialUserRegistrationDetail {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCredentialUserRegistrationDetails])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of credentialUserRegistrationDetails
    ${CredentialUserRegistrationDetailsId},

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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportCredentialUserRegistrationDetail_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportCredentialUserRegistrationDetail_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgReportCredentialUserRegistrationDetail_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get dailyPrintUsageSummariesByPrinter from reports
.Description
Get dailyPrintUsageSummariesByPrinter from reports

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter1
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportdailyprintusagesummarybyprinter
#>
function Get-MgReportDailyPrintUsageSummaryByPrinter {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of printUsageByPrinter
    ${PrintUsageByPrinterId},

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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsageSummaryByPrinter_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsageSummaryByPrinter_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsageSummaryByPrinter_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get dailyPrintUsageSummariesByUser from reports
.Description
Get dailyPrintUsageSummariesByUser from reports

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser1
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportdailyprintusagesummarybyuser
#>
function Get-MgReportDailyPrintUsageSummaryByUser {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of printUsageByUser
    ${PrintUsageByUserId},

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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsageSummaryByUser_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsageSummaryByUser_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsageSummaryByUser_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter1], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser1])]
[CmdletBinding(DefaultParameterSetName='List2', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get2 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_Get2';
            Get3 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_Get3';
            GetViaIdentity2 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_GetViaIdentity2';
            GetViaIdentity3 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_GetViaIdentity3';
            List2 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_List2';
            List3 = 'Microsoft.Graph.Reports.private\Get-MgReportDailyPrintUsage_List3';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Device1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Device1 = 'Microsoft.Graph.Reports.private\Get-MgReportDeviceConfigurationDeviceActivity_Device1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Device1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Device1 = 'Microsoft.Graph.Reports.private\Get-MgReportDeviceConfigurationUserActivity_Device1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailActivitySummary
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailActivitySummary])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailActivitySummary
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailActivitySummary])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailActivityUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailActivityUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserDetailDdb2_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserDetailDdb2_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailActivityUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailActivityUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserDetailFe32_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailActivityUserDetailFe32_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAppUsageAppsUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAppUsageAppsUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageAppUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageAppUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAppUsageUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAppUsageUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAppUsageUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAppUsageUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserDetail546B_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserDetail546B_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAppUsageUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAppUsageUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserDetail62Ec_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageUserDetail62Ec_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAppUsageVersionsUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAppUsageVersionsUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageVersionUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportEmailAppUsageVersionUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: endDateTime={endDateTime}
    ${EndDateTime},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: groupId={groupId}
    ${GroupId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: startDateTime={startDateTime}
    ${StartDateTime},

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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportGroupArchivedPrintJob_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportGroupArchivedPrintJob_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getM365AppPlatformUserCounts
.Description
Invoke function getM365AppPlatformUserCounts

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportm365appplatformusercount
#>
function Get-MgReportM365AppPlatformUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportM365AppPlatformUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportM365AppPlatformUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getM365AppUserCounts
.Description
Invoke function getM365AppUserCounts

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportm365appusercount
#>
function Get-MgReportM365AppUserCount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportM365AppUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportM365AppUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getM365AppUserDetail
.Description
Invoke function getM365AppUserDetail

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportm365appuserdetail2b20
#>
function Get-MgReportM365AppUserDetail2B20 {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportM365AppUserDetail2B20_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportM365AppUserDetail2B20_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getM365AppUserDetail
.Description
Invoke function getM365AppUserDetail

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportm365appuserdetailc8df
#>
function Get-MgReportM365AppUserDetailC8Df {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportM365AppUserDetailC8Df_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportM365AppUserDetailC8Df_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailboxUsageDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailboxUsageDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageDetail_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageDetail_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailboxUsageMailboxCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailboxUsageMailboxCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageMailboxCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageMailboxCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailboxUsageQuotaStatusMailboxCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailboxUsageQuotaStatusMailboxCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageQuotaStatusMailboxCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageQuotaStatusMailboxCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailboxUsageStorage
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailboxUsageStorage])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageStorage_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportMailboxUsageStorage_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Metadata for Enrollment abandonment details report
.Description
Metadata for Enrollment abandonment details report

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmanageddeviceenrollmentabandonmentdetail
#>
function Get-MgReportManagedDeviceEnrollmentAbandonmentDetail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Managed', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: filter={filter}
    ${Filter},

    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: skip={skip}
    ${Skip},

    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: skipToken={skipToken}
    ${SkipToken},

    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: top={top}
    ${Top},

    [Parameter(ParameterSetName='ManagedViaIdentity', Mandatory, ValueFromPipeline)]
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
            Managed = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentAbandonmentDetail_Managed';
            ManagedViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentAbandonmentDetail_ManagedViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Metadata for Enrollment abandonment summary report
.Description
Metadata for Enrollment abandonment summary report

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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmanageddeviceenrollmentabandonmentsummary
#>
function Get-MgReportManagedDeviceEnrollmentAbandonmentSummary {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Managed', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: filter={filter}
    ${Filter},

    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: skip={skip}
    ${Skip},

    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: skipToken={skipToken}
    ${SkipToken},

    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: top={top}
    ${Top},

    [Parameter(ParameterSetName='ManagedViaIdentity', Mandatory, ValueFromPipeline)]
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
            Managed = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentAbandonmentSummary_Managed';
            ManagedViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentAbandonmentSummary_ManagedViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Managed', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Managed = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentFailureDetail027E_Managed';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Managed', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: filter={filter}
    ${Filter},

    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: skip={skip}
    ${Skip},

    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: skipToken={skipToken}
    ${SkipToken},

    [Parameter(ParameterSetName='Managed', Mandatory)]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Int32]
    # Usage: top={top}
    ${Top},

    [Parameter(ParameterSetName='ManagedViaIdentity', Mandatory, ValueFromPipeline)]
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
            Managed = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentFailureDetail2B3D_Managed';
            ManagedViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentFailureDetail2B3D_ManagedViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Metadata for the enrollment failure trends report
.Description
Metadata for the enrollment failure trends report

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmanageddeviceenrollmentfailuretrend
#>
function Get-MgReportManagedDeviceEnrollmentFailureTrend {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Managed', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Managed = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentFailureTrend_Managed';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Top', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Top1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='TopViaIdentity', Mandatory, ValueFromPipeline)]
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
            Top = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentTopFailures_Top';
            Top1 = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentTopFailures_Top1';
            TopViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportManagedDeviceEnrollmentTopFailures_TopViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get monthlyPrintUsageSummariesByPrinter from reports
.Description
Get monthlyPrintUsageSummariesByPrinter from reports

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter1
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmonthlyprintusagesummarybyprinter
#>
function Get-MgReportMonthlyPrintUsageSummaryByPrinter {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of printUsageByPrinter
    ${PrintUsageByPrinterId},

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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsageSummaryByPrinter_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsageSummaryByPrinter_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsageSummaryByPrinter_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get monthlyPrintUsageSummariesByUser from reports
.Description
Get monthlyPrintUsageSummariesByUser from reports

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser1
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportmonthlyprintusagesummarybyuser
#>
function Get-MgReportMonthlyPrintUsageSummaryByUser {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of printUsageByUser
    ${PrintUsageByUserId},

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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsageSummaryByUser_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsageSummaryByUser_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsageSummaryByUser_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByPrinter1], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrintUsageByUser1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_Get';
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_Get1';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_GetViaIdentity';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_GetViaIdentity1';
            List = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_List';
            List1 = 'Microsoft.Graph.Reports.private\Get-MgReportMonthlyPrintUsage_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActivationCounts
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365activationcount
#>
function Get-MgReportOffice365ActivationCount {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActivationCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActivationCount_Get1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActivationsUserCounts
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365activationusercount
#>
function Get-MgReportOffice365ActivationUserCount {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActivationsUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActivationUserCount_Get1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActivationsUserDetail
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportoffice365activationuserdetail
#>
function Get-MgReportOffice365ActivationUserDetail {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActivationsUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActivationUserDetail_Get1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActiveUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActiveUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActiveUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActiveUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserDetail68Ad_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserDetail68Ad_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActiveUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ActiveUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserDetailD389_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ActiveUserDetailD389_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityDetail38F6_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityDetail38F6_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityDetail81Cc_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityDetail81Cc_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityFileCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityFileCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityFileCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityFileCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityGroupCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityGroupCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityGroupCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityGroupCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityStorage
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365GroupsActivityStorage])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityStorage_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365GroupActivityStorage_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ServicesUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOffice365ServicesUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ServiceUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOffice365ServiceUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSiteActivitySummary
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSiteActivitySummary])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityFileCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityFileCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSiteActivitySummary
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSiteActivitySummary])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveActivityUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveActivityUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserDetail05F1_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserDetail05F1_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveActivityUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveActivityUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserDetailC424_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveActivityUserDetailC424_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveUsageAccountCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveUsageAccountCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveUsageAccountDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveUsageAccountDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountDetailDd7F_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountDetailDd7F_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveUsageAccountDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveUsageAccountDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountDetailE827_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageAccountDetailE827_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveUsageFileCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOneDriveUsageFileCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageFileCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageFileCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSiteUsageStorage
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSiteUsageStorage])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageStorage_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportOneDriveUsageStorage_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: endDateTime={endDateTime}
    ${EndDateTime},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: printerId={printerId}
    ${PrinterId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: startDateTime={startDateTime}
    ${StartDateTime},

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
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportPrinterArchivedPrintJob_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportPrinterArchivedPrintJob_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getRelyingPartyDetailedSummary
.Description
Invoke function getRelyingPartyDetailedSummary

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRelyingPartyDetailedSummary
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportrelyingpartydetailedsummary
#>
function Get-MgReportRelyingPartyDetailedSummary {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRelyingPartyDetailedSummary])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportRelyingPartyDetailedSummary_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportRelyingPartyDetailedSummary_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSiteActivitySummary
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSiteActivitySummary])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityFileCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityFileCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointActivityPages
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointActivityPages])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityPage_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityPage_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointActivityUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointActivityUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointActivityUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointActivityUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserDetailB778_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserDetailB778_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointActivityUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointActivityUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserDetailF3Be_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointActivityUserDetailF3Be_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointSiteUsageDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointSiteUsageDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageDetail204B_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageDetail204B_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointSiteUsageDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointSiteUsageDetail])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageDetailD27A_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageDetailD27A_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointSiteUsageFileCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointSiteUsageFileCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageFileCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageFileCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointSiteUsagePages
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointSiteUsagePages])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsagePage_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsagePage_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointSiteUsageSiteCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSharePointSiteUsageSiteCounts])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageSiteCount_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageSiteCount_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSiteUsageStorage
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSiteUsageStorage])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageStorage_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSharePointSiteUsageStorage_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessActivityCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessActivityUserCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessActivityUserDetail
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessDeviceUsageDistributionUserCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessDeviceUsageUserCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessDeviceUsageUserDetail
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessOrganizerActivityCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessOrganizerActivityMinuteCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessOrganizerActivityUserCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessParticipantActivityCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessParticipantActivityMinuteCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessParticipantActivityUserCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessPeerToPeerActivityCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessPeerToPeerActivityMinuteCounts
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessPeerToPeerActivityUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessActivityCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessActivityUserCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessOrganizerActivityUserCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessParticipantActivityCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessParticipantActivityMinuteCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessParticipantActivityUserCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessPeerToPeerActivityCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessPeerToPeerActivityMinuteCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessPeerToPeerActivityUserCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessActivityUserDetail], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessDeviceUsageDistributionUserCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessDeviceUsageUserCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessDeviceUsageUserDetail], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessOrganizerActivityCounts], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSkypeForBusinessOrganizerActivityMinuteCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='Get10', Mandatory)]
    [Parameter(ParameterSetName='Get11', Mandatory)]
    [Parameter(ParameterSetName='Get12', Mandatory)]
    [Parameter(ParameterSetName='Get13', Mandatory)]
    [Parameter(ParameterSetName='Get14', Mandatory)]
    [Parameter(ParameterSetName='Get15', Mandatory)]
    [Parameter(ParameterSetName='Get16', Mandatory)]
    [Parameter(ParameterSetName='Get3', Mandatory)]
    [Parameter(ParameterSetName='Get4', Mandatory)]
    [Parameter(ParameterSetName='Get5', Mandatory)]
    [Parameter(ParameterSetName='Get7', Mandatory)]
    [Parameter(ParameterSetName='Get8', Mandatory)]
    [Parameter(ParameterSetName='Get9', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: period={period}
    ${Period},

    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Parameter(ParameterSetName='Get6', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: date={date}
    ${Date},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity10', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity11', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity12', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity13', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity14', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity15', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity16', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity4', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity5', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity6', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity7', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity8', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity9', Mandatory, ValueFromPipeline)]
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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get';
            Get1 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get1';
            Get10 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get10';
            Get11 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get11';
            Get12 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get12';
            Get13 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get13';
            Get14 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get14';
            Get15 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get15';
            Get16 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get16';
            Get2 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get2';
            Get3 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get3';
            Get4 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get4';
            Get5 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get5';
            Get6 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get6';
            Get7 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get7';
            Get8 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get8';
            Get9 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_Get9';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity';
            GetViaIdentity1 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity1';
            GetViaIdentity10 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity10';
            GetViaIdentity11 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity11';
            GetViaIdentity12 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity12';
            GetViaIdentity13 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity13';
            GetViaIdentity14 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity14';
            GetViaIdentity15 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity15';
            GetViaIdentity16 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity16';
            GetViaIdentity2 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity2';
            GetViaIdentity3 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity3';
            GetViaIdentity4 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity4';
            GetViaIdentity5 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity5';
            GetViaIdentity6 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity6';
            GetViaIdentity7 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity7';
            GetViaIdentity8 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity8';
            GetViaIdentity9 = 'Microsoft.Graph.Reports.private\Get-MgReportSkype_GetViaIdentity9';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsDeviceUsageDistributionTotalUserCounts
.Description
Invoke function getTeamsDeviceUsageDistributionTotalUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageDistributionUserCounts
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamdeviceusagedistributiontotalusercount
#>
function Get-MgReportTeamDeviceUsageDistributionTotalUserCount {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageDistributionUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageDistributionTotalUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageDistributionTotalUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageDistributionUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageDistributionUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageDistributionUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageDistributionUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsDeviceUsageTotalUserCounts
.Description
Invoke function getTeamsDeviceUsageTotalUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageUserCounts
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamdeviceusagetotalusercount
#>
function Get-MgReportTeamDeviceUsageTotalUserCount {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageTotalUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageTotalUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserDetail7148_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserDetail7148_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsDeviceUsageUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserDetail7565_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamDeviceUsageUserDetail7565_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsUserActivityDistributionTotalUserCounts
.Description
Invoke function getTeamsUserActivityDistributionTotalUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityDistributionUserCounts
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamuseractivitydistributiontotalusercount
#>
function Get-MgReportTeamUserActivityDistributionTotalUserCount {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityDistributionUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityDistributionTotalUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityDistributionTotalUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsUserActivityDistributionUserCounts
.Description
Invoke function getTeamsUserActivityDistributionUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityDistributionUserCounts
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamuseractivitydistributionusercount
#>
function Get-MgReportTeamUserActivityDistributionUserCount {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityDistributionUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityDistributionUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityDistributionUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsUserActivityTotalCounts
.Description
Invoke function getTeamsUserActivityTotalCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityCounts
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamuseractivitytotalcount
#>
function Get-MgReportTeamUserActivityTotalCount {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityTotalCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityTotalCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function getTeamsUserActivityTotalUserCounts
.Description
Invoke function getTeamsUserActivityTotalUserCounts

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityUserCounts
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportteamuseractivitytotalusercount
#>
function Get-MgReportTeamUserActivityTotalUserCount {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityTotalUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityTotalUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserDetailA3F1_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserDetailA3F1_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamsUserActivityUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserDetailEb13_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportTeamUserActivityUserDetailEb13_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob1
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphArchivedPrintJob1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: endDateTime={endDateTime}
    ${EndDateTime},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.DateTime]
    # Usage: startDateTime={startDateTime}
    ${StartDateTime},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: userId={userId}
    ${UserId},

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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportUserArchivedPrintJob_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportUserArchivedPrintJob_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get userCredentialUsageDetails from reports
.Description
Get userCredentialUsageDetails from reports

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserCredentialUsageDetails
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/get-mgreportusercredentialusagedetail
#>
function Get-MgReportUserCredentialUsageDetail {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserCredentialUsageDetails])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userCredentialUsageDetails
    ${UserCredentialUsageDetailsId},

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
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportUserCredentialUsageDetail_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportUserCredentialUsageDetail_GetViaIdentity';
            List = 'Microsoft.Graph.Reports.private\Get-MgReportUserCredentialUsageDetail_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerActivitySummary
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerActivitySummary])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerActivitySummary
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerActivitySummary])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerActivityUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerActivityUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserDetail15A5_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserDetail15A5_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerActivityUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerActivityUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserDetailAc30_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerActivityUserDetailAc30_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerDeviceUsageDistributionUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerDeviceUsageDistributionUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageDistributionUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageDistributionUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerDeviceUsageUserCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerDeviceUsageUserCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerDeviceUsageUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerDeviceUsageUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserDetailCfad_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserDetailCfad_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerDeviceUsageUserDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerDeviceUsageUserDetail])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserDetailD0Ac_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerDeviceUsageUserDetailD0Ac_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerGroupsActivityCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerGroupsActivityCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerGroupsActivityDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerGroupsActivityDetail])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityDetail0D7D_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityDetail0D7D_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerGroupsActivityDetail
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerGroupsActivityDetail])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityDetailDa9A_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityDetailDa9A_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerGroupsActivityGroupCounts
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphYammerGroupsActivityGroupCounts])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityGroupCount_Get';
            GetViaIdentity = 'Microsoft.Graph.Reports.private\Get-MgReportYammerGroupActivityGroupCount_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Invoke function usersRegisteredByFeature
.Description
Invoke function usersRegisteredByFeature

.Inputs
Microsoft.Graph.PowerShell.Models.IReportsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserRegistrationFeatureSummary
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserRegistrationMethodSummary
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
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/invoke-mguserreportauthenticationmethodregistered
#>
function Invoke-MgUserReportAuthenticationMethodRegistered {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserRegistrationFeatureSummary], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserRegistrationMethodSummary])]
[CmdletBinding(DefaultParameterSetName='Users', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Users1', Mandatory)]
    [Parameter(ParameterSetName='Users3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: includedUserRoles={includedUserRoles}
    ${IncludedUserRoles},

    [Parameter(ParameterSetName='Users1', Mandatory)]
    [Parameter(ParameterSetName='Users3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: includedUserTypes={includedUserTypes}
    ${IncludedUserTypes},

    [Parameter(ParameterSetName='UsersViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UsersViaIdentity1', Mandatory, ValueFromPipeline)]
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
            Users = 'Microsoft.Graph.Reports.private\Invoke-MgUserReportAuthenticationMethodRegistered_Users';
            Users1 = 'Microsoft.Graph.Reports.private\Invoke-MgUserReportAuthenticationMethodRegistered_Users1';
            Users2 = 'Microsoft.Graph.Reports.private\Invoke-MgUserReportAuthenticationMethodRegistered_Users2';
            Users3 = 'Microsoft.Graph.Reports.private\Invoke-MgUserReportAuthenticationMethodRegistered_Users3';
            UsersViaIdentity = 'Microsoft.Graph.Reports.private\Invoke-MgUserReportAuthenticationMethodRegistered_UsersViaIdentity';
            UsersViaIdentity1 = 'Microsoft.Graph.Reports.private\Invoke-MgUserReportAuthenticationMethodRegistered_UsersViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
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
            Delete = 'Microsoft.Graph.Reports.private\Remove-MgDeviceManagementReport_Delete';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReports1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphDeviceManagementReports1>: Singleton entity that acts as a container for all reports functionality.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [CachedReportConfigurations <IMicrosoftGraphDeviceManagementCachedReportConfiguration[]>]: Entity representing the configuration of a cached report
    [Id <String>]: Read-only.
    [ExpirationDateTime <DateTime?>]: Time that the cached report expires
    [Filter <String>]: Filters applied on report creation.
    [LastRefreshDateTime <DateTime?>]: Time that the cached report was last refreshed
    [Metadata <String>]: Caller-managed metadata associated with the report
    [OrderBy <String[]>]: Ordering of columns in the report
    [ReportName <String>]: Name of the report
    [Select <String[]>]: Columns selected from the report
    [Status <String>]: Possible statuses associated with a generated report
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
  [ReportSchedules <IMicrosoftGraphDeviceManagementReportSchedule[]>]: Entity representing a schedule for which reports are delivered
    [Id <String>]: Read-only.
    [Emails <String[]>]: Emails to which the scheduled reports are delivered
    [EndDateTime <DateTime?>]: Time that the delivery of the scheduled reports ends
    [Filter <String>]: Filters applied on the report
    [Format <String>]: Possible values for the file format of a report
    [OrderBy <String[]>]: Ordering of columns in the report
    [Recurrence <String>]: Possible values for the recurrence of a scheduled report
    [ReportName <String>]: Name of the report
    [ReportScheduleName <String>]: Name of the schedule
    [Select <String[]>]: Columns selected from the report
    [StartDateTime <DateTime?>]: Time that the delivery of the scheduled reports starts
    [Subject <String>]: Subject of the scheduled reports that are delivered
    [UserId <String>]: The Id of the User who created the report

CACHEDREPORTCONFIGURATIONS <IMicrosoftGraphDeviceManagementCachedReportConfiguration[]>: Entity representing the configuration of a cached report
  [Id <String>]: Read-only.
  [ExpirationDateTime <DateTime?>]: Time that the cached report expires
  [Filter <String>]: Filters applied on report creation.
  [LastRefreshDateTime <DateTime?>]: Time that the cached report was last refreshed
  [Metadata <String>]: Caller-managed metadata associated with the report
  [OrderBy <String[]>]: Ordering of columns in the report
  [ReportName <String>]: Name of the report
  [Select <String[]>]: Columns selected from the report
  [Status <String>]: Possible statuses associated with a generated report

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

REPORTSCHEDULES <IMicrosoftGraphDeviceManagementReportSchedule[]>: Entity representing a schedule for which reports are delivered
  [Id <String>]: Read-only.
  [Emails <String[]>]: Emails to which the scheduled reports are delivered
  [EndDateTime <DateTime?>]: Time that the delivery of the scheduled reports ends
  [Filter <String>]: Filters applied on the report
  [Format <String>]: Possible values for the file format of a report
  [OrderBy <String[]>]: Ordering of columns in the report
  [Recurrence <String>]: Possible values for the recurrence of a scheduled report
  [ReportName <String>]: Name of the report
  [ReportScheduleName <String>]: Name of the schedule
  [Select <String[]>]: Columns selected from the report
  [StartDateTime <DateTime?>]: Time that the delivery of the scheduled reports starts
  [Subject <String>]: Subject of the scheduled reports that are delivered
  [UserId <String>]: The Id of the User who created the report
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.reports/update-mgdevicemanagementreport
#>
function Update-MgDeviceManagementReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReports1]
    # Singleton entity that acts as a container for all reports functionality.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementCachedReportConfiguration[]]
    # Entity representing the configuration of a cached report
    # To construct, see NOTES section for CACHEDREPORTCONFIGURATIONS properties and create a hash table.
    ${CachedReportConfigurations},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementExportJob[]]
    # Entity representing a job to export a report
    # To construct, see NOTES section for EXPORTJOBS properties and create a hash table.
    ${ExportJobs},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceManagementReportSchedule[]]
    # Entity representing a schedule for which reports are delivered
    # To construct, see NOTES section for REPORTSCHEDULES properties and create a hash table.
    ${ReportSchedules},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update = 'Microsoft.Graph.Reports.private\Update-MgDeviceManagementReport_Update';
            UpdateExpanded = 'Microsoft.Graph.Reports.private\Update-MgDeviceManagementReport_UpdateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBANVOImJA5T77y
# yzTzgHvJKYCxJhlct85jEpuIPEa9S6CCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgiXVqq7mo
# lT3/gHOQsIBqycxagGjj27Yk30002aj+OIUwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQCfnY6INC9pBRLPvX7yPP9yv9B5VjshxTBkCgDz3/RV
# BvIpSOJEQZqQdeg6caIU6DJOM5AHAJZtBwnwBP5QtBp50Wzl1RUWXmh6OsqGwY0A
# Di24i1Co9rMXVLvKyFV5THH3Kiso6aGOZnTgnw+EA7nkBWXdbXD/FXfFdsdsaD0S
# +WO8+LV8K1pKmo19EQhJz7/ngOo7/GWukHJWzMu9pO/q+3lpu1jK02gpM3DlccZK
# LsLN+T8YlJd0n/bGtICN6aLz5fdNQXCJM+u95q2LTvTpK28eHWb9GekwFH6dy8tu
# sGoQh8/Bw7jcJQzk1+PO9R9jkBF9uYXsFcrAXlJqLttioYIS8TCCEu0GCisGAQQB
# gjcDAwExghLdMIIS2QYJKoZIhvcNAQcCoIISyjCCEsYCAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEINB+rEob2mLIpHa5sdPBwkrJ+q3FQpceKjJLchag
# 3f03AgZhb0eIf5EYEzIwMjExMDI3MDcxMTI1LjUyOFowBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjozMkJELUUzRDUtM0IxRDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCDkQwggT1MIID3aADAgECAhMzAAABYtD+AvMB5c1JAAAA
# AAFiMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMDExNDE5MDIyMloXDTIyMDQxMTE5MDIyMlowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjozMkJE
# LUUzRDUtM0IxRDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAO+GodT2ucL3Mr2DQsv2
# ELNbSvKyBpYdUKtUBWiZmFVy18pG/pucgkrc5i9tu8CY7GpWV/CQNmHG2mVeSHMJ
# vbwCc/AAv7JP3bFCt6Zg75IbVSNOGA1eqLbmQiC6UAfSKXLN3dHtQ5diihb3Ymzp
# NP9K0cVPZfv2MXm+ZVU0RES8cyPkXel7+UEGE+kqdiBNDdb8yBXd8sju+90+V4nz
# YC+ZWW7SFJ2FFZlASpVaHpjv+eGohXlQaSBvmM4Q0xe3LhzQM8ViGz9cLeFSKgFf
# SY7qizL7wUg+eqYvDUyjPX8axEQHmk0th23wWH5p0Wduws43qNIo0OQ0mRotBK71
# nykCAwEAAaOCARswggEXMB0GA1UdDgQWBBTLxEoRYEpDtzp84B5WlZN2kP4qazAf
# BgNVHSMEGDAWgBTVYzpcijGQ80N7fEYbxTNoWoVtVTBWBgNVHR8ETzBNMEugSaBH
# hkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNU
# aW1TdGFQQ0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUF
# BzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1RpbVN0
# YVBDQV8yMDEwLTA3LTAxLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsG
# AQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IBAQAtQa3DoXYbW/cXACbcVSFGe4gC8GXs
# FxSHT3JgwFU/NdJOcbkcFTVvTp6vlmTvHm6sIjknRBB0Xi1NBTqPw20u6u/T7Cnc
# /z0gT6mf9crI0VR9C+R1CtjezYKZEdZZ7fuNQWjsyftNDhQy+Rqnqryt0VoezLal
# heiinHzZD/4Y4hZYPf0u8TSv1ZfKtdBweWG3QU0Lp/I9SbIoemDG97RULMcPvq2u
# fhUp3OMiYQGL1WqkykSnqRJsM2IcA4l4dmoPNP6dLg5Dr7NVoYKIMInaQVZjSwDM
# ZhWryvfizX0SrzyLgkMPhLMVkfLxQQSQ37NeFk7F1RfeAkNWAh6mCORBMIIGcTCC
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
# cGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjoz
# MkJELUUzRDUtM0IxRDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vy
# dmljZaIjCgEBMAcGBSsOAwIaAxUAmrP6Chrbz0ax7s57n5Pop3VC8gyggYMwgYCk
# fjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIF
# AOUjAF8wIhgPMjAyMTEwMjcwMjMxNTlaGA8yMDIxMTAyODAyMzE1OVowdzA9Bgor
# BgEEAYRZCgQBMS8wLTAKAgUA5SMAXwIBADAKAgEAAgIjbAIB/zAHAgEAAgIRMjAK
# AgUA5SRR3wIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIB
# AAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBAEDKd0rUlfwtSFhe
# apfSJbNkUl/YLkLarNMcECdQbe3BTzX/KNUEwVnS4T1tRClbwfGaMjREg6P+LtUM
# TwduozicfMXLZlgfhcxUV6A24binKBxG8uf9PdhpTmVgazZL3q5gisy1ZDtmtr9e
# NJ0yht5OhOvVIdEsvTNpRvvfQf+7MYIDDTCCAwkCAQEwgZMwfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTACEzMAAAFi0P4C8wHlzUkAAAAAAWIwDQYJYIZIAWUD
# BAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0B
# CQQxIgQgvdeQjCtvQLXiEjfbT25HLwZjWQ9w4B3cIG92ZWiJQQ8wgfoGCyqGSIb3
# DQEJEAIvMYHqMIHnMIHkMIG9BCCKqhiV+zwNDrpU7DRB7Mi57xi6GBNYsGjgZqq2
# qVMKMjCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAB
# YtD+AvMB5c1JAAAAAAFiMCIEIDkSqHv3dCHTkJV16zMYzyhRpgF0rnZz5i+ZHtou
# /I1tMA0GCSqGSIb3DQEBCwUABIIBACD+34di+YTD80Kl7cRfRsnaKbF2RYJ1IWEa
# IojeMSa0alyeyrE0vZxRusN+3WnvIFOe/LMnGiQjVB1ygDLDICLl4Z7ZP7lsILUy
# m8swxz6rwsTXBH8TbT9woNZe2OstLYDEQxXVIRtG07kby9gXcFqjZSy9IvCenpN7
# Ro4mDaZ6ZaFp/759uB8xrLT5rZkPP97vNG5eeVtKEsXidqEzC7Oish3nKiaCq08o
# qzn4Kdq0GBfm7iM35shGplOiAujkiLo5v1cPtVL79UFajLihyXcaX7BFu1TIyQPG
# qyb7L07Z/fWLTxAygIdpcLGjfMbOlZ+eFWAfEVP7V5diCki07ck=
# SIG # End signature block
