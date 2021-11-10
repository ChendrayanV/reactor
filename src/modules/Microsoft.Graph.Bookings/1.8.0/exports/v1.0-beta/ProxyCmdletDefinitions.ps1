
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the appointments of this business.
Read-only.
Nullable.
.Description
All the appointments of this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/get-mgbookingbusinessappointment
#>
function Get-MgBookingBusinessAppointment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingAppointment
    ${BookingAppointmentId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Get = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessAppointment_Get';
            GetViaIdentity = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessAppointment_GetViaIdentity';
            List = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessAppointment_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The set of appointments of this business in a specified date range.
Read-only.
Nullable.
.Description
The set of appointments of this business in a specified date range.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/get-mgbookingbusinesscalendarview
#>
function Get-MgBookingBusinessCalendarView {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingAppointment
    ${BookingAppointmentId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # The end date and time of the time range, represented in ISO 8601 format.
    # For example, 2019-11-08T20:00:00-08:00
    ${End},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # The start date and time of the time range, represented in ISO 8601 format.
    # For example, 2019-11-08T19:00:00-08:00
    ${Start},

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
            Get = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessCalendarView_Get';
            GetViaIdentity = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessCalendarView_GetViaIdentity';
            List = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessCalendarView_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the customers of this business.
Read-only.
Nullable.
.Description
All the customers of this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCustomer
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/get-mgbookingbusinesscustomer
#>
function Get-MgBookingBusinessCustomer {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCustomer])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingCustomer
    ${BookingCustomerId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Get = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessCustomer_Get';
            GetViaIdentity = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessCustomer_GetViaIdentity';
            List = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessCustomer_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the services offered by this business.
Read-only.
Nullable.
.Description
All the services offered by this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingService
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/get-mgbookingbusinessservice
#>
function Get-MgBookingBusinessService {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingService])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingService
    ${BookingServiceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Get = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessService_Get';
            GetViaIdentity = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessService_GetViaIdentity';
            List = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessService_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the staff members that provide services in this business.
Read-only.
Nullable.
.Description
All the staff members that provide services in this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingStaffMember
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/get-mgbookingbusinessstaffmember
#>
function Get-MgBookingBusinessStaffMember {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingStaffMember])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingStaffMember
    ${BookingStaffMemberId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Get = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessStaffMember_Get';
            GetViaIdentity = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessStaffMember_GetViaIdentity';
            List = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusinessStaffMember_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Represents a Microsot Bookings Business.
.Description
Represents a Microsot Bookings Business.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingBusiness
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/get-mgbookingbusiness
#>
function Get-MgBookingBusiness {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingBusiness])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Get = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusiness_Get';
            GetViaIdentity = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusiness_GetViaIdentity';
            List = 'Microsoft.Graph.Bookings.private\Get-MgBookingBusiness_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get entity from bookingCurrencies by key
.Description
Get entity from bookingCurrencies by key

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCurrency
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/get-mgbookingcurrency
#>
function Get-MgBookingCurrency {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCurrency])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingCurrency
    ${BookingCurrencyId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Get = 'Microsoft.Graph.Bookings.private\Get-MgBookingCurrency_Get';
            GetViaIdentity = 'Microsoft.Graph.Bookings.private\Get-MgBookingCurrency_GetViaIdentity';
            List = 'Microsoft.Graph.Bookings.private\Get-MgBookingCurrency_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the appointments of this business.
Read-only.
Nullable.
.Description
All the appointments of this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphBookingAppointment>: Represents a booked appointment of a service by a customer in a business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [CustomerEmailAddress <String>]: The SMTP address of the bookingCustomer who is booking the appointment.
  [CustomerId <String>]: The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
  [CustomerLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [CustomerName <String>]: The customer's name.
  [CustomerNotes <String>]: Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
  [CustomerPhone <String>]: The customer's phone number.
  [CustomerTimeZone <String>]: 
  [Duration <TimeSpan?>]: The length of the appointment, denoted in ISO8601 format.
  [End <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [InvoiceAmount <Double?>]: The billed amount on the invoice.
  [InvoiceDate <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [InvoiceId <String>]: The ID of the invoice.
  [InvoiceStatus <String>]: bookingInvoiceStatus
  [InvoiceUrl <String>]: The URL of the invoice in Microsoft Bookings.
  [IsLocationOnline <Boolean?>]: 
  [JoinWebUrl <String>]: 
  [OnlineMeetingUrl <String>]: 
  [OptOutOfCustomerEmail <Boolean?>]: True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
  [PostBuffer <TimeSpan?>]: The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
  [PreBuffer <TimeSpan?>]: The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
  [Price <Double?>]: The regular price for an appointment for the specified bookingService.
  [PriceType <String>]: Represents the type of pricing of a booking service.
  [Reminders <IMicrosoftGraphBookingReminder[]>]: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [SelfServiceAppointmentId <String>]: An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
  [ServiceId <String>]: The ID of the bookingService associated with this appointment.
  [ServiceLocation <IMicrosoftGraphLocation>]: location
  [ServiceName <String>]: The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
  [ServiceNotes <String>]: Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: The ID of each bookingStaffMember who is scheduled in this appointment.
  [Start <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

CUSTOMERLOCATION <IMicrosoftGraphLocation>: location
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
    [Altitude <Double?>]: The altitude of the location.
    [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
    [Latitude <Double?>]: The latitude of the location.
    [Longitude <Double?>]: The longitude of the location.
  [DisplayName <String>]: The name associated with the location.
  [LocationEmailAddress <String>]: Optional email address of the location.
  [LocationType <String>]: locationType
  [LocationUri <String>]: Optional URI representing the location.
  [UniqueId <String>]: For internal use only.
  [UniqueIdType <String>]: locationUniqueIdType

END <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

INVOICEDATE <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.

REMINDERS <IMicrosoftGraphBookingReminder[]>: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
  [Message <String>]: The message in the reminder.
  [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
  [Recipients <String>]: bookingReminderRecipients

SERVICELOCATION <IMicrosoftGraphLocation>: location
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
    [Altitude <Double?>]: The altitude of the location.
    [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
    [Latitude <Double?>]: The latitude of the location.
    [Longitude <Double?>]: The longitude of the location.
  [DisplayName <String>]: The name associated with the location.
  [LocationEmailAddress <String>]: Optional email address of the location.
  [LocationType <String>]: locationType
  [LocationUri <String>]: Optional URI representing the location.
  [UniqueId <String>]: For internal use only.
  [UniqueIdType <String>]: locationUniqueIdType

START <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/new-mgbookingbusinessappointment
#>
function New-MgBookingBusinessAppointment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment]
    # Represents a booked appointment of a service by a customer in a business.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AdditionalInformation},

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
    # The SMTP address of the bookingCustomer who is booking the appointment.
    ${CustomerEmailAddress},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the bookingCustomer for this appointment.
    # If no ID is specified when an appointment is created, then a new bookingCustomer object is created.
    # Once set, you should consider the customerId immutable.
    ${CustomerId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocation]
    # location
    # To construct, see NOTES section for CUSTOMERLOCATION properties and create a hash table.
    ${CustomerLocation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The customer's name.
    ${CustomerName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Notes from the customer associated with this appointment.
    # You can get the value only when reading this bookingAppointment by its ID.
    # You can set this property only when initially creating an appointment with a new customer.
    # After that point, the value is computed from the customer represented by customerId.
    ${CustomerNotes},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The customer's phone number.
    ${CustomerPhone},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CustomerTimeZone},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The length of the appointment, denoted in ISO8601 format.
    ${Duration},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for END properties and create a hash table.
    ${End},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # The billed amount on the invoice.
    ${InvoiceAmount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for INVOICEDATE properties and create a hash table.
    ${InvoiceDate},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the invoice.
    ${InvoiceId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # bookingInvoiceStatus
    ${InvoiceStatus},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the invoice in Microsoft Bookings.
    ${InvoiceUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsLocationOnline},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinWebUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${OnlineMeetingUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
    ${OptOutOfCustomerEmail},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The amount of time to reserve after the appointment ends, for cleaning up, as an example.
    # The value is expressed in ISO8601 format.
    ${PostBuffer},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The amount of time to reserve before the appointment begins, for preparation, as an example.
    # The value is expressed in ISO8601 format.
    ${PreBuffer},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # The regular price for an appointment for the specified bookingService.
    ${Price},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Represents the type of pricing of a booking service.
    ${PriceType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingReminder[]]
    # The collection of customer reminders sent for this appointment.
    # The value of this property is available only when reading this bookingAppointment by its ID.
    # To construct, see NOTES section for REMINDERS properties and create a hash table.
    ${Reminders},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
    ${SelfServiceAppointmentId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the bookingService associated with this appointment.
    ${ServiceId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocation]
    # location
    # To construct, see NOTES section for SERVICELOCATION properties and create a hash table.
    ${ServiceLocation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The name of the bookingService associated with this appointment.This property is optional when creating a new appointment.
    # If not specified, it is computed from the service associated with the appointment by the serviceId property.
    ${ServiceName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Notes from a bookingStaffMember.
    # The value of this property is available only when reading this bookingAppointment by its ID.
    ${ServiceNotes},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SmsNotificationsEnabled},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The ID of each bookingStaffMember who is scheduled in this appointment.
    ${StaffMemberIds},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for START properties and create a hash table.
    ${Start},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessAppointment_Create';
            CreateExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessAppointment_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessAppointment_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessAppointment_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The set of appointments of this business in a specified date range.
Read-only.
Nullable.
.Description
The set of appointments of this business in a specified date range.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphBookingAppointment>: Represents a booked appointment of a service by a customer in a business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [CustomerEmailAddress <String>]: The SMTP address of the bookingCustomer who is booking the appointment.
  [CustomerId <String>]: The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
  [CustomerLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [CustomerName <String>]: The customer's name.
  [CustomerNotes <String>]: Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
  [CustomerPhone <String>]: The customer's phone number.
  [CustomerTimeZone <String>]: 
  [Duration <TimeSpan?>]: The length of the appointment, denoted in ISO8601 format.
  [End <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [InvoiceAmount <Double?>]: The billed amount on the invoice.
  [InvoiceDate <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [InvoiceId <String>]: The ID of the invoice.
  [InvoiceStatus <String>]: bookingInvoiceStatus
  [InvoiceUrl <String>]: The URL of the invoice in Microsoft Bookings.
  [IsLocationOnline <Boolean?>]: 
  [JoinWebUrl <String>]: 
  [OnlineMeetingUrl <String>]: 
  [OptOutOfCustomerEmail <Boolean?>]: True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
  [PostBuffer <TimeSpan?>]: The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
  [PreBuffer <TimeSpan?>]: The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
  [Price <Double?>]: The regular price for an appointment for the specified bookingService.
  [PriceType <String>]: Represents the type of pricing of a booking service.
  [Reminders <IMicrosoftGraphBookingReminder[]>]: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [SelfServiceAppointmentId <String>]: An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
  [ServiceId <String>]: The ID of the bookingService associated with this appointment.
  [ServiceLocation <IMicrosoftGraphLocation>]: location
  [ServiceName <String>]: The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
  [ServiceNotes <String>]: Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: The ID of each bookingStaffMember who is scheduled in this appointment.
  [Start <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

CUSTOMERLOCATION <IMicrosoftGraphLocation>: location
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
    [Altitude <Double?>]: The altitude of the location.
    [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
    [Latitude <Double?>]: The latitude of the location.
    [Longitude <Double?>]: The longitude of the location.
  [DisplayName <String>]: The name associated with the location.
  [LocationEmailAddress <String>]: Optional email address of the location.
  [LocationType <String>]: locationType
  [LocationUri <String>]: Optional URI representing the location.
  [UniqueId <String>]: For internal use only.
  [UniqueIdType <String>]: locationUniqueIdType

END <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

INVOICEDATE <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.

REMINDERS <IMicrosoftGraphBookingReminder[]>: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
  [Message <String>]: The message in the reminder.
  [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
  [Recipients <String>]: bookingReminderRecipients

SERVICELOCATION <IMicrosoftGraphLocation>: location
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
    [Altitude <Double?>]: The altitude of the location.
    [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
    [Latitude <Double?>]: The latitude of the location.
    [Longitude <Double?>]: The longitude of the location.
  [DisplayName <String>]: The name associated with the location.
  [LocationEmailAddress <String>]: Optional email address of the location.
  [LocationType <String>]: locationType
  [LocationUri <String>]: Optional URI representing the location.
  [UniqueId <String>]: For internal use only.
  [UniqueIdType <String>]: locationUniqueIdType

START <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/new-mgbookingbusinesscalendarview
#>
function New-MgBookingBusinessCalendarView {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment]
    # Represents a booked appointment of a service by a customer in a business.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AdditionalInformation},

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
    # The SMTP address of the bookingCustomer who is booking the appointment.
    ${CustomerEmailAddress},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the bookingCustomer for this appointment.
    # If no ID is specified when an appointment is created, then a new bookingCustomer object is created.
    # Once set, you should consider the customerId immutable.
    ${CustomerId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocation]
    # location
    # To construct, see NOTES section for CUSTOMERLOCATION properties and create a hash table.
    ${CustomerLocation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The customer's name.
    ${CustomerName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Notes from the customer associated with this appointment.
    # You can get the value only when reading this bookingAppointment by its ID.
    # You can set this property only when initially creating an appointment with a new customer.
    # After that point, the value is computed from the customer represented by customerId.
    ${CustomerNotes},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The customer's phone number.
    ${CustomerPhone},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CustomerTimeZone},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The length of the appointment, denoted in ISO8601 format.
    ${Duration},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for END properties and create a hash table.
    ${End},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # The billed amount on the invoice.
    ${InvoiceAmount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for INVOICEDATE properties and create a hash table.
    ${InvoiceDate},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the invoice.
    ${InvoiceId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # bookingInvoiceStatus
    ${InvoiceStatus},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the invoice in Microsoft Bookings.
    ${InvoiceUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsLocationOnline},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinWebUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${OnlineMeetingUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
    ${OptOutOfCustomerEmail},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The amount of time to reserve after the appointment ends, for cleaning up, as an example.
    # The value is expressed in ISO8601 format.
    ${PostBuffer},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The amount of time to reserve before the appointment begins, for preparation, as an example.
    # The value is expressed in ISO8601 format.
    ${PreBuffer},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # The regular price for an appointment for the specified bookingService.
    ${Price},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Represents the type of pricing of a booking service.
    ${PriceType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingReminder[]]
    # The collection of customer reminders sent for this appointment.
    # The value of this property is available only when reading this bookingAppointment by its ID.
    # To construct, see NOTES section for REMINDERS properties and create a hash table.
    ${Reminders},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
    ${SelfServiceAppointmentId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the bookingService associated with this appointment.
    ${ServiceId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocation]
    # location
    # To construct, see NOTES section for SERVICELOCATION properties and create a hash table.
    ${ServiceLocation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The name of the bookingService associated with this appointment.This property is optional when creating a new appointment.
    # If not specified, it is computed from the service associated with the appointment by the serviceId property.
    ${ServiceName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Notes from a bookingStaffMember.
    # The value of this property is available only when reading this bookingAppointment by its ID.
    ${ServiceNotes},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SmsNotificationsEnabled},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The ID of each bookingStaffMember who is scheduled in this appointment.
    ${StaffMemberIds},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for START properties and create a hash table.
    ${Start},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessCalendarView_Create';
            CreateExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessCalendarView_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessCalendarView_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessCalendarView_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the customers of this business.
Read-only.
Nullable.
.Description
All the customers of this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCustomer
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCustomer
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ADDRESSES <IMicrosoftGraphPhysicalAddress[]>: .
  [City <String>]: The city.
  [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
  [PostOfficeBox <String>]: The post office box number.
  [PostalCode <String>]: The postal code.
  [State <String>]: The state.
  [Street <String>]: The street.
  [Type <String>]: physicalAddressType

BODYPARAMETER <IMicrosoftGraphBookingCustomer>: Represents a customer of the business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <String>]: The email address of the person.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [Addresses <IMicrosoftGraphPhysicalAddress[]>]: 
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Phones <IMicrosoftGraphPhone[]>]: 
    [Number <String>]: The phone number.
    [Type <String>]: phoneType

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

PHONES <IMicrosoftGraphPhone[]>: .
  [Number <String>]: The phone number.
  [Type <String>]: phoneType
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/new-mgbookingbusinesscustomer
#>
function New-MgBookingBusinessCustomer {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCustomer])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCustomer]
    # Represents a customer of the business.
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPhysicalAddress[]]
    # .
    # To construct, see NOTES section for ADDRESSES properties and create a hash table.
    ${Addresses},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A name for the derived entity, which interfaces with customers.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The email address of the person.
    ${EmailAddress},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPhone[]]
    # .
    # To construct, see NOTES section for PHONES properties and create a hash table.
    ${Phones},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessCustomer_Create';
            CreateExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessCustomer_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessCustomer_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessCustomer_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the services offered by this business.
Read-only.
Nullable.
.Description
All the services offered by this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingService
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingService
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphBookingService>: Represents a particular service offered by a booking business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [DefaultDuration <TimeSpan?>]: The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S.
  [DefaultLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [DefaultPrice <Double?>]: The default monetary price for the service.
  [DefaultPriceType <String>]: Represents the type of pricing of a booking service.
  [DefaultReminders <IMicrosoftGraphBookingReminder[]>]: The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [Description <String>]: A text description for the service.
  [IsHiddenFromCustomers <Boolean?>]: True means this service is not available to customers for booking.
  [IsLocationOnline <Boolean?>]: 
  [Notes <String>]: Additional information about this service.
  [PostBuffer <TimeSpan?>]: The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
  [PreBuffer <TimeSpan?>]: The time to buffer before an appointment for this service can start.
  [SchedulingPolicy <IMicrosoftGraphBookingSchedulingPolicy>]: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowStaffSelection <Boolean?>]: True if to allow customers to choose a specific person for the booking.
    [MaximumAdvance <TimeSpan?>]: Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
    [MinimumLeadTime <TimeSpan?>]: The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
    [SendConfirmationsToOwner <Boolean?>]: True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
    [TimeSlotInterval <TimeSpan?>]: Duration of each time slot, denoted in ISO 8601 format.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: Represents those staff members who provide this service.
  [WebUrl <String>]: The URL of the booking service.

DEFAULTLOCATION <IMicrosoftGraphLocation>: location
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
    [Altitude <Double?>]: The altitude of the location.
    [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
    [Latitude <Double?>]: The latitude of the location.
    [Longitude <Double?>]: The longitude of the location.
  [DisplayName <String>]: The name associated with the location.
  [LocationEmailAddress <String>]: Optional email address of the location.
  [LocationType <String>]: locationType
  [LocationUri <String>]: Optional URI representing the location.
  [UniqueId <String>]: For internal use only.
  [UniqueIdType <String>]: locationUniqueIdType

DEFAULTREMINDERS <IMicrosoftGraphBookingReminder[]>: The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
  [Message <String>]: The message in the reminder.
  [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
  [Recipients <String>]: bookingReminderRecipients

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

SCHEDULINGPOLICY <IMicrosoftGraphBookingSchedulingPolicy>: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AllowStaffSelection <Boolean?>]: True if to allow customers to choose a specific person for the booking.
  [MaximumAdvance <TimeSpan?>]: Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
  [MinimumLeadTime <TimeSpan?>]: The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
  [SendConfirmationsToOwner <Boolean?>]: True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
  [TimeSlotInterval <TimeSpan?>]: Duration of each time slot, denoted in ISO 8601 format.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/new-mgbookingbusinessservice
#>
function New-MgBookingBusinessService {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingService])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingService]
    # Represents a particular service offered by a booking business.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${AdditionalInformation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The default length of the service, represented in numbers of days, hours, minutes, and seconds.
    # For example, P11D23H59M59.999999999999S.
    ${DefaultDuration},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocation]
    # location
    # To construct, see NOTES section for DEFAULTLOCATION properties and create a hash table.
    ${DefaultLocation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # The default monetary price for the service.
    ${DefaultPrice},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Represents the type of pricing of a booking service.
    ${DefaultPriceType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingReminder[]]
    # The default set of reminders for an appointment of this service.
    # The value of this property is available only when reading this bookingService by its ID.
    # To construct, see NOTES section for DEFAULTREMINDERS properties and create a hash table.
    ${DefaultReminders},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A text description for the service.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A name for the derived entity, which interfaces with customers.
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
    # True means this service is not available to customers for booking.
    ${IsHiddenFromCustomers},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsLocationOnline},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Additional information about this service.
    ${Notes},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
    ${PostBuffer},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The time to buffer before an appointment for this service can start.
    ${PreBuffer},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingSchedulingPolicy]
    # This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    # To construct, see NOTES section for SCHEDULINGPOLICY properties and create a hash table.
    ${SchedulingPolicy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SmsNotificationsEnabled},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Represents those staff members who provide this service.
    ${StaffMemberIds},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the booking service.
    ${WebUrl},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessService_Create';
            CreateExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessService_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessService_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessService_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the staff members that provide services in this business.
Read-only.
Nullable.
.Description
All the staff members that provide services in this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingStaffMember
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingStaffMember
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphBookingStaffMember>: Represents a staff member who provides services in a business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <String>]: The email address of the person.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [AvailabilityIsAffectedByPersonalCalendar <Boolean?>]: True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
  [ColorIndex <Int32?>]: Identifies a color to represent the staff member. The color corresponds to the color palette in the Staff details page in the Bookings app.
  [Role <String>]: bookingStaffRole
  [TimeZone <String>]: 
  [UseBusinessHours <Boolean?>]: True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
  [WorkingHours <IMicrosoftGraphBookingWorkHours[]>]: The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
    [Day <String>]: dayOfWeek
    [TimeSlots <IMicrosoftGraphBookingWorkTimeSlot[]>]: A list of start/end times during a day.
      [End <String>]: The time of the day when work stops. For example, 17:00:00.0000000.
      [Start <String>]: The time of the day when work starts. For example, 08:00:00.0000000.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

WORKINGHOURS <IMicrosoftGraphBookingWorkHours[]>: The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
  [Day <String>]: dayOfWeek
  [TimeSlots <IMicrosoftGraphBookingWorkTimeSlot[]>]: A list of start/end times during a day.
    [End <String>]: The time of the day when work stops. For example, 17:00:00.0000000.
    [Start <String>]: The time of the day when work starts. For example, 08:00:00.0000000.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/new-mgbookingbusinessstaffmember
#>
function New-MgBookingBusinessStaffMember {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingStaffMember])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingStaffMember]
    # Represents a staff member who provides services in a business.
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
    # True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
    ${AvailabilityIsAffectedByPersonalCalendar},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Identifies a color to represent the staff member.
    # The color corresponds to the color palette in the Staff details page in the Bookings app.
    ${ColorIndex},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A name for the derived entity, which interfaces with customers.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The email address of the person.
    ${EmailAddress},

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
    # bookingStaffRole
    ${Role},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${TimeZone},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # True means the staff member's availability is as specified in the businessHours property of the business.
    # False means the availability is determined by the staff member's workingHours property setting.
    ${UseBusinessHours},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingWorkHours[]]
    # The range of hours each day of the week that the staff member is available for booking.
    # By default, they are initialized to be the same as the businessHours property of the business.
    # To construct, see NOTES section for WORKINGHOURS properties and create a hash table.
    ${WorkingHours},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessStaffMember_Create';
            CreateExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessStaffMember_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessStaffMember_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusinessStaffMember_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Add new entity to bookingBusinesses
.Description
Add new entity to bookingBusinesses

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingBusiness
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingBusiness
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ADDRESS <IMicrosoftGraphPhysicalAddress>: physicalAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [City <String>]: The city.
  [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
  [PostOfficeBox <String>]: The post office box number.
  [PostalCode <String>]: The postal code.
  [State <String>]: The state.
  [Street <String>]: The street.
  [Type <String>]: physicalAddressType

APPOINTMENTS <IMicrosoftGraphBookingAppointment[]>: All the appointments of this business. Read-only. Nullable.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [CustomerEmailAddress <String>]: The SMTP address of the bookingCustomer who is booking the appointment.
  [CustomerId <String>]: The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
  [CustomerLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [CustomerName <String>]: The customer's name.
  [CustomerNotes <String>]: Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
  [CustomerPhone <String>]: The customer's phone number.
  [CustomerTimeZone <String>]: 
  [Duration <TimeSpan?>]: The length of the appointment, denoted in ISO8601 format.
  [End <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [InvoiceAmount <Double?>]: The billed amount on the invoice.
  [InvoiceDate <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [InvoiceId <String>]: The ID of the invoice.
  [InvoiceStatus <String>]: bookingInvoiceStatus
  [InvoiceUrl <String>]: The URL of the invoice in Microsoft Bookings.
  [IsLocationOnline <Boolean?>]: 
  [JoinWebUrl <String>]: 
  [OnlineMeetingUrl <String>]: 
  [OptOutOfCustomerEmail <Boolean?>]: True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
  [PostBuffer <TimeSpan?>]: The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
  [PreBuffer <TimeSpan?>]: The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
  [Price <Double?>]: The regular price for an appointment for the specified bookingService.
  [PriceType <String>]: Represents the type of pricing of a booking service.
  [Reminders <IMicrosoftGraphBookingReminder[]>]: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [SelfServiceAppointmentId <String>]: An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
  [ServiceId <String>]: The ID of the bookingService associated with this appointment.
  [ServiceLocation <IMicrosoftGraphLocation>]: location
  [ServiceName <String>]: The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
  [ServiceNotes <String>]: Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: The ID of each bookingStaffMember who is scheduled in this appointment.
  [Start <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

BODYPARAMETER <IMicrosoftGraphBookingBusiness>: Represents a Microsot Bookings Business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Appointments <IMicrosoftGraphBookingAppointment[]>]: All the appointments of this business. Read-only. Nullable.
    [Id <String>]: Read-only.
    [AdditionalInformation <String>]: 
    [CustomerEmailAddress <String>]: The SMTP address of the bookingCustomer who is booking the appointment.
    [CustomerId <String>]: The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
    [CustomerLocation <IMicrosoftGraphLocation>]: location
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
        [Altitude <Double?>]: The altitude of the location.
        [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
        [Latitude <Double?>]: The latitude of the location.
        [Longitude <Double?>]: The longitude of the location.
      [DisplayName <String>]: The name associated with the location.
      [LocationEmailAddress <String>]: Optional email address of the location.
      [LocationType <String>]: locationType
      [LocationUri <String>]: Optional URI representing the location.
      [UniqueId <String>]: For internal use only.
      [UniqueIdType <String>]: locationUniqueIdType
    [CustomerName <String>]: The customer's name.
    [CustomerNotes <String>]: Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
    [CustomerPhone <String>]: The customer's phone number.
    [CustomerTimeZone <String>]: 
    [Duration <TimeSpan?>]: The length of the appointment, denoted in ISO8601 format.
    [End <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
      [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
    [InvoiceAmount <Double?>]: The billed amount on the invoice.
    [InvoiceDate <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [InvoiceId <String>]: The ID of the invoice.
    [InvoiceStatus <String>]: bookingInvoiceStatus
    [InvoiceUrl <String>]: The URL of the invoice in Microsoft Bookings.
    [IsLocationOnline <Boolean?>]: 
    [JoinWebUrl <String>]: 
    [OnlineMeetingUrl <String>]: 
    [OptOutOfCustomerEmail <Boolean?>]: True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
    [PostBuffer <TimeSpan?>]: The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
    [PreBuffer <TimeSpan?>]: The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
    [Price <Double?>]: The regular price for an appointment for the specified bookingService.
    [PriceType <String>]: Represents the type of pricing of a booking service.
    [Reminders <IMicrosoftGraphBookingReminder[]>]: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
      [Message <String>]: The message in the reminder.
      [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
      [Recipients <String>]: bookingReminderRecipients
    [SelfServiceAppointmentId <String>]: An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
    [ServiceId <String>]: The ID of the bookingService associated with this appointment.
    [ServiceLocation <IMicrosoftGraphLocation>]: location
    [ServiceName <String>]: The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
    [ServiceNotes <String>]: Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
    [SmsNotificationsEnabled <Boolean?>]: 
    [StaffMemberIds <String[]>]: The ID of each bookingStaffMember who is scheduled in this appointment.
    [Start <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [BusinessHours <IMicrosoftGraphBookingWorkHours[]>]: The hours of operation for the business.
    [Day <String>]: dayOfWeek
    [TimeSlots <IMicrosoftGraphBookingWorkTimeSlot[]>]: A list of start/end times during a day.
      [End <String>]: The time of the day when work stops. For example, 17:00:00.0000000.
      [Start <String>]: The time of the day when work starts. For example, 08:00:00.0000000.
  [BusinessType <String>]: The type of business.
  [CalendarView <IMicrosoftGraphBookingAppointment[]>]: The set of appointments of this business in a specified date range. Read-only. Nullable.
  [Customers <IMicrosoftGraphBookingCustomer[]>]: All the customers of this business. Read-only. Nullable.
    [EmailAddress <String>]: The email address of the person.
    [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
    [Id <String>]: Read-only.
    [Addresses <IMicrosoftGraphPhysicalAddress[]>]: 
    [Phones <IMicrosoftGraphPhone[]>]: 
      [Number <String>]: The phone number.
      [Type <String>]: phoneType
  [DefaultCurrencyIso <String>]: The code for the currency that the business operates in on Microsoft Bookings.
  [Email <String>]: The email address for the business.
  [IsPublished <Boolean?>]: The scheduling page has been made available to external customers. Use the publish and unpublish actions to set this property. Read-only.
  [Phone <String>]: The telephone number for the business. The phone property, together with address and webSiteUrl, appear in the footer of a business scheduling page.
  [PublicUrl <String>]: The URL for the scheduling page, which is set after you publish or unpublish the page. Read-only.
  [SchedulingPolicy <IMicrosoftGraphBookingSchedulingPolicy>]: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowStaffSelection <Boolean?>]: True if to allow customers to choose a specific person for the booking.
    [MaximumAdvance <TimeSpan?>]: Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
    [MinimumLeadTime <TimeSpan?>]: The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
    [SendConfirmationsToOwner <Boolean?>]: True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
    [TimeSlotInterval <TimeSpan?>]: Duration of each time slot, denoted in ISO 8601 format.
  [Services <IMicrosoftGraphBookingService[]>]: All the services offered by this business. Read-only. Nullable.
    [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
    [Id <String>]: Read-only.
    [AdditionalInformation <String>]: 
    [DefaultDuration <TimeSpan?>]: The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S.
    [DefaultLocation <IMicrosoftGraphLocation>]: location
    [DefaultPrice <Double?>]: The default monetary price for the service.
    [DefaultPriceType <String>]: Represents the type of pricing of a booking service.
    [DefaultReminders <IMicrosoftGraphBookingReminder[]>]: The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
    [Description <String>]: A text description for the service.
    [IsHiddenFromCustomers <Boolean?>]: True means this service is not available to customers for booking.
    [IsLocationOnline <Boolean?>]: 
    [Notes <String>]: Additional information about this service.
    [PostBuffer <TimeSpan?>]: The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
    [PreBuffer <TimeSpan?>]: The time to buffer before an appointment for this service can start.
    [SchedulingPolicy <IMicrosoftGraphBookingSchedulingPolicy>]: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    [SmsNotificationsEnabled <Boolean?>]: 
    [StaffMemberIds <String[]>]: Represents those staff members who provide this service.
    [WebUrl <String>]: The URL of the booking service.
  [StaffMembers <IMicrosoftGraphBookingStaffMember[]>]: All the staff members that provide services in this business. Read-only. Nullable.
    [EmailAddress <String>]: The email address of the person.
    [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
    [Id <String>]: Read-only.
    [AvailabilityIsAffectedByPersonalCalendar <Boolean?>]: True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
    [ColorIndex <Int32?>]: Identifies a color to represent the staff member. The color corresponds to the color palette in the Staff details page in the Bookings app.
    [Role <String>]: bookingStaffRole
    [TimeZone <String>]: 
    [UseBusinessHours <Boolean?>]: True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
    [WorkingHours <IMicrosoftGraphBookingWorkHours[]>]: The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
  [WebSiteUrl <String>]: The URL of the business web site. The webSiteUrl property, together with address, phone, appear in the footer of a business scheduling page.

BUSINESSHOURS <IMicrosoftGraphBookingWorkHours[]>: The hours of operation for the business.
  [Day <String>]: dayOfWeek
  [TimeSlots <IMicrosoftGraphBookingWorkTimeSlot[]>]: A list of start/end times during a day.
    [End <String>]: The time of the day when work stops. For example, 17:00:00.0000000.
    [Start <String>]: The time of the day when work starts. For example, 08:00:00.0000000.

CALENDARVIEW <IMicrosoftGraphBookingAppointment[]>: The set of appointments of this business in a specified date range. Read-only. Nullable.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [CustomerEmailAddress <String>]: The SMTP address of the bookingCustomer who is booking the appointment.
  [CustomerId <String>]: The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
  [CustomerLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [CustomerName <String>]: The customer's name.
  [CustomerNotes <String>]: Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
  [CustomerPhone <String>]: The customer's phone number.
  [CustomerTimeZone <String>]: 
  [Duration <TimeSpan?>]: The length of the appointment, denoted in ISO8601 format.
  [End <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [InvoiceAmount <Double?>]: The billed amount on the invoice.
  [InvoiceDate <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [InvoiceId <String>]: The ID of the invoice.
  [InvoiceStatus <String>]: bookingInvoiceStatus
  [InvoiceUrl <String>]: The URL of the invoice in Microsoft Bookings.
  [IsLocationOnline <Boolean?>]: 
  [JoinWebUrl <String>]: 
  [OnlineMeetingUrl <String>]: 
  [OptOutOfCustomerEmail <Boolean?>]: True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
  [PostBuffer <TimeSpan?>]: The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
  [PreBuffer <TimeSpan?>]: The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
  [Price <Double?>]: The regular price for an appointment for the specified bookingService.
  [PriceType <String>]: Represents the type of pricing of a booking service.
  [Reminders <IMicrosoftGraphBookingReminder[]>]: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [SelfServiceAppointmentId <String>]: An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
  [ServiceId <String>]: The ID of the bookingService associated with this appointment.
  [ServiceLocation <IMicrosoftGraphLocation>]: location
  [ServiceName <String>]: The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
  [ServiceNotes <String>]: Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: The ID of each bookingStaffMember who is scheduled in this appointment.
  [Start <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

CUSTOMERS <IMicrosoftGraphBookingCustomer[]>: All the customers of this business. Read-only. Nullable.
  [EmailAddress <String>]: The email address of the person.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [Addresses <IMicrosoftGraphPhysicalAddress[]>]: 
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Phones <IMicrosoftGraphPhone[]>]: 
    [Number <String>]: The phone number.
    [Type <String>]: phoneType

SCHEDULINGPOLICY <IMicrosoftGraphBookingSchedulingPolicy>: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AllowStaffSelection <Boolean?>]: True if to allow customers to choose a specific person for the booking.
  [MaximumAdvance <TimeSpan?>]: Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
  [MinimumLeadTime <TimeSpan?>]: The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
  [SendConfirmationsToOwner <Boolean?>]: True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
  [TimeSlotInterval <TimeSpan?>]: Duration of each time slot, denoted in ISO 8601 format.

SERVICES <IMicrosoftGraphBookingService[]>: All the services offered by this business. Read-only. Nullable.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [DefaultDuration <TimeSpan?>]: The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S.
  [DefaultLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [DefaultPrice <Double?>]: The default monetary price for the service.
  [DefaultPriceType <String>]: Represents the type of pricing of a booking service.
  [DefaultReminders <IMicrosoftGraphBookingReminder[]>]: The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [Description <String>]: A text description for the service.
  [IsHiddenFromCustomers <Boolean?>]: True means this service is not available to customers for booking.
  [IsLocationOnline <Boolean?>]: 
  [Notes <String>]: Additional information about this service.
  [PostBuffer <TimeSpan?>]: The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
  [PreBuffer <TimeSpan?>]: The time to buffer before an appointment for this service can start.
  [SchedulingPolicy <IMicrosoftGraphBookingSchedulingPolicy>]: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowStaffSelection <Boolean?>]: True if to allow customers to choose a specific person for the booking.
    [MaximumAdvance <TimeSpan?>]: Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
    [MinimumLeadTime <TimeSpan?>]: The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
    [SendConfirmationsToOwner <Boolean?>]: True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
    [TimeSlotInterval <TimeSpan?>]: Duration of each time slot, denoted in ISO 8601 format.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: Represents those staff members who provide this service.
  [WebUrl <String>]: The URL of the booking service.

STAFFMEMBERS <IMicrosoftGraphBookingStaffMember[]>: All the staff members that provide services in this business. Read-only. Nullable.
  [EmailAddress <String>]: The email address of the person.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [AvailabilityIsAffectedByPersonalCalendar <Boolean?>]: True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
  [ColorIndex <Int32?>]: Identifies a color to represent the staff member. The color corresponds to the color palette in the Staff details page in the Bookings app.
  [Role <String>]: bookingStaffRole
  [TimeZone <String>]: 
  [UseBusinessHours <Boolean?>]: True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
  [WorkingHours <IMicrosoftGraphBookingWorkHours[]>]: The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
    [Day <String>]: dayOfWeek
    [TimeSlots <IMicrosoftGraphBookingWorkTimeSlot[]>]: A list of start/end times during a day.
      [End <String>]: The time of the day when work stops. For example, 17:00:00.0000000.
      [Start <String>]: The time of the day when work starts. For example, 08:00:00.0000000.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/new-mgbookingbusiness
#>
function New-MgBookingBusiness {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingBusiness])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingBusiness]
    # Represents a Microsot Bookings Business.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPhysicalAddress]
    # physicalAddress
    # To construct, see NOTES section for ADDRESS properties and create a hash table.
    ${Address},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment[]]
    # All the appointments of this business.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for APPOINTMENTS properties and create a hash table.
    ${Appointments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingWorkHours[]]
    # The hours of operation for the business.
    # To construct, see NOTES section for BUSINESSHOURS properties and create a hash table.
    ${BusinessHours},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The type of business.
    ${BusinessType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment[]]
    # The set of appointments of this business in a specified date range.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for CALENDARVIEW properties and create a hash table.
    ${CalendarView},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCustomer[]]
    # All the customers of this business.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for CUSTOMERS properties and create a hash table.
    ${Customers},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The code for the currency that the business operates in on Microsoft Bookings.
    ${DefaultCurrencyIso},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A name for the derived entity, which interfaces with customers.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The email address for the business.
    ${Email},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # The scheduling page has been made available to external customers.
    # Use the publish and unpublish actions to set this property.
    # Read-only.
    ${IsPublished},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The telephone number for the business.
    # The phone property, together with address and webSiteUrl, appear in the footer of a business scheduling page.
    ${Phone},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL for the scheduling page, which is set after you publish or unpublish the page.
    # Read-only.
    ${PublicUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingSchedulingPolicy]
    # This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    # To construct, see NOTES section for SCHEDULINGPOLICY properties and create a hash table.
    ${SchedulingPolicy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingService[]]
    # All the services offered by this business.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SERVICES properties and create a hash table.
    ${Services},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingStaffMember[]]
    # All the staff members that provide services in this business.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for STAFFMEMBERS properties and create a hash table.
    ${StaffMembers},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the business web site.
    # The webSiteUrl property, together with address, phone, appear in the footer of a business scheduling page.
    ${WebSiteUrl},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Bookings.private\New-MgBookingBusiness_Create';
            CreateExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingBusiness_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Add new entity to bookingCurrencies
.Description
Add new entity to bookingCurrencies

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCurrency
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCurrency
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphBookingCurrency>: bookingCurrency
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Symbol <String>]: The currency symbol. For example, the currency symbol for the US dollar and for the Australian dollar is $.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/new-mgbookingcurrency
#>
function New-MgBookingCurrency {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCurrency])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCurrency]
    # bookingCurrency
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
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The currency symbol.
    # For example, the currency symbol for the US dollar and for the Australian dollar is $.
    ${Symbol},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Bookings.private\New-MgBookingCurrency_Create';
            CreateExpanded = 'Microsoft.Graph.Bookings.private\New-MgBookingCurrency_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Makes the scheduling page of this business available to the general public.
.Description
Makes the scheduling page of this business available to the general public.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/publish-mgbookingbusiness
#>
function Publish-MgBookingBusiness {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Publish', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Publish', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='PublishViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Publish = 'Microsoft.Graph.Bookings.private\Publish-MgBookingBusiness_Publish';
            PublishViaIdentity = 'Microsoft.Graph.Bookings.private\Publish-MgBookingBusiness_PublishViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the appointments of this business.
Read-only.
Nullable.
.Description
All the appointments of this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/remove-mgbookingbusinessappointment
#>
function Remove-MgBookingBusinessAppointment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingAppointment
    ${BookingAppointmentId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Delete = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusinessAppointment_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusinessAppointment_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The set of appointments of this business in a specified date range.
Read-only.
Nullable.
.Description
The set of appointments of this business in a specified date range.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/remove-mgbookingbusinesscalendarview
#>
function Remove-MgBookingBusinessCalendarView {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingAppointment
    ${BookingAppointmentId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Delete = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusinessCalendarView_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusinessCalendarView_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the customers of this business.
Read-only.
Nullable.
.Description
All the customers of this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/remove-mgbookingbusinesscustomer
#>
function Remove-MgBookingBusinessCustomer {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingCustomer
    ${BookingCustomerId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Delete = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusinessCustomer_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusinessCustomer_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the services offered by this business.
Read-only.
Nullable.
.Description
All the services offered by this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/remove-mgbookingbusinessservice
#>
function Remove-MgBookingBusinessService {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingService
    ${BookingServiceId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Delete = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusinessService_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusinessService_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the staff members that provide services in this business.
Read-only.
Nullable.
.Description
All the staff members that provide services in this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/remove-mgbookingbusinessstaffmember
#>
function Remove-MgBookingBusinessStaffMember {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingStaffMember
    ${BookingStaffMemberId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Delete = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusinessStaffMember_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusinessStaffMember_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Represents a Microsot Bookings Business.
.Description
Represents a Microsot Bookings Business.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/remove-mgbookingbusiness
#>
function Remove-MgBookingBusiness {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Delete = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusiness_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Bookings.private\Remove-MgBookingBusiness_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete entity from bookingCurrencies
.Description
Delete entity from bookingCurrencies

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/remove-mgbookingcurrency
#>
function Remove-MgBookingCurrency {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingCurrency
    ${BookingCurrencyId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Delete = 'Microsoft.Graph.Bookings.private\Remove-MgBookingCurrency_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Bookings.private\Remove-MgBookingCurrency_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Cancels the giving booking appointment, sending a message to the involved parties.
.Description
Cancels the giving booking appointment, sending a message to the involved parties.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1K88Cl0BookingbusinessesBookingbusinessIdAppointmentsBookingappointmentIdMicrosoftGraphCancelPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1K88Cl0BookingbusinessesBookingbusinessIdAppointmentsBookingappointmentIdMicrosoftGraphCancelPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CancellationMessage <String>]: 

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/stop-mgbookingbusinessappointment
#>
function Stop-MgBookingBusinessAppointment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='CancelExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Cancel', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingAppointment
    ${BookingAppointmentId},

    [Parameter(ParameterSetName='Cancel', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='CancelViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Cancel', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1K88Cl0BookingbusinessesBookingbusinessIdAppointmentsBookingappointmentIdMicrosoftGraphCancelPostRequestbodyContentApplicationJsonSchema]
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
    ${CancellationMessage},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Cancel = 'Microsoft.Graph.Bookings.private\Stop-MgBookingBusinessAppointment_Cancel';
            CancelExpanded = 'Microsoft.Graph.Bookings.private\Stop-MgBookingBusinessAppointment_CancelExpanded';
            CancelViaIdentity = 'Microsoft.Graph.Bookings.private\Stop-MgBookingBusinessAppointment_CancelViaIdentity';
            CancelViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\Stop-MgBookingBusinessAppointment_CancelViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Cancels the giving booking appointment, sending a message to the involved parties.
.Description
Cancels the giving booking appointment, sending a message to the involved parties.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Bomg32BookingbusinessesBookingbusinessIdCalendarviewBookingappointmentIdMicrosoftGraphCancelPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IPaths1Bomg32BookingbusinessesBookingbusinessIdCalendarviewBookingappointmentIdMicrosoftGraphCancelPostRequestbodyContentApplicationJsonSchema>: .
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CancellationMessage <String>]: 

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/stop-mgbookingbusinesscalendarview
#>
function Stop-MgBookingBusinessCalendarView {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='CancelExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Cancel', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingAppointment
    ${BookingAppointmentId},

    [Parameter(ParameterSetName='Cancel', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='CancelViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Cancel', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Bomg32BookingbusinessesBookingbusinessIdCalendarviewBookingappointmentIdMicrosoftGraphCancelPostRequestbodyContentApplicationJsonSchema]
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
    ${CancellationMessage},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Cancel = 'Microsoft.Graph.Bookings.private\Stop-MgBookingBusinessCalendarView_Cancel';
            CancelExpanded = 'Microsoft.Graph.Bookings.private\Stop-MgBookingBusinessCalendarView_CancelExpanded';
            CancelViaIdentity = 'Microsoft.Graph.Bookings.private\Stop-MgBookingBusinessCalendarView_CancelViaIdentity';
            CancelViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\Stop-MgBookingBusinessCalendarView_CancelViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Prevents the general public from seeing the scheduling page of this business.
.Description
Prevents the general public from seeing the scheduling page of this business.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/unpublish-mgbookingbusiness
#>
function Unpublish-MgBookingBusiness {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Unpublish', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Unpublish', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='UnpublishViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
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
            Unpublish = 'Microsoft.Graph.Bookings.private\Unpublish-MgBookingBusiness_Unpublish';
            UnpublishViaIdentity = 'Microsoft.Graph.Bookings.private\Unpublish-MgBookingBusiness_UnpublishViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the appointments of this business.
Read-only.
Nullable.
.Description
All the appointments of this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphBookingAppointment>: Represents a booked appointment of a service by a customer in a business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [CustomerEmailAddress <String>]: The SMTP address of the bookingCustomer who is booking the appointment.
  [CustomerId <String>]: The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
  [CustomerLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [CustomerName <String>]: The customer's name.
  [CustomerNotes <String>]: Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
  [CustomerPhone <String>]: The customer's phone number.
  [CustomerTimeZone <String>]: 
  [Duration <TimeSpan?>]: The length of the appointment, denoted in ISO8601 format.
  [End <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [InvoiceAmount <Double?>]: The billed amount on the invoice.
  [InvoiceDate <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [InvoiceId <String>]: The ID of the invoice.
  [InvoiceStatus <String>]: bookingInvoiceStatus
  [InvoiceUrl <String>]: The URL of the invoice in Microsoft Bookings.
  [IsLocationOnline <Boolean?>]: 
  [JoinWebUrl <String>]: 
  [OnlineMeetingUrl <String>]: 
  [OptOutOfCustomerEmail <Boolean?>]: True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
  [PostBuffer <TimeSpan?>]: The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
  [PreBuffer <TimeSpan?>]: The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
  [Price <Double?>]: The regular price for an appointment for the specified bookingService.
  [PriceType <String>]: Represents the type of pricing of a booking service.
  [Reminders <IMicrosoftGraphBookingReminder[]>]: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [SelfServiceAppointmentId <String>]: An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
  [ServiceId <String>]: The ID of the bookingService associated with this appointment.
  [ServiceLocation <IMicrosoftGraphLocation>]: location
  [ServiceName <String>]: The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
  [ServiceNotes <String>]: Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: The ID of each bookingStaffMember who is scheduled in this appointment.
  [Start <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

CUSTOMERLOCATION <IMicrosoftGraphLocation>: location
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
    [Altitude <Double?>]: The altitude of the location.
    [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
    [Latitude <Double?>]: The latitude of the location.
    [Longitude <Double?>]: The longitude of the location.
  [DisplayName <String>]: The name associated with the location.
  [LocationEmailAddress <String>]: Optional email address of the location.
  [LocationType <String>]: locationType
  [LocationUri <String>]: Optional URI representing the location.
  [UniqueId <String>]: For internal use only.
  [UniqueIdType <String>]: locationUniqueIdType

END <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

INVOICEDATE <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.

REMINDERS <IMicrosoftGraphBookingReminder[]>: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
  [Message <String>]: The message in the reminder.
  [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
  [Recipients <String>]: bookingReminderRecipients

SERVICELOCATION <IMicrosoftGraphLocation>: location
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
    [Altitude <Double?>]: The altitude of the location.
    [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
    [Latitude <Double?>]: The latitude of the location.
    [Longitude <Double?>]: The longitude of the location.
  [DisplayName <String>]: The name associated with the location.
  [LocationEmailAddress <String>]: Optional email address of the location.
  [LocationType <String>]: locationType
  [LocationUri <String>]: Optional URI representing the location.
  [UniqueId <String>]: For internal use only.
  [UniqueIdType <String>]: locationUniqueIdType

START <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/update-mgbookingbusinessappointment
#>
function Update-MgBookingBusinessAppointment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingAppointment
    ${BookingAppointmentId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment]
    # Represents a booked appointment of a service by a customer in a business.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
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
    # The SMTP address of the bookingCustomer who is booking the appointment.
    ${CustomerEmailAddress},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the bookingCustomer for this appointment.
    # If no ID is specified when an appointment is created, then a new bookingCustomer object is created.
    # Once set, you should consider the customerId immutable.
    ${CustomerId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocation]
    # location
    # To construct, see NOTES section for CUSTOMERLOCATION properties and create a hash table.
    ${CustomerLocation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The customer's name.
    ${CustomerName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Notes from the customer associated with this appointment.
    # You can get the value only when reading this bookingAppointment by its ID.
    # You can set this property only when initially creating an appointment with a new customer.
    # After that point, the value is computed from the customer represented by customerId.
    ${CustomerNotes},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The customer's phone number.
    ${CustomerPhone},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CustomerTimeZone},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The length of the appointment, denoted in ISO8601 format.
    ${Duration},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for END properties and create a hash table.
    ${End},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # The billed amount on the invoice.
    ${InvoiceAmount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for INVOICEDATE properties and create a hash table.
    ${InvoiceDate},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the invoice.
    ${InvoiceId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # bookingInvoiceStatus
    ${InvoiceStatus},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the invoice in Microsoft Bookings.
    ${InvoiceUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsLocationOnline},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${OnlineMeetingUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
    ${OptOutOfCustomerEmail},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The amount of time to reserve after the appointment ends, for cleaning up, as an example.
    # The value is expressed in ISO8601 format.
    ${PostBuffer},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The amount of time to reserve before the appointment begins, for preparation, as an example.
    # The value is expressed in ISO8601 format.
    ${PreBuffer},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # The regular price for an appointment for the specified bookingService.
    ${Price},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Represents the type of pricing of a booking service.
    ${PriceType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingReminder[]]
    # The collection of customer reminders sent for this appointment.
    # The value of this property is available only when reading this bookingAppointment by its ID.
    # To construct, see NOTES section for REMINDERS properties and create a hash table.
    ${Reminders},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
    ${SelfServiceAppointmentId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the bookingService associated with this appointment.
    ${ServiceId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocation]
    # location
    # To construct, see NOTES section for SERVICELOCATION properties and create a hash table.
    ${ServiceLocation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The name of the bookingService associated with this appointment.This property is optional when creating a new appointment.
    # If not specified, it is computed from the service associated with the appointment by the serviceId property.
    ${ServiceName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Notes from a bookingStaffMember.
    # The value of this property is available only when reading this bookingAppointment by its ID.
    ${ServiceNotes},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SmsNotificationsEnabled},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The ID of each bookingStaffMember who is scheduled in this appointment.
    ${StaffMemberIds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for START properties and create a hash table.
    ${Start},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessAppointment_Update';
            UpdateExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessAppointment_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessAppointment_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessAppointment_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The set of appointments of this business in a specified date range.
Read-only.
Nullable.
.Description
The set of appointments of this business in a specified date range.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphBookingAppointment>: Represents a booked appointment of a service by a customer in a business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [CustomerEmailAddress <String>]: The SMTP address of the bookingCustomer who is booking the appointment.
  [CustomerId <String>]: The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
  [CustomerLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [CustomerName <String>]: The customer's name.
  [CustomerNotes <String>]: Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
  [CustomerPhone <String>]: The customer's phone number.
  [CustomerTimeZone <String>]: 
  [Duration <TimeSpan?>]: The length of the appointment, denoted in ISO8601 format.
  [End <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [InvoiceAmount <Double?>]: The billed amount on the invoice.
  [InvoiceDate <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [InvoiceId <String>]: The ID of the invoice.
  [InvoiceStatus <String>]: bookingInvoiceStatus
  [InvoiceUrl <String>]: The URL of the invoice in Microsoft Bookings.
  [IsLocationOnline <Boolean?>]: 
  [JoinWebUrl <String>]: 
  [OnlineMeetingUrl <String>]: 
  [OptOutOfCustomerEmail <Boolean?>]: True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
  [PostBuffer <TimeSpan?>]: The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
  [PreBuffer <TimeSpan?>]: The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
  [Price <Double?>]: The regular price for an appointment for the specified bookingService.
  [PriceType <String>]: Represents the type of pricing of a booking service.
  [Reminders <IMicrosoftGraphBookingReminder[]>]: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [SelfServiceAppointmentId <String>]: An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
  [ServiceId <String>]: The ID of the bookingService associated with this appointment.
  [ServiceLocation <IMicrosoftGraphLocation>]: location
  [ServiceName <String>]: The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
  [ServiceNotes <String>]: Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: The ID of each bookingStaffMember who is scheduled in this appointment.
  [Start <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

CUSTOMERLOCATION <IMicrosoftGraphLocation>: location
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
    [Altitude <Double?>]: The altitude of the location.
    [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
    [Latitude <Double?>]: The latitude of the location.
    [Longitude <Double?>]: The longitude of the location.
  [DisplayName <String>]: The name associated with the location.
  [LocationEmailAddress <String>]: Optional email address of the location.
  [LocationType <String>]: locationType
  [LocationUri <String>]: Optional URI representing the location.
  [UniqueId <String>]: For internal use only.
  [UniqueIdType <String>]: locationUniqueIdType

END <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

INVOICEDATE <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.

REMINDERS <IMicrosoftGraphBookingReminder[]>: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
  [Message <String>]: The message in the reminder.
  [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
  [Recipients <String>]: bookingReminderRecipients

SERVICELOCATION <IMicrosoftGraphLocation>: location
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
    [Altitude <Double?>]: The altitude of the location.
    [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
    [Latitude <Double?>]: The latitude of the location.
    [Longitude <Double?>]: The longitude of the location.
  [DisplayName <String>]: The name associated with the location.
  [LocationEmailAddress <String>]: Optional email address of the location.
  [LocationType <String>]: locationType
  [LocationUri <String>]: Optional URI representing the location.
  [UniqueId <String>]: For internal use only.
  [UniqueIdType <String>]: locationUniqueIdType

START <IMicrosoftGraphDateTimeZone>: dateTimeTimeZone
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
  [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/update-mgbookingbusinesscalendarview
#>
function Update-MgBookingBusinessCalendarView {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingAppointment
    ${BookingAppointmentId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment]
    # Represents a booked appointment of a service by a customer in a business.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
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
    # The SMTP address of the bookingCustomer who is booking the appointment.
    ${CustomerEmailAddress},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the bookingCustomer for this appointment.
    # If no ID is specified when an appointment is created, then a new bookingCustomer object is created.
    # Once set, you should consider the customerId immutable.
    ${CustomerId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocation]
    # location
    # To construct, see NOTES section for CUSTOMERLOCATION properties and create a hash table.
    ${CustomerLocation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The customer's name.
    ${CustomerName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Notes from the customer associated with this appointment.
    # You can get the value only when reading this bookingAppointment by its ID.
    # You can set this property only when initially creating an appointment with a new customer.
    # After that point, the value is computed from the customer represented by customerId.
    ${CustomerNotes},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The customer's phone number.
    ${CustomerPhone},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CustomerTimeZone},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The length of the appointment, denoted in ISO8601 format.
    ${Duration},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for END properties and create a hash table.
    ${End},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # The billed amount on the invoice.
    ${InvoiceAmount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for INVOICEDATE properties and create a hash table.
    ${InvoiceDate},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the invoice.
    ${InvoiceId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # bookingInvoiceStatus
    ${InvoiceStatus},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the invoice in Microsoft Bookings.
    ${InvoiceUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsLocationOnline},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${OnlineMeetingUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
    ${OptOutOfCustomerEmail},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The amount of time to reserve after the appointment ends, for cleaning up, as an example.
    # The value is expressed in ISO8601 format.
    ${PostBuffer},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The amount of time to reserve before the appointment begins, for preparation, as an example.
    # The value is expressed in ISO8601 format.
    ${PreBuffer},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # The regular price for an appointment for the specified bookingService.
    ${Price},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Represents the type of pricing of a booking service.
    ${PriceType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingReminder[]]
    # The collection of customer reminders sent for this appointment.
    # The value of this property is available only when reading this bookingAppointment by its ID.
    # To construct, see NOTES section for REMINDERS properties and create a hash table.
    ${Reminders},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
    ${SelfServiceAppointmentId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the bookingService associated with this appointment.
    ${ServiceId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocation]
    # location
    # To construct, see NOTES section for SERVICELOCATION properties and create a hash table.
    ${ServiceLocation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The name of the bookingService associated with this appointment.This property is optional when creating a new appointment.
    # If not specified, it is computed from the service associated with the appointment by the serviceId property.
    ${ServiceName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Notes from a bookingStaffMember.
    # The value of this property is available only when reading this bookingAppointment by its ID.
    ${ServiceNotes},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SmsNotificationsEnabled},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The ID of each bookingStaffMember who is scheduled in this appointment.
    ${StaffMemberIds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, see NOTES section for START properties and create a hash table.
    ${Start},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessCalendarView_Update';
            UpdateExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessCalendarView_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessCalendarView_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessCalendarView_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the customers of this business.
Read-only.
Nullable.
.Description
All the customers of this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCustomer
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ADDRESSES <IMicrosoftGraphPhysicalAddress[]>: .
  [City <String>]: The city.
  [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
  [PostOfficeBox <String>]: The post office box number.
  [PostalCode <String>]: The postal code.
  [State <String>]: The state.
  [Street <String>]: The street.
  [Type <String>]: physicalAddressType

BODYPARAMETER <IMicrosoftGraphBookingCustomer>: Represents a customer of the business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <String>]: The email address of the person.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [Addresses <IMicrosoftGraphPhysicalAddress[]>]: 
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Phones <IMicrosoftGraphPhone[]>]: 
    [Number <String>]: The phone number.
    [Type <String>]: phoneType

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

PHONES <IMicrosoftGraphPhone[]>: .
  [Number <String>]: The phone number.
  [Type <String>]: phoneType
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/update-mgbookingbusinesscustomer
#>
function Update-MgBookingBusinessCustomer {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingCustomer
    ${BookingCustomerId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCustomer]
    # Represents a customer of the business.
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPhysicalAddress[]]
    # .
    # To construct, see NOTES section for ADDRESSES properties and create a hash table.
    ${Addresses},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A name for the derived entity, which interfaces with customers.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The email address of the person.
    ${EmailAddress},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPhone[]]
    # .
    # To construct, see NOTES section for PHONES properties and create a hash table.
    ${Phones},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessCustomer_Update';
            UpdateExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessCustomer_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessCustomer_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessCustomer_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the services offered by this business.
Read-only.
Nullable.
.Description
All the services offered by this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingService
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphBookingService>: Represents a particular service offered by a booking business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [DefaultDuration <TimeSpan?>]: The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S.
  [DefaultLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [DefaultPrice <Double?>]: The default monetary price for the service.
  [DefaultPriceType <String>]: Represents the type of pricing of a booking service.
  [DefaultReminders <IMicrosoftGraphBookingReminder[]>]: The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [Description <String>]: A text description for the service.
  [IsHiddenFromCustomers <Boolean?>]: True means this service is not available to customers for booking.
  [IsLocationOnline <Boolean?>]: 
  [Notes <String>]: Additional information about this service.
  [PostBuffer <TimeSpan?>]: The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
  [PreBuffer <TimeSpan?>]: The time to buffer before an appointment for this service can start.
  [SchedulingPolicy <IMicrosoftGraphBookingSchedulingPolicy>]: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowStaffSelection <Boolean?>]: True if to allow customers to choose a specific person for the booking.
    [MaximumAdvance <TimeSpan?>]: Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
    [MinimumLeadTime <TimeSpan?>]: The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
    [SendConfirmationsToOwner <Boolean?>]: True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
    [TimeSlotInterval <TimeSpan?>]: Duration of each time slot, denoted in ISO 8601 format.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: Represents those staff members who provide this service.
  [WebUrl <String>]: The URL of the booking service.

DEFAULTLOCATION <IMicrosoftGraphLocation>: location
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
    [Altitude <Double?>]: The altitude of the location.
    [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
    [Latitude <Double?>]: The latitude of the location.
    [Longitude <Double?>]: The longitude of the location.
  [DisplayName <String>]: The name associated with the location.
  [LocationEmailAddress <String>]: Optional email address of the location.
  [LocationType <String>]: locationType
  [LocationUri <String>]: Optional URI representing the location.
  [UniqueId <String>]: For internal use only.
  [UniqueIdType <String>]: locationUniqueIdType

DEFAULTREMINDERS <IMicrosoftGraphBookingReminder[]>: The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
  [Message <String>]: The message in the reminder.
  [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
  [Recipients <String>]: bookingReminderRecipients

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

SCHEDULINGPOLICY <IMicrosoftGraphBookingSchedulingPolicy>: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AllowStaffSelection <Boolean?>]: True if to allow customers to choose a specific person for the booking.
  [MaximumAdvance <TimeSpan?>]: Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
  [MinimumLeadTime <TimeSpan?>]: The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
  [SendConfirmationsToOwner <Boolean?>]: True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
  [TimeSlotInterval <TimeSpan?>]: Duration of each time slot, denoted in ISO 8601 format.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/update-mgbookingbusinessservice
#>
function Update-MgBookingBusinessService {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingService
    ${BookingServiceId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingService]
    # Represents a particular service offered by a booking business.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
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
    [System.TimeSpan]
    # The default length of the service, represented in numbers of days, hours, minutes, and seconds.
    # For example, P11D23H59M59.999999999999S.
    ${DefaultDuration},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocation]
    # location
    # To construct, see NOTES section for DEFAULTLOCATION properties and create a hash table.
    ${DefaultLocation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # The default monetary price for the service.
    ${DefaultPrice},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Represents the type of pricing of a booking service.
    ${DefaultPriceType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingReminder[]]
    # The default set of reminders for an appointment of this service.
    # The value of this property is available only when reading this bookingService by its ID.
    # To construct, see NOTES section for DEFAULTREMINDERS properties and create a hash table.
    ${DefaultReminders},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A text description for the service.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A name for the derived entity, which interfaces with customers.
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
    # True means this service is not available to customers for booking.
    ${IsHiddenFromCustomers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsLocationOnline},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Additional information about this service.
    ${Notes},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
    ${PostBuffer},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # The time to buffer before an appointment for this service can start.
    ${PreBuffer},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingSchedulingPolicy]
    # This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    # To construct, see NOTES section for SCHEDULINGPOLICY properties and create a hash table.
    ${SchedulingPolicy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SmsNotificationsEnabled},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Represents those staff members who provide this service.
    ${StaffMemberIds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the booking service.
    ${WebUrl},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessService_Update';
            UpdateExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessService_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessService_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessService_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
All the staff members that provide services in this business.
Read-only.
Nullable.
.Description
All the staff members that provide services in this business.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingStaffMember
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphBookingStaffMember>: Represents a staff member who provides services in a business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <String>]: The email address of the person.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [AvailabilityIsAffectedByPersonalCalendar <Boolean?>]: True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
  [ColorIndex <Int32?>]: Identifies a color to represent the staff member. The color corresponds to the color palette in the Staff details page in the Bookings app.
  [Role <String>]: bookingStaffRole
  [TimeZone <String>]: 
  [UseBusinessHours <Boolean?>]: True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
  [WorkingHours <IMicrosoftGraphBookingWorkHours[]>]: The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
    [Day <String>]: dayOfWeek
    [TimeSlots <IMicrosoftGraphBookingWorkTimeSlot[]>]: A list of start/end times during a day.
      [End <String>]: The time of the day when work stops. For example, 17:00:00.0000000.
      [Start <String>]: The time of the day when work starts. For example, 08:00:00.0000000.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

WORKINGHOURS <IMicrosoftGraphBookingWorkHours[]>: The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
  [Day <String>]: dayOfWeek
  [TimeSlots <IMicrosoftGraphBookingWorkTimeSlot[]>]: A list of start/end times during a day.
    [End <String>]: The time of the day when work stops. For example, 17:00:00.0000000.
    [Start <String>]: The time of the day when work starts. For example, 08:00:00.0000000.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/update-mgbookingbusinessstaffmember
#>
function Update-MgBookingBusinessStaffMember {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingStaffMember
    ${BookingStaffMemberId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingStaffMember]
    # Represents a staff member who provides services in a business.
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
    # True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
    ${AvailabilityIsAffectedByPersonalCalendar},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Identifies a color to represent the staff member.
    # The color corresponds to the color palette in the Staff details page in the Bookings app.
    ${ColorIndex},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A name for the derived entity, which interfaces with customers.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The email address of the person.
    ${EmailAddress},

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
    # bookingStaffRole
    ${Role},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${TimeZone},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # True means the staff member's availability is as specified in the businessHours property of the business.
    # False means the availability is determined by the staff member's workingHours property setting.
    ${UseBusinessHours},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingWorkHours[]]
    # The range of hours each day of the week that the staff member is available for booking.
    # By default, they are initialized to be the same as the businessHours property of the business.
    # To construct, see NOTES section for WORKINGHOURS properties and create a hash table.
    ${WorkingHours},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessStaffMember_Update';
            UpdateExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessStaffMember_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessStaffMember_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusinessStaffMember_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Represents a Microsot Bookings Business.
.Description
Represents a Microsot Bookings Business.

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingBusiness
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ADDRESS <IMicrosoftGraphPhysicalAddress>: physicalAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [City <String>]: The city.
  [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
  [PostOfficeBox <String>]: The post office box number.
  [PostalCode <String>]: The postal code.
  [State <String>]: The state.
  [Street <String>]: The street.
  [Type <String>]: physicalAddressType

APPOINTMENTS <IMicrosoftGraphBookingAppointment[]>: All the appointments of this business. Read-only. Nullable.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [CustomerEmailAddress <String>]: The SMTP address of the bookingCustomer who is booking the appointment.
  [CustomerId <String>]: The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
  [CustomerLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [CustomerName <String>]: The customer's name.
  [CustomerNotes <String>]: Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
  [CustomerPhone <String>]: The customer's phone number.
  [CustomerTimeZone <String>]: 
  [Duration <TimeSpan?>]: The length of the appointment, denoted in ISO8601 format.
  [End <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [InvoiceAmount <Double?>]: The billed amount on the invoice.
  [InvoiceDate <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [InvoiceId <String>]: The ID of the invoice.
  [InvoiceStatus <String>]: bookingInvoiceStatus
  [InvoiceUrl <String>]: The URL of the invoice in Microsoft Bookings.
  [IsLocationOnline <Boolean?>]: 
  [JoinWebUrl <String>]: 
  [OnlineMeetingUrl <String>]: 
  [OptOutOfCustomerEmail <Boolean?>]: True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
  [PostBuffer <TimeSpan?>]: The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
  [PreBuffer <TimeSpan?>]: The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
  [Price <Double?>]: The regular price for an appointment for the specified bookingService.
  [PriceType <String>]: Represents the type of pricing of a booking service.
  [Reminders <IMicrosoftGraphBookingReminder[]>]: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [SelfServiceAppointmentId <String>]: An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
  [ServiceId <String>]: The ID of the bookingService associated with this appointment.
  [ServiceLocation <IMicrosoftGraphLocation>]: location
  [ServiceName <String>]: The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
  [ServiceNotes <String>]: Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: The ID of each bookingStaffMember who is scheduled in this appointment.
  [Start <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

BODYPARAMETER <IMicrosoftGraphBookingBusiness>: Represents a Microsot Bookings Business.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Appointments <IMicrosoftGraphBookingAppointment[]>]: All the appointments of this business. Read-only. Nullable.
    [Id <String>]: Read-only.
    [AdditionalInformation <String>]: 
    [CustomerEmailAddress <String>]: The SMTP address of the bookingCustomer who is booking the appointment.
    [CustomerId <String>]: The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
    [CustomerLocation <IMicrosoftGraphLocation>]: location
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
        [Altitude <Double?>]: The altitude of the location.
        [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
        [Latitude <Double?>]: The latitude of the location.
        [Longitude <Double?>]: The longitude of the location.
      [DisplayName <String>]: The name associated with the location.
      [LocationEmailAddress <String>]: Optional email address of the location.
      [LocationType <String>]: locationType
      [LocationUri <String>]: Optional URI representing the location.
      [UniqueId <String>]: For internal use only.
      [UniqueIdType <String>]: locationUniqueIdType
    [CustomerName <String>]: The customer's name.
    [CustomerNotes <String>]: Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
    [CustomerPhone <String>]: The customer's phone number.
    [CustomerTimeZone <String>]: 
    [Duration <TimeSpan?>]: The length of the appointment, denoted in ISO8601 format.
    [End <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
      [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
    [InvoiceAmount <Double?>]: The billed amount on the invoice.
    [InvoiceDate <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [InvoiceId <String>]: The ID of the invoice.
    [InvoiceStatus <String>]: bookingInvoiceStatus
    [InvoiceUrl <String>]: The URL of the invoice in Microsoft Bookings.
    [IsLocationOnline <Boolean?>]: 
    [JoinWebUrl <String>]: 
    [OnlineMeetingUrl <String>]: 
    [OptOutOfCustomerEmail <Boolean?>]: True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
    [PostBuffer <TimeSpan?>]: The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
    [PreBuffer <TimeSpan?>]: The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
    [Price <Double?>]: The regular price for an appointment for the specified bookingService.
    [PriceType <String>]: Represents the type of pricing of a booking service.
    [Reminders <IMicrosoftGraphBookingReminder[]>]: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
      [Message <String>]: The message in the reminder.
      [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
      [Recipients <String>]: bookingReminderRecipients
    [SelfServiceAppointmentId <String>]: An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
    [ServiceId <String>]: The ID of the bookingService associated with this appointment.
    [ServiceLocation <IMicrosoftGraphLocation>]: location
    [ServiceName <String>]: The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
    [ServiceNotes <String>]: Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
    [SmsNotificationsEnabled <Boolean?>]: 
    [StaffMemberIds <String[]>]: The ID of each bookingStaffMember who is scheduled in this appointment.
    [Start <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [BusinessHours <IMicrosoftGraphBookingWorkHours[]>]: The hours of operation for the business.
    [Day <String>]: dayOfWeek
    [TimeSlots <IMicrosoftGraphBookingWorkTimeSlot[]>]: A list of start/end times during a day.
      [End <String>]: The time of the day when work stops. For example, 17:00:00.0000000.
      [Start <String>]: The time of the day when work starts. For example, 08:00:00.0000000.
  [BusinessType <String>]: The type of business.
  [CalendarView <IMicrosoftGraphBookingAppointment[]>]: The set of appointments of this business in a specified date range. Read-only. Nullable.
  [Customers <IMicrosoftGraphBookingCustomer[]>]: All the customers of this business. Read-only. Nullable.
    [EmailAddress <String>]: The email address of the person.
    [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
    [Id <String>]: Read-only.
    [Addresses <IMicrosoftGraphPhysicalAddress[]>]: 
    [Phones <IMicrosoftGraphPhone[]>]: 
      [Number <String>]: The phone number.
      [Type <String>]: phoneType
  [DefaultCurrencyIso <String>]: The code for the currency that the business operates in on Microsoft Bookings.
  [Email <String>]: The email address for the business.
  [IsPublished <Boolean?>]: The scheduling page has been made available to external customers. Use the publish and unpublish actions to set this property. Read-only.
  [Phone <String>]: The telephone number for the business. The phone property, together with address and webSiteUrl, appear in the footer of a business scheduling page.
  [PublicUrl <String>]: The URL for the scheduling page, which is set after you publish or unpublish the page. Read-only.
  [SchedulingPolicy <IMicrosoftGraphBookingSchedulingPolicy>]: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowStaffSelection <Boolean?>]: True if to allow customers to choose a specific person for the booking.
    [MaximumAdvance <TimeSpan?>]: Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
    [MinimumLeadTime <TimeSpan?>]: The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
    [SendConfirmationsToOwner <Boolean?>]: True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
    [TimeSlotInterval <TimeSpan?>]: Duration of each time slot, denoted in ISO 8601 format.
  [Services <IMicrosoftGraphBookingService[]>]: All the services offered by this business. Read-only. Nullable.
    [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
    [Id <String>]: Read-only.
    [AdditionalInformation <String>]: 
    [DefaultDuration <TimeSpan?>]: The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S.
    [DefaultLocation <IMicrosoftGraphLocation>]: location
    [DefaultPrice <Double?>]: The default monetary price for the service.
    [DefaultPriceType <String>]: Represents the type of pricing of a booking service.
    [DefaultReminders <IMicrosoftGraphBookingReminder[]>]: The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
    [Description <String>]: A text description for the service.
    [IsHiddenFromCustomers <Boolean?>]: True means this service is not available to customers for booking.
    [IsLocationOnline <Boolean?>]: 
    [Notes <String>]: Additional information about this service.
    [PostBuffer <TimeSpan?>]: The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
    [PreBuffer <TimeSpan?>]: The time to buffer before an appointment for this service can start.
    [SchedulingPolicy <IMicrosoftGraphBookingSchedulingPolicy>]: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    [SmsNotificationsEnabled <Boolean?>]: 
    [StaffMemberIds <String[]>]: Represents those staff members who provide this service.
    [WebUrl <String>]: The URL of the booking service.
  [StaffMembers <IMicrosoftGraphBookingStaffMember[]>]: All the staff members that provide services in this business. Read-only. Nullable.
    [EmailAddress <String>]: The email address of the person.
    [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
    [Id <String>]: Read-only.
    [AvailabilityIsAffectedByPersonalCalendar <Boolean?>]: True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
    [ColorIndex <Int32?>]: Identifies a color to represent the staff member. The color corresponds to the color palette in the Staff details page in the Bookings app.
    [Role <String>]: bookingStaffRole
    [TimeZone <String>]: 
    [UseBusinessHours <Boolean?>]: True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
    [WorkingHours <IMicrosoftGraphBookingWorkHours[]>]: The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
  [WebSiteUrl <String>]: The URL of the business web site. The webSiteUrl property, together with address, phone, appear in the footer of a business scheduling page.

BUSINESSHOURS <IMicrosoftGraphBookingWorkHours[]>: The hours of operation for the business.
  [Day <String>]: dayOfWeek
  [TimeSlots <IMicrosoftGraphBookingWorkTimeSlot[]>]: A list of start/end times during a day.
    [End <String>]: The time of the day when work stops. For example, 17:00:00.0000000.
    [Start <String>]: The time of the day when work starts. For example, 08:00:00.0000000.

CALENDARVIEW <IMicrosoftGraphBookingAppointment[]>: The set of appointments of this business in a specified date range. Read-only. Nullable.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [CustomerEmailAddress <String>]: The SMTP address of the bookingCustomer who is booking the appointment.
  [CustomerId <String>]: The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
  [CustomerLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [CustomerName <String>]: The customer's name.
  [CustomerNotes <String>]: Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
  [CustomerPhone <String>]: The customer's phone number.
  [CustomerTimeZone <String>]: 
  [Duration <TimeSpan?>]: The length of the appointment, denoted in ISO8601 format.
  [End <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [InvoiceAmount <Double?>]: The billed amount on the invoice.
  [InvoiceDate <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [InvoiceId <String>]: The ID of the invoice.
  [InvoiceStatus <String>]: bookingInvoiceStatus
  [InvoiceUrl <String>]: The URL of the invoice in Microsoft Bookings.
  [IsLocationOnline <Boolean?>]: 
  [JoinWebUrl <String>]: 
  [OnlineMeetingUrl <String>]: 
  [OptOutOfCustomerEmail <Boolean?>]: True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
  [PostBuffer <TimeSpan?>]: The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
  [PreBuffer <TimeSpan?>]: The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
  [Price <Double?>]: The regular price for an appointment for the specified bookingService.
  [PriceType <String>]: Represents the type of pricing of a booking service.
  [Reminders <IMicrosoftGraphBookingReminder[]>]: The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [SelfServiceAppointmentId <String>]: An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
  [ServiceId <String>]: The ID of the bookingService associated with this appointment.
  [ServiceLocation <IMicrosoftGraphLocation>]: location
  [ServiceName <String>]: The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
  [ServiceNotes <String>]: Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: The ID of each bookingStaffMember who is scheduled in this appointment.
  [Start <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

CUSTOMERS <IMicrosoftGraphBookingCustomer[]>: All the customers of this business. Read-only. Nullable.
  [EmailAddress <String>]: The email address of the person.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [Addresses <IMicrosoftGraphPhysicalAddress[]>]: 
    [City <String>]: The city.
    [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
    [PostOfficeBox <String>]: The post office box number.
    [PostalCode <String>]: The postal code.
    [State <String>]: The state.
    [Street <String>]: The street.
    [Type <String>]: physicalAddressType
  [Phones <IMicrosoftGraphPhone[]>]: 
    [Number <String>]: The phone number.
    [Type <String>]: phoneType

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember

SCHEDULINGPOLICY <IMicrosoftGraphBookingSchedulingPolicy>: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AllowStaffSelection <Boolean?>]: True if to allow customers to choose a specific person for the booking.
  [MaximumAdvance <TimeSpan?>]: Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
  [MinimumLeadTime <TimeSpan?>]: The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
  [SendConfirmationsToOwner <Boolean?>]: True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
  [TimeSlotInterval <TimeSpan?>]: Duration of each time slot, denoted in ISO 8601 format.

SERVICES <IMicrosoftGraphBookingService[]>: All the services offered by this business. Read-only. Nullable.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [AdditionalInformation <String>]: 
  [DefaultDuration <TimeSpan?>]: The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S.
  [DefaultLocation <IMicrosoftGraphLocation>]: location
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <IMicrosoftGraphPhysicalAddress>]: physicalAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [City <String>]: The city.
      [CountryOrRegion <String>]: The country or region. It's a free-format string value, for example, 'United States'.
      [PostOfficeBox <String>]: The post office box number.
      [PostalCode <String>]: The postal code.
      [State <String>]: The state.
      [Street <String>]: The street.
      [Type <String>]: physicalAddressType
    [Coordinates <IMicrosoftGraphOutlookGeoCoordinates>]: outlookGeoCoordinates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Accuracy <Double?>]: The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
      [Altitude <Double?>]: The altitude of the location.
      [AltitudeAccuracy <Double?>]: The accuracy of the altitude.
      [Latitude <Double?>]: The latitude of the location.
      [Longitude <Double?>]: The longitude of the location.
    [DisplayName <String>]: The name associated with the location.
    [LocationEmailAddress <String>]: Optional email address of the location.
    [LocationType <String>]: locationType
    [LocationUri <String>]: Optional URI representing the location.
    [UniqueId <String>]: For internal use only.
    [UniqueIdType <String>]: locationUniqueIdType
  [DefaultPrice <Double?>]: The default monetary price for the service.
  [DefaultPriceType <String>]: Represents the type of pricing of a booking service.
  [DefaultReminders <IMicrosoftGraphBookingReminder[]>]: The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
    [Message <String>]: The message in the reminder.
    [Offset <TimeSpan?>]: The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
    [Recipients <String>]: bookingReminderRecipients
  [Description <String>]: A text description for the service.
  [IsHiddenFromCustomers <Boolean?>]: True means this service is not available to customers for booking.
  [IsLocationOnline <Boolean?>]: 
  [Notes <String>]: Additional information about this service.
  [PostBuffer <TimeSpan?>]: The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
  [PreBuffer <TimeSpan?>]: The time to buffer before an appointment for this service can start.
  [SchedulingPolicy <IMicrosoftGraphBookingSchedulingPolicy>]: This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AllowStaffSelection <Boolean?>]: True if to allow customers to choose a specific person for the booking.
    [MaximumAdvance <TimeSpan?>]: Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
    [MinimumLeadTime <TimeSpan?>]: The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
    [SendConfirmationsToOwner <Boolean?>]: True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
    [TimeSlotInterval <TimeSpan?>]: Duration of each time slot, denoted in ISO 8601 format.
  [SmsNotificationsEnabled <Boolean?>]: 
  [StaffMemberIds <String[]>]: Represents those staff members who provide this service.
  [WebUrl <String>]: The URL of the booking service.

STAFFMEMBERS <IMicrosoftGraphBookingStaffMember[]>: All the staff members that provide services in this business. Read-only. Nullable.
  [EmailAddress <String>]: The email address of the person.
  [DisplayName <String>]: A name for the derived entity, which interfaces with customers.
  [Id <String>]: Read-only.
  [AvailabilityIsAffectedByPersonalCalendar <Boolean?>]: True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
  [ColorIndex <Int32?>]: Identifies a color to represent the staff member. The color corresponds to the color palette in the Staff details page in the Bookings app.
  [Role <String>]: bookingStaffRole
  [TimeZone <String>]: 
  [UseBusinessHours <Boolean?>]: True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
  [WorkingHours <IMicrosoftGraphBookingWorkHours[]>]: The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
    [Day <String>]: dayOfWeek
    [TimeSlots <IMicrosoftGraphBookingWorkTimeSlot[]>]: A list of start/end times during a day.
      [End <String>]: The time of the day when work stops. For example, 17:00:00.0000000.
      [Start <String>]: The time of the day when work starts. For example, 08:00:00.0000000.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/update-mgbookingbusiness
#>
function Update-MgBookingBusiness {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingBusiness
    ${BookingBusinessId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingBusiness]
    # Represents a Microsot Bookings Business.
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPhysicalAddress]
    # physicalAddress
    # To construct, see NOTES section for ADDRESS properties and create a hash table.
    ${Address},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment[]]
    # All the appointments of this business.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for APPOINTMENTS properties and create a hash table.
    ${Appointments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingWorkHours[]]
    # The hours of operation for the business.
    # To construct, see NOTES section for BUSINESSHOURS properties and create a hash table.
    ${BusinessHours},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The type of business.
    ${BusinessType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingAppointment[]]
    # The set of appointments of this business in a specified date range.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for CALENDARVIEW properties and create a hash table.
    ${CalendarView},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCustomer[]]
    # All the customers of this business.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for CUSTOMERS properties and create a hash table.
    ${Customers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The code for the currency that the business operates in on Microsoft Bookings.
    ${DefaultCurrencyIso},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A name for the derived entity, which interfaces with customers.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The email address for the business.
    ${Email},

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
    # The scheduling page has been made available to external customers.
    # Use the publish and unpublish actions to set this property.
    # Read-only.
    ${IsPublished},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The telephone number for the business.
    # The phone property, together with address and webSiteUrl, appear in the footer of a business scheduling page.
    ${Phone},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL for the scheduling page, which is set after you publish or unpublish the page.
    # Read-only.
    ${PublicUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingSchedulingPolicy]
    # This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
    # To construct, see NOTES section for SCHEDULINGPOLICY properties and create a hash table.
    ${SchedulingPolicy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingService[]]
    # All the services offered by this business.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SERVICES properties and create a hash table.
    ${Services},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingStaffMember[]]
    # All the staff members that provide services in this business.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for STAFFMEMBERS properties and create a hash table.
    ${StaffMembers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the business web site.
    # The webSiteUrl property, together with address, phone, appear in the footer of a business scheduling page.
    ${WebSiteUrl},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusiness_Update';
            UpdateExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusiness_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusiness_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingBusiness_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update entity in bookingCurrencies
.Description
Update entity in bookingCurrencies

.Inputs
Microsoft.Graph.PowerShell.Models.IBookingsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCurrency
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphBookingCurrency>: bookingCurrency
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Symbol <String>]: The currency symbol. For example, the currency symbol for the US dollar and for the Australian dollar is $.

INPUTOBJECT <IBookingsIdentity>: Identity Parameter
  [BookingAppointmentId <String>]: key: id of bookingAppointment
  [BookingBusinessId <String>]: key: id of bookingBusiness
  [BookingCurrencyId <String>]: key: id of bookingCurrency
  [BookingCustomerId <String>]: key: id of bookingCustomer
  [BookingServiceId <String>]: key: id of bookingService
  [BookingStaffMemberId <String>]: key: id of bookingStaffMember
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.bookings/update-mgbookingcurrency
#>
function Update-MgBookingCurrency {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of bookingCurrency
    ${BookingCurrencyId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IBookingsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBookingCurrency]
    # bookingCurrency
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
    [System.String]
    # The currency symbol.
    # For example, the currency symbol for the US dollar and for the Australian dollar is $.
    ${Symbol},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Bookings.private\Update-MgBookingCurrency_Update';
            UpdateExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingCurrency_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Bookings.private\Update-MgBookingCurrency_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Bookings.private\Update-MgBookingCurrency_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# MIIjnAYJKoZIhvcNAQcCoIIjjTCCI4kCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCC9sIBK5/RlRLdw
# 9HfZOGMk1Sw9Vk9tC2fuyn8jiS9x3KCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIVcTCCFW0CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAd9r8C6Sp0q00AAAAAAB3zAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgXZkT4wMo
# 1vrKsE7m8HQKc6CVygu1kSAEUzheArgW1Y8wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQAHDkbTzHHofxRwGl/SMOSU3K83CtYjVO0ThRLYmpJD
# WJmTIXfYDeW8p0HU3afllMyO8HhHXag93Agp/ie82AK+iNr1dfMrT2IrCX+rvUsM
# g7EovScg7ef7Rkdz3+xlu5IVdn4ujG/zL8Tzid8BdOdo1NltlGctDtHE69nG/Q1s
# ZpFJt8ox286V91AHUwuAb+zFxGm2jrrYKGIpKtq++rky81hsUqoXT3QHbUiFzmHX
# oRL0vd7iOKrgkZMIRlxUWK9oCosMAmS3BlA4uxqIrAMWUxzeknYai+S94d39P0Q8
# SR/Pxd283Zr1+SWloMs5CDNcGh5fWezku5Y/jZ6dcOEZoYIS+zCCEvcGCisGAQQB
# gjcDAwExghLnMIIS4wYJKoZIhvcNAQcCoIIS1DCCEtACAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIIGKgXkpLUer+jSzxNDcReUShmehOL1+KTpmIfNX
# 7M7wAgZhcIewPrQYEzIwMjExMDI3MDcxMTIzLjY3OFowBIACAfSggdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046MTc5RS00QkIwLTgyNDYxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2Wggg5KMIIE+TCCA+GgAwIBAgITMwAAATyL/bmzP0eX
# /QAAAAABPDANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMDAeFw0yMDEwMTUxNzI4MjNaFw0yMjAxMTIxNzI4MjNaMIHSMQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQg
# SXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOjE3OUUtNEJCMC04MjQ2MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmBAq6WkD
# qvY5DgaQt+OX0NCLzqUaivJxHvo6KSXP+VzTas2p6uYa3fcIm+EXb6bj4+vJ+Q5v
# 12btrwqp1qMYct4sa24Ev64Nwkt26qfAINVEIP8QM99k7nnkzmNXDnpXF0WoaLCH
# I5a65L9dwGnBV5uAG2DAoGDOgc3WSgEXm3OsxL/uEAsuPtQFfER0BxDnaI+NjiaW
# xVpR72Cs17jNQB+L5o0/aP3wqtplg+yINvwqWiHdoByukfkvdPYitu7lZI1Wqdv0
# m+AEziyW2lUPl9PoWGxHAnrH/d4PrQEF7rwPHR+t3aCuSOc3WQheVP9w4m35e2Qh
# bFOpLPqYeIya2wIDAQABo4IBGzCCARcwHQYDVR0OBBYEFOGhZ+LKEvo2s2E/JRjq
# GL8mZzxGMB8GA1UdIwQYMBaAFNVjOlyKMZDzQ3t8RhvFM2hahW1VMFYGA1UdHwRP
# ME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1
# Y3RzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNybDBaBggrBgEFBQcBAQROMEww
# SgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMv
# TWljVGltU3RhUENBXzIwMTAtMDctMDEuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0l
# BAwwCgYIKwYBBQUHAwgwDQYJKoZIhvcNAQELBQADggEBADL3EIyU3Zd5bkjMxakZ
# MUZJSfilkVFJQdyNiiVVm+Bp+nlnSU4lnQtbsXoxdqD19G/l/UCIYvLtQGle/dnh
# IrdpUM6lYD4n8k2Ri48ytjqLuD4/xefD6dpuh7qRn7jQHoZZ/oUr7yBOYIBJwor/
# ZVZACTjJSxxd/A2z7+6clrNC879rI2cDx73YbVfJQbTmLBPDcc55W7MnPNL0Z0Xq
# pvCUCumfMQA+EnmPHbhRV4XIhExthNG4fvzd5sBp81yczG0igCpMyMOmMan/sx81
# jxYpvQxmcJnIavuiQSrW+BBk9BBbX6hgqzjw+Tu7j8EnY9WqYF6qOx3Lce4XLOao
# 6cIwggZxMIIEWaADAgECAgphCYEqAAAAAAACMA0GCSqGSIb3DQEBCwUAMIGIMQsw
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
# 2u8JJxzVs341Hgi62jbb01+P3nSISRKhggLUMIICPQIBATCCAQChgdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046MTc5RS00QkIwLTgyNDYxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAB1LdHpZ3mjy22teinut
# 0UdweuTmoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwDQYJ
# KoZIhvcNAQEFBQACBQDlIu7vMCIYDzIwMjExMDI3MDUxNzM1WhgPMjAyMTEwMjgw
# NTE3MzVaMHQwOgYKKwYBBAGEWQoEATEsMCowCgIFAOUi7u8CAQAwBwIBAAICCD4w
# BwIBAAICEYkwCgIFAOUkQG8CAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYBBAGE
# WQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUFAAOBgQCt
# FHZ01WlMxTvwMtGSAlXUgrf6V7FgDf0hfR9E+o2KunMBBkVuWkHBzakDBh8MLUYL
# 1wakSGAfdXi62kC2PF5/2W83q9spqlAcpuhX6oty22ov1wSaKShzlZWp344Ee0C7
# zMyk1fNP7PoL8YTAEcowCUWKXYpTdTREs1EekCKEBTGCAw0wggMJAgEBMIGTMHwx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1p
# Y3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABPIv9ubM/R5f9AAAAAAE8
# MA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQAQQw
# LwYJKoZIhvcNAQkEMSIEIPhGXGwPDU5ZIDtLSbhXrgAOuojYODCujlnhN89NoIZK
# MIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgoEkCuk0kv8DnOqm31HwRr+2I
# bD3xmIW4FSGK4SboWkYwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMAITMwAAATyL/bmzP0eX/QAAAAABPDAiBCBOvcsDRGuHiiv9JuNR5soNRlwW
# F4/KGfDh0Qx+iMjufjANBgkqhkiG9w0BAQsFAASCAQAsZVsc6RN4k/CeocD0EAHk
# IYxzAdU8x7zODRVtVmXO34SKxjdTbj4kO9A1Qsp5FRX20UXJNHpXchWiDfh53jx6
# PttFIZW8B/o3ozn2rUtMoZMujnZ25oQiruVYfieprpiu51Ho0YP0b+0X3HkmvICu
# yzCZyiGV6fT3PE9IVidQAoOd/EIL+1gviSLtopsrv6LF3wERH1jIVNVm2x4BTe0x
# 1xPXsLr90L3lkuWPdsbG5JlCJYbjRoBb//pzzd8ImgEwOeiA8iWTX76lLt1O2CMw
# Fs0MaFaF+RoWFkd2Idxcy43jy8ETwIthCJlEOc33l6nx9J5NY46M+ijj17bgdptx
# SIG # End signature block
