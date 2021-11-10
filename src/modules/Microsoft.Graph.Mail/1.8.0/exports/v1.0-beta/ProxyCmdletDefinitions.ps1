
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other.
Read-only.
Nullable.
.Description
A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mguserinferenceclassificationoverride
#>
function Get-MgUserInferenceClassificationOverride {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of inferenceClassificationOverride
    ${InferenceClassificationOverrideId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserInferenceClassificationOverride_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserInferenceClassificationOverride_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserInferenceClassificationOverride_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.
.Description
Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassification
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mguserinferenceclassification
#>
function Get-MgUserInferenceClassification {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassification])]
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
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserInferenceClassification_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserInferenceClassification_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of child folders in the mailFolder.
.Description
The collection of child folders in the mailFolder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfolderchildfolder
#>
function Get-MgUserMailFolderChildFolder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderChildFolder_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderChildFolder_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderChildFolder_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The fileAttachment and itemAttachment attachments for the message.
.Description
The fileAttachment and itemAttachment attachments for the message.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfoldermessageattachment
#>
function Get-MgUserMailFolderMessageAttachment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageAttachment_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageAttachment_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageAttachment_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get media content for the navigation property messages from users
.Description
Get media content for the navigation property messages from users

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfoldermessagecontent
#>
function Get-MgUserMailFolderMessageContent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageContent_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageContent_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of open extensions defined for the message.
Nullable.
.Description
The collection of open extensions defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfoldermessageextension
#>
function Get-MgUserMailFolderMessageExtension {
[OutputType([System.String], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageExtension_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageExtension_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageExtension_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.
.Description
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfoldermessagemention
#>
function Get-MgUserMailFolderMessageMention {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mention
    ${MentionId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageMention_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageMention_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageMention_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the message.
Nullable.
.Description
The collection of multi-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfoldermessagemultivalueextendedproperty
#>
function Get-MgUserMailFolderMessageMultiValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageMultiValueExtendedProperty_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageMultiValueExtendedProperty_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageMultiValueExtendedProperty_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of rules that apply to the user's Inbox folder.
.Description
The collection of rules that apply to the user's Inbox folder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfoldermessagerule
#>
function Get-MgUserMailFolderMessageRule {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of messageRule
    ${MessageRuleId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageRule_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageRule_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageRule_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the message.
Nullable.
.Description
The collection of single-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfoldermessagesinglevalueextendedproperty
#>
function Get-MgUserMailFolderMessageSingleValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageSingleValueExtendedProperty_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageSingleValueExtendedProperty_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageSingleValueExtendedProperty_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of messages in the mailFolder.
.Description
The collection of messages in the mailFolder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfoldermessage
#>
function Get-MgUserMailFolderMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessage_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessage_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessage_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the mailFolder.
Read-only.
Nullable.
.Description
The collection of multi-value extended properties defined for the mailFolder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfoldermultivalueextendedproperty
#>
function Get-MgUserMailFolderMultiValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMultiValueExtendedProperty_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMultiValueExtendedProperty_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMultiValueExtendedProperty_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the mailFolder.
Read-only.
Nullable.
.Description
The collection of single-value extended properties defined for the mailFolder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfoldersinglevalueextendedproperty
#>
function Get-MgUserMailFolderSingleValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderSingleValueExtendedProperty_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderSingleValueExtendedProperty_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderSingleValueExtendedProperty_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get userConfigurations from users
.Description
Get userConfigurations from users

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfolderuserconfiguration
#>
function Get-MgUserMailFolderUserConfiguration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userConfiguration
    ${UserConfigurationId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderUserConfiguration_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderUserConfiguration_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderUserConfiguration_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The user's mail folders.
Read-only.
Nullable.
.Description
The user's mail folders.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermailfolder
#>
function Get-MgUserMailFolder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolder_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolder_GetViaIdentity';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolder_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The fileAttachment and itemAttachment attachments for the message.
.Description
The fileAttachment and itemAttachment attachments for the message.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermessageattachment
#>
function Get-MgUserMessageAttachment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageAttachment_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageAttachment_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageAttachment_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get media content for the navigation property messages from users
.Description
Get media content for the navigation property messages from users

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermessagecontent
#>
function Get-MgUserMessageContent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageContent_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageContent_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of open extensions defined for the message.
Nullable.
.Description
The collection of open extensions defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermessageextension
#>
function Get-MgUserMessageExtension {
[OutputType([System.String], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageExtension_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageExtension_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageExtension_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.
.Description
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermessagemention
#>
function Get-MgUserMessageMention {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mention
    ${MentionId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMessageMention_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMessageMention_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMessageMention_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the message.
Nullable.
.Description
The collection of multi-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermessagemultivalueextendedproperty
#>
function Get-MgUserMessageMultiValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageMultiValueExtendedProperty_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageMultiValueExtendedProperty_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageMultiValueExtendedProperty_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the message.
Nullable.
.Description
The collection of single-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermessagesinglevalueextendedproperty
#>
function Get-MgUserMessageSingleValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageSingleValueExtendedProperty_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageSingleValueExtendedProperty_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessageSingleValueExtendedProperty_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The messages in a mailbox or folder.
Read-only.
Nullable.
.Description
The messages in a mailbox or folder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/get-mgusermessage
#>
function Get-MgUserMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessage_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessage_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Mail.private\Get-MgUserMessage_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other.
Read-only.
Nullable.
.Description
A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphInferenceClassificationOverride>: inferenceClassificationOverride
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ClassifyAs <String>]: inferenceClassificationType
  [SenderEmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

SENDEREMAILADDRESS <IMicrosoftGraphEmailAddress>: emailAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <String>]: The email address of the person or entity.
  [Name <String>]: The display name of the person or entity.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mguserinferenceclassificationoverride
#>
function New-MgUserInferenceClassificationOverride {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride])]
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
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride]
    # inferenceClassificationOverride
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
    # inferenceClassificationType
    ${ClassifyAs},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress]
    # emailAddress
    # To construct, see NOTES section for SENDEREMAILADDRESS properties and create a hash table.
    ${SenderEmailAddress},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserInferenceClassificationOverride_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserInferenceClassificationOverride_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserInferenceClassificationOverride_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserInferenceClassificationOverride_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of child folders in the mailFolder.
.Description
The collection of child folders in the mailFolder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMailFolder1>: mailFolder
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder1[]>]: The collection of child folders in the mailFolder.
  [DisplayName <String>]: The mailFolder's display name.
  [IsHidden <Boolean?>]: Indicates whether the mailFolder is hidden. This property can be set only when creating the folder. Find more information in Hidden mail folders.
  [MessageRules <IMicrosoftGraphMessageRule[]>]: The collection of rules that apply to the user's Inbox folder.
    [Id <String>]: Read-only.
    [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignCategories <String[]>]: A list of categories to be assigned to a message.
      [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
      [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
      [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
        [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Address <String>]: The email address of the person or entity.
          [Name <String>]: The display name of the person or entity.
      [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
      [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
      [MarkImportance <String>]: importance
      [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
      [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
      [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
      [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
    [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
      [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
      [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
      [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
      [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
      [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
      [Importance <String>]: importance
      [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
      [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
      [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
      [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
      [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
      [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
      [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
      [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
      [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
      [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
      [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
      [MessageActionFlag <String>]: messageActionFlag
      [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
      [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
      [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
      [Sensitivity <String>]: sensitivity
      [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
      [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
      [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
      [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
      [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
        [(Any) <Object>]: This indicates any property can be added to this object.
        [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
        [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [DisplayName <String>]: The display name of the rule.
    [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
    [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
    [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.
  [Messages <IMicrosoftGraphMessage1[]>]: The collection of messages in the mailFolder.
    [Categories <String[]>]: The categories associated with the item
    [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
    [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Id <String>]: Read-only.
    [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
      [Id <String>]: Read-only.
      [ContentType <String>]: The MIME type.
      [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
      [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Name <String>]: The attachment's file name.
      [Size <Int32?>]: The length of the attachment in bytes.
    [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [Body <IMicrosoftGraphItemBody>]: itemBody
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Content <String>]: The content of the item.
      [ContentType <String>]: bodyType
    [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
    [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
    [ConversationId <String>]: The ID of the conversation the email belongs to.
    [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
    [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
      [Id <String>]: Read-only.
    [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
      [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [FlagStatus <String>]: followupFlagStatus
      [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [From <IMicrosoftGraphRecipient>]: recipient
    [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    [Importance <String>]: importance
    [InferenceClassification <String>]: inferenceClassificationType
    [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
      [Name <String>]: Represents the key in a key-value pair.
      [Value <String>]: The value in a key-value pair.
    [InternetMessageId <String>]: 
    [IsDeliveryReceiptRequested <Boolean?>]: 
    [IsDraft <Boolean?>]: 
    [IsRead <Boolean?>]: 
    [IsReadReceiptRequested <Boolean?>]: 
    [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
      [Id <String>]: Read-only.
      [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
      [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
      [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
      [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
      [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
      [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
      [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
      [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
    [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
      [(Any) <Object>]: This indicates any property can be added to this object.
      [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
    [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String[]>]: A collection of property values.
    [ParentFolderId <String>]: 
    [ReceivedDateTime <DateTime?>]: 
    [ReplyTo <IMicrosoftGraphRecipient[]>]: 
    [Sender <IMicrosoftGraphRecipient>]: recipient
    [SentDateTime <DateTime?>]: 
    [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String>]: A property value.
    [Subject <String>]: 
    [ToRecipients <IMicrosoftGraphRecipient[]>]: 
    [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
    [UnsubscribeData <String[]>]: 
    [UnsubscribeEnabled <Boolean?>]: 
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.
  [UserConfigurations <IMicrosoftGraphUserConfiguration[]>]: 
    [Id <String>]: Read-only.
    [BinaryData <Byte[]>]: 
  [WellKnownName <String>]: The well-known folder name for the folder. The possible values are listed above. This property is only set for default folders created by Outlook. For other folders, this property is null.

CHILDFOLDERS <IMicrosoftGraphMailFolder1[]>: The collection of child folders in the mailFolder.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder1[]>]: The collection of child folders in the mailFolder.
  [DisplayName <String>]: The mailFolder's display name.
  [IsHidden <Boolean?>]: Indicates whether the mailFolder is hidden. This property can be set only when creating the folder. Find more information in Hidden mail folders.
  [MessageRules <IMicrosoftGraphMessageRule[]>]: The collection of rules that apply to the user's Inbox folder.
    [Id <String>]: Read-only.
    [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignCategories <String[]>]: A list of categories to be assigned to a message.
      [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
      [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
      [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
        [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Address <String>]: The email address of the person or entity.
          [Name <String>]: The display name of the person or entity.
      [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
      [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
      [MarkImportance <String>]: importance
      [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
      [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
      [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
      [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
    [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
      [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
      [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
      [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
      [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
      [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
      [Importance <String>]: importance
      [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
      [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
      [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
      [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
      [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
      [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
      [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
      [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
      [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
      [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
      [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
      [MessageActionFlag <String>]: messageActionFlag
      [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
      [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
      [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
      [Sensitivity <String>]: sensitivity
      [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
      [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
      [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
      [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
      [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
        [(Any) <Object>]: This indicates any property can be added to this object.
        [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
        [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [DisplayName <String>]: The display name of the rule.
    [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
    [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
    [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.
  [Messages <IMicrosoftGraphMessage1[]>]: The collection of messages in the mailFolder.
    [Categories <String[]>]: The categories associated with the item
    [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
    [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Id <String>]: Read-only.
    [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
      [Id <String>]: Read-only.
      [ContentType <String>]: The MIME type.
      [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
      [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Name <String>]: The attachment's file name.
      [Size <Int32?>]: The length of the attachment in bytes.
    [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [Body <IMicrosoftGraphItemBody>]: itemBody
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Content <String>]: The content of the item.
      [ContentType <String>]: bodyType
    [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
    [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
    [ConversationId <String>]: The ID of the conversation the email belongs to.
    [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
    [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
      [Id <String>]: Read-only.
    [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
      [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [FlagStatus <String>]: followupFlagStatus
      [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [From <IMicrosoftGraphRecipient>]: recipient
    [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    [Importance <String>]: importance
    [InferenceClassification <String>]: inferenceClassificationType
    [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
      [Name <String>]: Represents the key in a key-value pair.
      [Value <String>]: The value in a key-value pair.
    [InternetMessageId <String>]: 
    [IsDeliveryReceiptRequested <Boolean?>]: 
    [IsDraft <Boolean?>]: 
    [IsRead <Boolean?>]: 
    [IsReadReceiptRequested <Boolean?>]: 
    [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
      [Id <String>]: Read-only.
      [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
      [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
      [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
      [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
      [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
      [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
      [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
      [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
    [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
      [(Any) <Object>]: This indicates any property can be added to this object.
      [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
    [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String[]>]: A collection of property values.
    [ParentFolderId <String>]: 
    [ReceivedDateTime <DateTime?>]: 
    [ReplyTo <IMicrosoftGraphRecipient[]>]: 
    [Sender <IMicrosoftGraphRecipient>]: recipient
    [SentDateTime <DateTime?>]: 
    [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String>]: A property value.
    [Subject <String>]: 
    [ToRecipients <IMicrosoftGraphRecipient[]>]: 
    [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
    [UnsubscribeData <String[]>]: 
    [UnsubscribeEnabled <Boolean?>]: 
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.
  [UserConfigurations <IMicrosoftGraphUserConfiguration[]>]: 
    [Id <String>]: Read-only.
    [BinaryData <Byte[]>]: 
  [WellKnownName <String>]: The well-known folder name for the folder. The possible values are listed above. This property is only set for default folders created by Outlook. For other folders, this property is null.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

MESSAGERULES <IMicrosoftGraphMessageRule[]>: The collection of rules that apply to the user's Inbox folder.
  [Id <String>]: Read-only.
  [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignCategories <String[]>]: A list of categories to be assigned to a message.
    [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
    [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
    [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
      [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Address <String>]: The email address of the person or entity.
        [Name <String>]: The display name of the person or entity.
    [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
    [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
    [MarkImportance <String>]: importance
    [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
    [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
    [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
    [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
  [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
    [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
    [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
    [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
    [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
    [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
    [Importance <String>]: importance
    [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
    [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
    [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
    [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
    [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
    [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
    [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
    [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
    [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
    [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
    [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
    [MessageActionFlag <String>]: messageActionFlag
    [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
    [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
    [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
    [Sensitivity <String>]: sensitivity
    [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
    [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
    [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
    [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
    [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
      [(Any) <Object>]: This indicates any property can be added to this object.
      [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
      [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
  [DisplayName <String>]: The display name of the rule.
  [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
  [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
  [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
  [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
  [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.

MESSAGES <IMicrosoftGraphMessage1[]>: The collection of messages in the mailFolder.
  [Categories <String[]>]: The categories associated with the item
  [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
  [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Id <String>]: Read-only.
  [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
    [Id <String>]: Read-only.
    [ContentType <String>]: The MIME type.
    [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Name <String>]: The attachment's file name.
    [Size <Int32?>]: The length of the attachment in bytes.
  [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [Body <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
  [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
  [ConversationId <String>]: The ID of the conversation the email belongs to.
  [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
  [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
    [Id <String>]: Read-only.
  [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
      [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
    [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [FlagStatus <String>]: followupFlagStatus
    [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [From <IMicrosoftGraphRecipient>]: recipient
  [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
  [Importance <String>]: importance
  [InferenceClassification <String>]: inferenceClassificationType
  [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
    [Name <String>]: Represents the key in a key-value pair.
    [Value <String>]: The value in a key-value pair.
  [InternetMessageId <String>]: 
  [IsDeliveryReceiptRequested <Boolean?>]: 
  [IsDraft <Boolean?>]: 
  [IsRead <Boolean?>]: 
  [IsReadReceiptRequested <Boolean?>]: 
  [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
    [Id <String>]: Read-only.
    [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
    [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
    [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
    [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
    [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
    [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
    [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
  [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String[]>]: A collection of property values.
  [ParentFolderId <String>]: 
  [ReceivedDateTime <DateTime?>]: 
  [ReplyTo <IMicrosoftGraphRecipient[]>]: 
  [Sender <IMicrosoftGraphRecipient>]: recipient
  [SentDateTime <DateTime?>]: 
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String>]: A property value.
  [Subject <String>]: 
  [ToRecipients <IMicrosoftGraphRecipient[]>]: 
  [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
  [UnsubscribeData <String[]>]: 
  [UnsubscribeEnabled <Boolean?>]: 
  [WebLink <String>]: 

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

USERCONFIGURATIONS <IMicrosoftGraphUserConfiguration[]>: .
  [Id <String>]: Read-only.
  [BinaryData <Byte[]>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfolderchildfolder
#>
function New-MgUserMailFolderChildFolder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1]
    # mailFolder
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
    [System.Int32]
    # The number of immediate child mailFolders in the current mailFolder.
    ${ChildFolderCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1[]]
    # The collection of child folders in the mailFolder.
    # To construct, see NOTES section for CHILDFOLDERS properties and create a hash table.
    ${ChildFolders},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The mailFolder's display name.
    ${DisplayName},

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
    # Indicates whether the mailFolder is hidden.
    # This property can be set only when creating the folder.
    # Find more information in Hidden mail folders.
    ${IsHidden},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule[]]
    # The collection of rules that apply to the user's Inbox folder.
    # To construct, see NOTES section for MESSAGERULES properties and create a hash table.
    ${MessageRules},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1[]]
    # The collection of messages in the mailFolder.
    # To construct, see NOTES section for MESSAGES properties and create a hash table.
    ${Messages},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The unique identifier for the mailFolder's parent mailFolder.
    ${ParentFolderId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder.
    ${TotalItemCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder marked as unread.
    ${UnreadItemCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration[]]
    # .
    # To construct, see NOTES section for USERCONFIGURATIONS properties and create a hash table.
    ${UserConfigurations},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The well-known folder name for the folder.
    # The possible values are listed above.
    # This property is only set for default folders created by Outlook.
    # For other folders, this property is null.
    ${WellKnownName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderChildFolder_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderChildFolder_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderChildFolder_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderChildFolder_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The fileAttachment and itemAttachment attachments for the message.
.Description
The fileAttachment and itemAttachment attachments for the message.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAttachment>: attachment
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ContentType <String>]: The MIME type.
  [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Name <String>]: The attachment's file name.
  [Size <Int32?>]: The length of the attachment in bytes.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfoldermessageattachment
#>
function New-MgUserMailFolderMessageAttachment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment]
    # attachment
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
    # The MIME type.
    ${ContentType},

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
    # true if the attachment is an inline attachment; otherwise, false.
    ${IsInline},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The attachment's file name.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The length of the attachment in bytes.
    ${Size},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageAttachment_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageAttachment_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageAttachment_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageAttachment_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of open extensions defined for the message.
Nullable.
.Description
The collection of open extensions defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfoldermessageextension
#>
function New-MgUserMailFolderMessageExtension {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension]))]
    [System.Collections.Hashtable]
    # extension
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageExtension_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageExtension_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageExtension_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageExtension_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.
.Description
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMention>: mention
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
  [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
  [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.
  [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
  [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
  [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
  [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
  [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.

CREATEDBY <IMicrosoftGraphEmailAddress>: emailAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <String>]: The email address of the person or entity.
  [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

MENTIONED <IMicrosoftGraphEmailAddress>: emailAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <String>]: The email address of the person or entity.
  [Name <String>]: The display name of the person or entity.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfoldermessagemention
#>
function New-MgUserMailFolderMessageMention {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention]
    # mention
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
    # The name of the application where the mention is created.
    # Optional.
    # Not used and defaulted as null for message.
    ${Application},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A unique identifier that represents a parent of the resource instance.
    # Optional.
    # Not used and defaulted as null for message.
    ${ClientReference},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress]
    # emailAddress
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time that the mention is created on the client.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A deep web link to the context of the mention in the resource instance.
    # Optional.
    # Not used and defaulted as null for message.
    ${DeepLink},

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
    # Optional.
    # Not used and defaulted as null for message.
    # To get the mentions in a message, see the bodyPreview property of the message instead.
    ${MentionText},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress]
    # emailAddress
    # To construct, see NOTES section for MENTIONED properties and create a hash table.
    ${Mentioned},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time that the mention is created on the server.
    # Optional.
    # Not used and defaulted as null for message.
    ${ServerCreatedDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMention_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMention_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMention_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMention_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the message.
Nullable.
.Description
The collection of multi-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMultiValueLegacyExtendedProperty>: multiValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfoldermessagemultivalueextendedproperty
#>
function New-MgUserMailFolderMessageMultiValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
    [System.String[]]
    # A collection of property values.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMultiValueExtendedProperty_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMultiValueExtendedProperty_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMultiValueExtendedProperty_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMultiValueExtendedProperty_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of rules that apply to the user's Inbox folder.
.Description
The collection of rules that apply to the user's Inbox folder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACTIONS <IMicrosoftGraphMessageRuleActions>: messageRuleActions
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignCategories <String[]>]: A list of categories to be assigned to a message.
  [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
  [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
  [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
  [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
  [MarkImportance <String>]: importance
  [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
  [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
  [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
  [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.

BODYPARAMETER <IMicrosoftGraphMessageRule>: messageRule
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignCategories <String[]>]: A list of categories to be assigned to a message.
    [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
    [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
    [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
      [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Address <String>]: The email address of the person or entity.
        [Name <String>]: The display name of the person or entity.
    [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
    [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
    [MarkImportance <String>]: importance
    [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
    [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
    [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
    [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
  [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
    [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
    [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
    [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
    [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
    [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
    [Importance <String>]: importance
    [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
    [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
    [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
    [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
    [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
    [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
    [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
    [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
    [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
    [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
    [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
    [MessageActionFlag <String>]: messageActionFlag
    [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
    [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
    [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
    [Sensitivity <String>]: sensitivity
    [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
    [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
    [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
    [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
    [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
      [(Any) <Object>]: This indicates any property can be added to this object.
      [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
      [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
  [DisplayName <String>]: The display name of the rule.
  [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
  [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
  [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
  [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
  [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.

CONDITIONS <IMicrosoftGraphMessageRulePredicates>: messageRulePredicates
  [(Any) <Object>]: This indicates any property can be added to this object.
  [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
  [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
  [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
  [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
  [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
  [Importance <String>]: importance
  [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
  [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
  [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
  [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
  [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
  [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
  [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
  [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
  [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
  [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
  [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
  [MessageActionFlag <String>]: messageActionFlag
  [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
  [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
  [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
  [Sensitivity <String>]: sensitivity
  [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
  [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
  [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
  [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
  [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
  [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
  [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.

EXCEPTIONS <IMicrosoftGraphMessageRulePredicates>: messageRulePredicates
  [(Any) <Object>]: This indicates any property can be added to this object.
  [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
  [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
  [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
  [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
  [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
  [Importance <String>]: importance
  [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
  [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
  [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
  [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
  [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
  [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
  [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
  [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
  [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
  [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
  [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
  [MessageActionFlag <String>]: messageActionFlag
  [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
  [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
  [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
  [Sensitivity <String>]: sensitivity
  [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
  [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
  [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
  [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
  [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
  [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
  [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfoldermessagerule
#>
function New-MgUserMailFolderMessageRule {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule]
    # messageRule
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRuleActions]
    # messageRuleActions
    # To construct, see NOTES section for ACTIONS properties and create a hash table.
    ${Actions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRulePredicates]
    # messageRulePredicates
    # To construct, see NOTES section for CONDITIONS properties and create a hash table.
    ${Conditions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the rule.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRulePredicates]
    # messageRulePredicates
    # To construct, see NOTES section for EXCEPTIONS properties and create a hash table.
    ${Exceptions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the rule is in an error condition.
    # Read-only.
    ${HasError},

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
    # Indicates whether the rule is enabled to be applied to messages.
    ${IsEnabled},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    ${IsReadOnly},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Indicates the order in which the rule is executed, among other rules.
    ${Sequence},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageRule_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageRule_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageRule_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageRule_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the message.
Nullable.
.Description
The collection of single-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSingleValueLegacyExtendedProperty>: singleValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfoldermessagesinglevalueextendedproperty
#>
function New-MgUserMailFolderMessageSingleValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty]
    # singleValueLegacyExtendedProperty
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
    [System.String]
    # A property value.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageSingleValueExtendedProperty_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageSingleValueExtendedProperty_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageSingleValueExtendedProperty_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageSingleValueExtendedProperty_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of messages in the mailFolder.
.Description
The collection of messages in the mailFolder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ATTACHMENTS <IMicrosoftGraphAttachment[]>: The fileAttachment and itemAttachment attachments for the message.
  [Id <String>]: Read-only.
  [ContentType <String>]: The MIME type.
  [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Name <String>]: The attachment's file name.
  [Size <Int32?>]: The length of the attachment in bytes.

BCCRECIPIENTS <IMicrosoftGraphRecipient[]>: The Bcc: recipients for the message.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

BODY <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType

BODYPARAMETER <IMicrosoftGraphMessage1>: message
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Categories <String[]>]: The categories associated with the item
  [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
  [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Id <String>]: Read-only.
  [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
    [Id <String>]: Read-only.
    [ContentType <String>]: The MIME type.
    [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Name <String>]: The attachment's file name.
    [Size <Int32?>]: The length of the attachment in bytes.
  [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [Body <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
  [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
  [ConversationId <String>]: The ID of the conversation the email belongs to.
  [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
  [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
    [Id <String>]: Read-only.
  [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
      [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
    [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [FlagStatus <String>]: followupFlagStatus
    [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [From <IMicrosoftGraphRecipient>]: recipient
  [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
  [Importance <String>]: importance
  [InferenceClassification <String>]: inferenceClassificationType
  [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
    [Name <String>]: Represents the key in a key-value pair.
    [Value <String>]: The value in a key-value pair.
  [InternetMessageId <String>]: 
  [IsDeliveryReceiptRequested <Boolean?>]: 
  [IsDraft <Boolean?>]: 
  [IsRead <Boolean?>]: 
  [IsReadReceiptRequested <Boolean?>]: 
  [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
    [Id <String>]: Read-only.
    [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
    [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
    [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
    [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
    [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
    [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
    [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
  [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String[]>]: A collection of property values.
  [ParentFolderId <String>]: 
  [ReceivedDateTime <DateTime?>]: 
  [ReplyTo <IMicrosoftGraphRecipient[]>]: 
  [Sender <IMicrosoftGraphRecipient>]: recipient
  [SentDateTime <DateTime?>]: 
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String>]: A property value.
  [Subject <String>]: 
  [ToRecipients <IMicrosoftGraphRecipient[]>]: 
  [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
  [UnsubscribeData <String[]>]: 
  [UnsubscribeEnabled <Boolean?>]: 
  [WebLink <String>]: 

CCRECIPIENTS <IMicrosoftGraphRecipient[]>: The Cc: recipients for the message.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

EXTENSIONS <IMicrosoftGraphExtension[]>: The collection of open extensions defined for the message. Nullable.
  [Id <String>]: Read-only.

FLAG <IMicrosoftGraphFollowupFlag>: followupFlag
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [FlagStatus <String>]: followupFlagStatus
  [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

FROM <IMicrosoftGraphRecipient>: recipient
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

INTERNETMESSAGEHEADERS <IMicrosoftGraphInternetMessageHeader[]>: .
  [Name <String>]: Represents the key in a key-value pair.
  [Value <String>]: The value in a key-value pair.

MENTIONS <IMicrosoftGraphMention[]>: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
  [Id <String>]: Read-only.
  [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
  [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
  [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.
  [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
  [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
  [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
  [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
  [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.

MENTIONSPREVIEW <IMicrosoftGraphMentionsPreview>: mentionsPreview
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the message. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

REPLYTO <IMicrosoftGraphRecipient[]>: .
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

SENDER <IMicrosoftGraphRecipient>: recipient
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the message. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

TORECIPIENTS <IMicrosoftGraphRecipient[]>: .
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

UNIQUEBODY <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfoldermessage
#>
function New-MgUserMailFolderMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment[]]
    # The fileAttachment and itemAttachment attachments for the message.
    # To construct, see NOTES section for ATTACHMENTS properties and create a hash table.
    ${Attachments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Bcc: recipients for the message.
    # To construct, see NOTES section for BCCRECIPIENTS properties and create a hash table.
    ${BccRecipients},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first 255 characters of the message body.
    # It is in text format.
    ${BodyPreview},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The categories associated with the item
    ${Categories},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Cc: recipients for the message.
    # To construct, see NOTES section for CCRECIPIENTS properties and create a hash table.
    ${CcRecipients},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifies the version of the item.
    # Every time the item is changed, changeKey changes as well.
    # This allows Exchange to apply changes to the correct version of the object.
    # Read-only.
    ${ChangeKey},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the conversation the email belongs to.
    ${ConversationId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for ConversationIndex (Indicates the position of the message within the conversation.)
    ${ConversationIndexInputFile},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension[]]
    # The collection of open extensions defined for the message.
    # Nullable.
    # To construct, see NOTES section for EXTENSIONS properties and create a hash table.
    ${Extensions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFollowupFlag]
    # followupFlag
    # To construct, see NOTES section for FLAG properties and create a hash table.
    ${Flag},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for FROM properties and create a hash table.
    ${From},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the message has attachments.
    # This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false.
    # To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    ${HasAttachments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # importance
    ${Importance},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # inferenceClassificationType
    ${InferenceClassification},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInternetMessageHeader[]]
    # .
    # To construct, see NOTES section for INTERNETMESSAGEHEADERS properties and create a hash table.
    ${InternetMessageHeaders},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${InternetMessageId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDeliveryReceiptRequested},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDraft},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsRead},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsReadReceiptRequested},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention[]]
    # A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
    # By default, a GET /messages does not return this property unless you apply $expand on the property.
    # To construct, see NOTES section for MENTIONS properties and create a hash table.
    ${Mentions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMentionsPreview]
    # mentionsPreview
    # To construct, see NOTES section for MENTIONSPREVIEW properties and create a hash table.
    ${MentionsPreview},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ParentFolderId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ReceivedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for REPLYTO properties and create a hash table.
    ${ReplyTo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for SENDER properties and create a hash table.
    ${Sender},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${SentDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for UNIQUEBODY properties and create a hash table.
    ${UniqueBody},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${UnsubscribeData},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${UnsubscribeEnabled},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${WebLink},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessage_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessage_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessage_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessage_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the mailFolder.
Read-only.
Nullable.
.Description
The collection of multi-value extended properties defined for the mailFolder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMultiValueLegacyExtendedProperty>: multiValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfoldermultivalueextendedproperty
#>
function New-MgUserMailFolderMultiValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
    [System.String[]]
    # A collection of property values.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMultiValueExtendedProperty_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMultiValueExtendedProperty_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMultiValueExtendedProperty_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMultiValueExtendedProperty_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the mailFolder.
Read-only.
Nullable.
.Description
The collection of single-value extended properties defined for the mailFolder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSingleValueLegacyExtendedProperty>: singleValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfoldersinglevalueextendedproperty
#>
function New-MgUserMailFolderSingleValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty]
    # singleValueLegacyExtendedProperty
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
    [System.String]
    # A property value.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderSingleValueExtendedProperty_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderSingleValueExtendedProperty_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderSingleValueExtendedProperty_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderSingleValueExtendedProperty_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create new navigation property to userConfigurations for users
.Description
Create new navigation property to userConfigurations for users

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphUserConfiguration>: userConfiguration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [BinaryData <Byte[]>]: 

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfolderuserconfiguration
#>
function New-MgUserMailFolderUserConfiguration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration]
    # userConfiguration
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
    # Input File for BinaryData (.)
    ${BinaryDataInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderUserConfiguration_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderUserConfiguration_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderUserConfiguration_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderUserConfiguration_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The user's mail folders.
Read-only.
Nullable.
.Description
The user's mail folders.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMailFolder1>: mailFolder
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder1[]>]: The collection of child folders in the mailFolder.
  [DisplayName <String>]: The mailFolder's display name.
  [IsHidden <Boolean?>]: Indicates whether the mailFolder is hidden. This property can be set only when creating the folder. Find more information in Hidden mail folders.
  [MessageRules <IMicrosoftGraphMessageRule[]>]: The collection of rules that apply to the user's Inbox folder.
    [Id <String>]: Read-only.
    [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignCategories <String[]>]: A list of categories to be assigned to a message.
      [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
      [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
      [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
        [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Address <String>]: The email address of the person or entity.
          [Name <String>]: The display name of the person or entity.
      [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
      [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
      [MarkImportance <String>]: importance
      [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
      [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
      [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
      [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
    [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
      [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
      [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
      [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
      [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
      [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
      [Importance <String>]: importance
      [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
      [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
      [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
      [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
      [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
      [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
      [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
      [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
      [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
      [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
      [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
      [MessageActionFlag <String>]: messageActionFlag
      [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
      [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
      [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
      [Sensitivity <String>]: sensitivity
      [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
      [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
      [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
      [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
      [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
        [(Any) <Object>]: This indicates any property can be added to this object.
        [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
        [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [DisplayName <String>]: The display name of the rule.
    [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
    [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
    [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.
  [Messages <IMicrosoftGraphMessage1[]>]: The collection of messages in the mailFolder.
    [Categories <String[]>]: The categories associated with the item
    [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
    [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Id <String>]: Read-only.
    [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
      [Id <String>]: Read-only.
      [ContentType <String>]: The MIME type.
      [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
      [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Name <String>]: The attachment's file name.
      [Size <Int32?>]: The length of the attachment in bytes.
    [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [Body <IMicrosoftGraphItemBody>]: itemBody
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Content <String>]: The content of the item.
      [ContentType <String>]: bodyType
    [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
    [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
    [ConversationId <String>]: The ID of the conversation the email belongs to.
    [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
    [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
      [Id <String>]: Read-only.
    [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
      [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [FlagStatus <String>]: followupFlagStatus
      [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [From <IMicrosoftGraphRecipient>]: recipient
    [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    [Importance <String>]: importance
    [InferenceClassification <String>]: inferenceClassificationType
    [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
      [Name <String>]: Represents the key in a key-value pair.
      [Value <String>]: The value in a key-value pair.
    [InternetMessageId <String>]: 
    [IsDeliveryReceiptRequested <Boolean?>]: 
    [IsDraft <Boolean?>]: 
    [IsRead <Boolean?>]: 
    [IsReadReceiptRequested <Boolean?>]: 
    [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
      [Id <String>]: Read-only.
      [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
      [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
      [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
      [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
      [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
      [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
      [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
      [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
    [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
      [(Any) <Object>]: This indicates any property can be added to this object.
      [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
    [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String[]>]: A collection of property values.
    [ParentFolderId <String>]: 
    [ReceivedDateTime <DateTime?>]: 
    [ReplyTo <IMicrosoftGraphRecipient[]>]: 
    [Sender <IMicrosoftGraphRecipient>]: recipient
    [SentDateTime <DateTime?>]: 
    [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String>]: A property value.
    [Subject <String>]: 
    [ToRecipients <IMicrosoftGraphRecipient[]>]: 
    [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
    [UnsubscribeData <String[]>]: 
    [UnsubscribeEnabled <Boolean?>]: 
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.
  [UserConfigurations <IMicrosoftGraphUserConfiguration[]>]: 
    [Id <String>]: Read-only.
    [BinaryData <Byte[]>]: 
  [WellKnownName <String>]: The well-known folder name for the folder. The possible values are listed above. This property is only set for default folders created by Outlook. For other folders, this property is null.

CHILDFOLDERS <IMicrosoftGraphMailFolder1[]>: The collection of child folders in the mailFolder.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder1[]>]: The collection of child folders in the mailFolder.
  [DisplayName <String>]: The mailFolder's display name.
  [IsHidden <Boolean?>]: Indicates whether the mailFolder is hidden. This property can be set only when creating the folder. Find more information in Hidden mail folders.
  [MessageRules <IMicrosoftGraphMessageRule[]>]: The collection of rules that apply to the user's Inbox folder.
    [Id <String>]: Read-only.
    [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignCategories <String[]>]: A list of categories to be assigned to a message.
      [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
      [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
      [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
        [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Address <String>]: The email address of the person or entity.
          [Name <String>]: The display name of the person or entity.
      [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
      [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
      [MarkImportance <String>]: importance
      [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
      [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
      [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
      [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
    [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
      [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
      [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
      [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
      [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
      [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
      [Importance <String>]: importance
      [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
      [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
      [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
      [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
      [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
      [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
      [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
      [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
      [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
      [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
      [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
      [MessageActionFlag <String>]: messageActionFlag
      [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
      [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
      [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
      [Sensitivity <String>]: sensitivity
      [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
      [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
      [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
      [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
      [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
        [(Any) <Object>]: This indicates any property can be added to this object.
        [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
        [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [DisplayName <String>]: The display name of the rule.
    [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
    [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
    [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.
  [Messages <IMicrosoftGraphMessage1[]>]: The collection of messages in the mailFolder.
    [Categories <String[]>]: The categories associated with the item
    [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
    [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Id <String>]: Read-only.
    [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
      [Id <String>]: Read-only.
      [ContentType <String>]: The MIME type.
      [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
      [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Name <String>]: The attachment's file name.
      [Size <Int32?>]: The length of the attachment in bytes.
    [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [Body <IMicrosoftGraphItemBody>]: itemBody
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Content <String>]: The content of the item.
      [ContentType <String>]: bodyType
    [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
    [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
    [ConversationId <String>]: The ID of the conversation the email belongs to.
    [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
    [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
      [Id <String>]: Read-only.
    [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
      [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [FlagStatus <String>]: followupFlagStatus
      [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [From <IMicrosoftGraphRecipient>]: recipient
    [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    [Importance <String>]: importance
    [InferenceClassification <String>]: inferenceClassificationType
    [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
      [Name <String>]: Represents the key in a key-value pair.
      [Value <String>]: The value in a key-value pair.
    [InternetMessageId <String>]: 
    [IsDeliveryReceiptRequested <Boolean?>]: 
    [IsDraft <Boolean?>]: 
    [IsRead <Boolean?>]: 
    [IsReadReceiptRequested <Boolean?>]: 
    [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
      [Id <String>]: Read-only.
      [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
      [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
      [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
      [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
      [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
      [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
      [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
      [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
    [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
      [(Any) <Object>]: This indicates any property can be added to this object.
      [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
    [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String[]>]: A collection of property values.
    [ParentFolderId <String>]: 
    [ReceivedDateTime <DateTime?>]: 
    [ReplyTo <IMicrosoftGraphRecipient[]>]: 
    [Sender <IMicrosoftGraphRecipient>]: recipient
    [SentDateTime <DateTime?>]: 
    [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String>]: A property value.
    [Subject <String>]: 
    [ToRecipients <IMicrosoftGraphRecipient[]>]: 
    [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
    [UnsubscribeData <String[]>]: 
    [UnsubscribeEnabled <Boolean?>]: 
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.
  [UserConfigurations <IMicrosoftGraphUserConfiguration[]>]: 
    [Id <String>]: Read-only.
    [BinaryData <Byte[]>]: 
  [WellKnownName <String>]: The well-known folder name for the folder. The possible values are listed above. This property is only set for default folders created by Outlook. For other folders, this property is null.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

MESSAGERULES <IMicrosoftGraphMessageRule[]>: The collection of rules that apply to the user's Inbox folder.
  [Id <String>]: Read-only.
  [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignCategories <String[]>]: A list of categories to be assigned to a message.
    [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
    [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
    [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
      [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Address <String>]: The email address of the person or entity.
        [Name <String>]: The display name of the person or entity.
    [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
    [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
    [MarkImportance <String>]: importance
    [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
    [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
    [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
    [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
  [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
    [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
    [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
    [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
    [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
    [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
    [Importance <String>]: importance
    [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
    [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
    [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
    [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
    [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
    [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
    [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
    [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
    [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
    [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
    [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
    [MessageActionFlag <String>]: messageActionFlag
    [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
    [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
    [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
    [Sensitivity <String>]: sensitivity
    [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
    [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
    [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
    [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
    [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
      [(Any) <Object>]: This indicates any property can be added to this object.
      [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
      [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
  [DisplayName <String>]: The display name of the rule.
  [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
  [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
  [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
  [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
  [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.

MESSAGES <IMicrosoftGraphMessage1[]>: The collection of messages in the mailFolder.
  [Categories <String[]>]: The categories associated with the item
  [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
  [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Id <String>]: Read-only.
  [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
    [Id <String>]: Read-only.
    [ContentType <String>]: The MIME type.
    [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Name <String>]: The attachment's file name.
    [Size <Int32?>]: The length of the attachment in bytes.
  [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [Body <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
  [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
  [ConversationId <String>]: The ID of the conversation the email belongs to.
  [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
  [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
    [Id <String>]: Read-only.
  [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
      [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
    [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [FlagStatus <String>]: followupFlagStatus
    [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [From <IMicrosoftGraphRecipient>]: recipient
  [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
  [Importance <String>]: importance
  [InferenceClassification <String>]: inferenceClassificationType
  [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
    [Name <String>]: Represents the key in a key-value pair.
    [Value <String>]: The value in a key-value pair.
  [InternetMessageId <String>]: 
  [IsDeliveryReceiptRequested <Boolean?>]: 
  [IsDraft <Boolean?>]: 
  [IsRead <Boolean?>]: 
  [IsReadReceiptRequested <Boolean?>]: 
  [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
    [Id <String>]: Read-only.
    [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
    [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
    [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
    [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
    [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
    [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
    [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
  [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String[]>]: A collection of property values.
  [ParentFolderId <String>]: 
  [ReceivedDateTime <DateTime?>]: 
  [ReplyTo <IMicrosoftGraphRecipient[]>]: 
  [Sender <IMicrosoftGraphRecipient>]: recipient
  [SentDateTime <DateTime?>]: 
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String>]: A property value.
  [Subject <String>]: 
  [ToRecipients <IMicrosoftGraphRecipient[]>]: 
  [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
  [UnsubscribeData <String[]>]: 
  [UnsubscribeEnabled <Boolean?>]: 
  [WebLink <String>]: 

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

USERCONFIGURATIONS <IMicrosoftGraphUserConfiguration[]>: .
  [Id <String>]: Read-only.
  [BinaryData <Byte[]>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfolder
#>
function New-MgUserMailFolder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1])]
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
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1]
    # mailFolder
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
    [System.Int32]
    # The number of immediate child mailFolders in the current mailFolder.
    ${ChildFolderCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1[]]
    # The collection of child folders in the mailFolder.
    # To construct, see NOTES section for CHILDFOLDERS properties and create a hash table.
    ${ChildFolders},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The mailFolder's display name.
    ${DisplayName},

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
    # Indicates whether the mailFolder is hidden.
    # This property can be set only when creating the folder.
    # Find more information in Hidden mail folders.
    ${IsHidden},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule[]]
    # The collection of rules that apply to the user's Inbox folder.
    # To construct, see NOTES section for MESSAGERULES properties and create a hash table.
    ${MessageRules},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1[]]
    # The collection of messages in the mailFolder.
    # To construct, see NOTES section for MESSAGES properties and create a hash table.
    ${Messages},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The unique identifier for the mailFolder's parent mailFolder.
    ${ParentFolderId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder.
    ${TotalItemCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder marked as unread.
    ${UnreadItemCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration[]]
    # .
    # To construct, see NOTES section for USERCONFIGURATIONS properties and create a hash table.
    ${UserConfigurations},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The well-known folder name for the folder.
    # The possible values are listed above.
    # This property is only set for default folders created by Outlook.
    # For other folders, this property is null.
    ${WellKnownName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolder_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolder_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolder_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMailFolder_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The fileAttachment and itemAttachment attachments for the message.
.Description
The fileAttachment and itemAttachment attachments for the message.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAttachment>: attachment
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ContentType <String>]: The MIME type.
  [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Name <String>]: The attachment's file name.
  [Size <Int32?>]: The length of the attachment in bytes.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermessageattachment
#>
function New-MgUserMessageAttachment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment]
    # attachment
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
    # The MIME type.
    ${ContentType},

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
    # true if the attachment is an inline attachment; otherwise, false.
    ${IsInline},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The attachment's file name.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The length of the attachment in bytes.
    ${Size},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageAttachment_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageAttachment_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageAttachment_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageAttachment_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of open extensions defined for the message.
Nullable.
.Description
The collection of open extensions defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.String
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermessageextension
#>
function New-MgUserMessageExtension {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension]))]
    [System.Collections.Hashtable]
    # extension
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageExtension_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageExtension_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageExtension_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageExtension_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.
.Description
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMention>: mention
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
  [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
  [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.
  [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
  [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
  [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
  [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
  [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.

CREATEDBY <IMicrosoftGraphEmailAddress>: emailAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <String>]: The email address of the person or entity.
  [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

MENTIONED <IMicrosoftGraphEmailAddress>: emailAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <String>]: The email address of the person or entity.
  [Name <String>]: The display name of the person or entity.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermessagemention
#>
function New-MgUserMessageMention {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention]
    # mention
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
    # The name of the application where the mention is created.
    # Optional.
    # Not used and defaulted as null for message.
    ${Application},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A unique identifier that represents a parent of the resource instance.
    # Optional.
    # Not used and defaulted as null for message.
    ${ClientReference},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress]
    # emailAddress
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time that the mention is created on the client.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A deep web link to the context of the mention in the resource instance.
    # Optional.
    # Not used and defaulted as null for message.
    ${DeepLink},

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
    # Optional.
    # Not used and defaulted as null for message.
    # To get the mentions in a message, see the bodyPreview property of the message instead.
    ${MentionText},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress]
    # emailAddress
    # To construct, see NOTES section for MENTIONED properties and create a hash table.
    ${Mentioned},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time that the mention is created on the server.
    # Optional.
    # Not used and defaulted as null for message.
    ${ServerCreatedDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMessageMention_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessageMention_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMessageMention_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessageMention_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the message.
Nullable.
.Description
The collection of multi-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMultiValueLegacyExtendedProperty>: multiValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermessagemultivalueextendedproperty
#>
function New-MgUserMessageMultiValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
    [System.String[]]
    # A collection of property values.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageMultiValueExtendedProperty_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageMultiValueExtendedProperty_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageMultiValueExtendedProperty_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageMultiValueExtendedProperty_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the message.
Nullable.
.Description
The collection of single-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSingleValueLegacyExtendedProperty>: singleValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermessagesinglevalueextendedproperty
#>
function New-MgUserMessageSingleValueExtendedProperty {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty]
    # singleValueLegacyExtendedProperty
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
    [System.String]
    # A property value.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageSingleValueExtendedProperty_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageSingleValueExtendedProperty_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageSingleValueExtendedProperty_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMessageSingleValueExtendedProperty_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The messages in a mailbox or folder.
Read-only.
Nullable.
.Description
The messages in a mailbox or folder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ATTACHMENTS <IMicrosoftGraphAttachment[]>: The fileAttachment and itemAttachment attachments for the message.
  [Id <String>]: Read-only.
  [ContentType <String>]: The MIME type.
  [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Name <String>]: The attachment's file name.
  [Size <Int32?>]: The length of the attachment in bytes.

BCCRECIPIENTS <IMicrosoftGraphRecipient[]>: The Bcc: recipients for the message.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

BODY <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType

BODYPARAMETER <IMicrosoftGraphMessage1>: message
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Categories <String[]>]: The categories associated with the item
  [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
  [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Id <String>]: Read-only.
  [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
    [Id <String>]: Read-only.
    [ContentType <String>]: The MIME type.
    [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Name <String>]: The attachment's file name.
    [Size <Int32?>]: The length of the attachment in bytes.
  [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [Body <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
  [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
  [ConversationId <String>]: The ID of the conversation the email belongs to.
  [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
  [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
    [Id <String>]: Read-only.
  [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
      [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
    [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [FlagStatus <String>]: followupFlagStatus
    [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [From <IMicrosoftGraphRecipient>]: recipient
  [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
  [Importance <String>]: importance
  [InferenceClassification <String>]: inferenceClassificationType
  [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
    [Name <String>]: Represents the key in a key-value pair.
    [Value <String>]: The value in a key-value pair.
  [InternetMessageId <String>]: 
  [IsDeliveryReceiptRequested <Boolean?>]: 
  [IsDraft <Boolean?>]: 
  [IsRead <Boolean?>]: 
  [IsReadReceiptRequested <Boolean?>]: 
  [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
    [Id <String>]: Read-only.
    [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
    [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
    [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
    [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
    [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
    [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
    [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
  [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String[]>]: A collection of property values.
  [ParentFolderId <String>]: 
  [ReceivedDateTime <DateTime?>]: 
  [ReplyTo <IMicrosoftGraphRecipient[]>]: 
  [Sender <IMicrosoftGraphRecipient>]: recipient
  [SentDateTime <DateTime?>]: 
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String>]: A property value.
  [Subject <String>]: 
  [ToRecipients <IMicrosoftGraphRecipient[]>]: 
  [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
  [UnsubscribeData <String[]>]: 
  [UnsubscribeEnabled <Boolean?>]: 
  [WebLink <String>]: 

CCRECIPIENTS <IMicrosoftGraphRecipient[]>: The Cc: recipients for the message.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

EXTENSIONS <IMicrosoftGraphExtension[]>: The collection of open extensions defined for the message. Nullable.
  [Id <String>]: Read-only.

FLAG <IMicrosoftGraphFollowupFlag>: followupFlag
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [FlagStatus <String>]: followupFlagStatus
  [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

FROM <IMicrosoftGraphRecipient>: recipient
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

INTERNETMESSAGEHEADERS <IMicrosoftGraphInternetMessageHeader[]>: .
  [Name <String>]: Represents the key in a key-value pair.
  [Value <String>]: The value in a key-value pair.

MENTIONS <IMicrosoftGraphMention[]>: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
  [Id <String>]: Read-only.
  [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
  [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
  [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.
  [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
  [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
  [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
  [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
  [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.

MENTIONSPREVIEW <IMicrosoftGraphMentionsPreview>: mentionsPreview
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the message. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

REPLYTO <IMicrosoftGraphRecipient[]>: .
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

SENDER <IMicrosoftGraphRecipient>: recipient
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the message. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

TORECIPIENTS <IMicrosoftGraphRecipient[]>: .
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

UNIQUEBODY <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermessage
#>
function New-MgUserMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
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
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment[]]
    # The fileAttachment and itemAttachment attachments for the message.
    # To construct, see NOTES section for ATTACHMENTS properties and create a hash table.
    ${Attachments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Bcc: recipients for the message.
    # To construct, see NOTES section for BCCRECIPIENTS properties and create a hash table.
    ${BccRecipients},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first 255 characters of the message body.
    # It is in text format.
    ${BodyPreview},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The categories associated with the item
    ${Categories},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Cc: recipients for the message.
    # To construct, see NOTES section for CCRECIPIENTS properties and create a hash table.
    ${CcRecipients},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifies the version of the item.
    # Every time the item is changed, changeKey changes as well.
    # This allows Exchange to apply changes to the correct version of the object.
    # Read-only.
    ${ChangeKey},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the conversation the email belongs to.
    ${ConversationId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for ConversationIndex (Indicates the position of the message within the conversation.)
    ${ConversationIndexInputFile},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension[]]
    # The collection of open extensions defined for the message.
    # Nullable.
    # To construct, see NOTES section for EXTENSIONS properties and create a hash table.
    ${Extensions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFollowupFlag]
    # followupFlag
    # To construct, see NOTES section for FLAG properties and create a hash table.
    ${Flag},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for FROM properties and create a hash table.
    ${From},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the message has attachments.
    # This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false.
    # To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    ${HasAttachments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # importance
    ${Importance},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # inferenceClassificationType
    ${InferenceClassification},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInternetMessageHeader[]]
    # .
    # To construct, see NOTES section for INTERNETMESSAGEHEADERS properties and create a hash table.
    ${InternetMessageHeaders},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${InternetMessageId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDeliveryReceiptRequested},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDraft},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsRead},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsReadReceiptRequested},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention[]]
    # A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
    # By default, a GET /messages does not return this property unless you apply $expand on the property.
    # To construct, see NOTES section for MENTIONS properties and create a hash table.
    ${Mentions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMentionsPreview]
    # mentionsPreview
    # To construct, see NOTES section for MENTIONSPREVIEW properties and create a hash table.
    ${MentionsPreview},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ParentFolderId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ReceivedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for REPLYTO properties and create a hash table.
    ${ReplyTo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for SENDER properties and create a hash table.
    ${Sender},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${SentDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for UNIQUEBODY properties and create a hash table.
    ${UniqueBody},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${UnsubscribeData},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${UnsubscribeEnabled},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${WebLink},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.Mail.private\New-MgUserMessage_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMessage_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Mail.private\New-MgUserMessage_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\New-MgUserMessage_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other.
Read-only.
Nullable.
.Description
A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mguserinferenceclassificationoverride
#>
function Remove-MgUserInferenceClassificationOverride {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of inferenceClassificationOverride
    ${InferenceClassificationOverrideId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserInferenceClassificationOverride_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserInferenceClassificationOverride_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.
.Description
Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mguserinferenceclassification
#>
function Remove-MgUserInferenceClassification {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserInferenceClassification_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserInferenceClassification_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of child folders in the mailFolder.
.Description
The collection of child folders in the mailFolder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfolderchildfolder
#>
function Remove-MgUserMailFolderChildFolder {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderChildFolder_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderChildFolder_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The fileAttachment and itemAttachment attachments for the message.
.Description
The fileAttachment and itemAttachment attachments for the message.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfoldermessageattachment
#>
function Remove-MgUserMailFolderMessageAttachment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageAttachment_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageAttachment_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of open extensions defined for the message.
Nullable.
.Description
The collection of open extensions defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfoldermessageextension
#>
function Remove-MgUserMailFolderMessageExtension {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageExtension_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageExtension_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.
.Description
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfoldermessagemention
#>
function Remove-MgUserMailFolderMessageMention {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mention
    ${MentionId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageMention_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageMention_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the message.
Nullable.
.Description
The collection of multi-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfoldermessagemultivalueextendedproperty
#>
function Remove-MgUserMailFolderMessageMultiValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageMultiValueExtendedProperty_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageMultiValueExtendedProperty_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of rules that apply to the user's Inbox folder.
.Description
The collection of rules that apply to the user's Inbox folder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfoldermessagerule
#>
function Remove-MgUserMailFolderMessageRule {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of messageRule
    ${MessageRuleId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageRule_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageRule_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the message.
Nullable.
.Description
The collection of single-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfoldermessagesinglevalueextendedproperty
#>
function Remove-MgUserMailFolderMessageSingleValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageSingleValueExtendedProperty_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageSingleValueExtendedProperty_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of messages in the mailFolder.
.Description
The collection of messages in the mailFolder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfoldermessage
#>
function Remove-MgUserMailFolderMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessage_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessage_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the mailFolder.
Read-only.
Nullable.
.Description
The collection of multi-value extended properties defined for the mailFolder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfoldermultivalueextendedproperty
#>
function Remove-MgUserMailFolderMultiValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMultiValueExtendedProperty_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMultiValueExtendedProperty_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the mailFolder.
Read-only.
Nullable.
.Description
The collection of single-value extended properties defined for the mailFolder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfoldersinglevalueextendedproperty
#>
function Remove-MgUserMailFolderSingleValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderSingleValueExtendedProperty_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderSingleValueExtendedProperty_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Delete navigation property userConfigurations for users
.Description
Delete navigation property userConfigurations for users

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfolderuserconfiguration
#>
function Remove-MgUserMailFolderUserConfiguration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userConfiguration
    ${UserConfigurationId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderUserConfiguration_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderUserConfiguration_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The user's mail folders.
Read-only.
Nullable.
.Description
The user's mail folders.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermailfolder
#>
function Remove-MgUserMailFolder {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolder_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolder_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The fileAttachment and itemAttachment attachments for the message.
.Description
The fileAttachment and itemAttachment attachments for the message.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermessageattachment
#>
function Remove-MgUserMessageAttachment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageAttachment_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageAttachment_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of open extensions defined for the message.
Nullable.
.Description
The collection of open extensions defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermessageextension
#>
function Remove-MgUserMessageExtension {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageExtension_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageExtension_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.
.Description
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermessagemention
#>
function Remove-MgUserMessageMention {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mention
    ${MentionId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageMention_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageMention_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the message.
Nullable.
.Description
The collection of multi-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermessagemultivalueextendedproperty
#>
function Remove-MgUserMessageMultiValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageMultiValueExtendedProperty_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageMultiValueExtendedProperty_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the message.
Nullable.
.Description
The collection of single-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermessagesinglevalueextendedproperty
#>
function Remove-MgUserMessageSingleValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageSingleValueExtendedProperty_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageSingleValueExtendedProperty_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The messages in a mailbox or folder.
Read-only.
Nullable.
.Description
The messages in a mailbox or folder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/remove-mgusermessage
#>
function Remove-MgUserMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMessage_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMessage_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update media content for the navigation property messages in users
.Description
Update media content for the navigation property messages in users

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/set-mgusermailfoldermessagecontent
#>
function Set-MgUserMailFolderMessageContent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Set1 = 'Microsoft.Graph.Mail.private\Set-MgUserMailFolderMessageContent_Set1';
            SetViaIdentity1 = 'Microsoft.Graph.Mail.private\Set-MgUserMailFolderMessageContent_SetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update media content for the navigation property messages in users
.Description
Update media content for the navigation property messages in users

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/set-mgusermessagecontent
#>
function Set-MgUserMessageContent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
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
            Set1 = 'Microsoft.Graph.Mail.private\Set-MgUserMessageContent_Set1';
            SetViaIdentity1 = 'Microsoft.Graph.Mail.private\Set-MgUserMessageContent_SetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other.
Read-only.
Nullable.
.Description
A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphInferenceClassificationOverride>: inferenceClassificationOverride
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ClassifyAs <String>]: inferenceClassificationType
  [SenderEmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

SENDEREMAILADDRESS <IMicrosoftGraphEmailAddress>: emailAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <String>]: The email address of the person or entity.
  [Name <String>]: The display name of the person or entity.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mguserinferenceclassificationoverride
#>
function Update-MgUserInferenceClassificationOverride {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of inferenceClassificationOverride
    ${InferenceClassificationOverrideId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride]
    # inferenceClassificationOverride
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
    # inferenceClassificationType
    ${ClassifyAs},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress]
    # emailAddress
    # To construct, see NOTES section for SENDEREMAILADDRESS properties and create a hash table.
    ${SenderEmailAddress},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassificationOverride_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassificationOverride_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassificationOverride_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassificationOverride_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.
.Description
Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassification
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphInferenceClassification>: inferenceClassification
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Overrides <IMicrosoftGraphInferenceClassificationOverride[]>]: A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other. Read-only. Nullable.
    [Id <String>]: Read-only.
    [ClassifyAs <String>]: inferenceClassificationType
    [SenderEmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

OVERRIDES <IMicrosoftGraphInferenceClassificationOverride[]>: A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other. Read-only. Nullable.
  [Id <String>]: Read-only.
  [ClassifyAs <String>]: inferenceClassificationType
  [SenderEmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mguserinferenceclassification
#>
function Update-MgUserInferenceClassification {
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
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassification]
    # inferenceClassification
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride[]]
    # A set of overrides for a user to always classify messages from specific senders in certain ways: focused, or other.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for OVERRIDES properties and create a hash table.
    ${Overrides},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassification_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassification_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassification_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassification_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of child folders in the mailFolder.
.Description
The collection of child folders in the mailFolder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMailFolder1>: mailFolder
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder1[]>]: The collection of child folders in the mailFolder.
  [DisplayName <String>]: The mailFolder's display name.
  [IsHidden <Boolean?>]: Indicates whether the mailFolder is hidden. This property can be set only when creating the folder. Find more information in Hidden mail folders.
  [MessageRules <IMicrosoftGraphMessageRule[]>]: The collection of rules that apply to the user's Inbox folder.
    [Id <String>]: Read-only.
    [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignCategories <String[]>]: A list of categories to be assigned to a message.
      [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
      [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
      [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
        [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Address <String>]: The email address of the person or entity.
          [Name <String>]: The display name of the person or entity.
      [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
      [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
      [MarkImportance <String>]: importance
      [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
      [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
      [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
      [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
    [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
      [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
      [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
      [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
      [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
      [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
      [Importance <String>]: importance
      [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
      [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
      [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
      [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
      [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
      [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
      [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
      [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
      [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
      [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
      [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
      [MessageActionFlag <String>]: messageActionFlag
      [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
      [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
      [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
      [Sensitivity <String>]: sensitivity
      [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
      [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
      [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
      [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
      [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
        [(Any) <Object>]: This indicates any property can be added to this object.
        [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
        [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [DisplayName <String>]: The display name of the rule.
    [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
    [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
    [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.
  [Messages <IMicrosoftGraphMessage1[]>]: The collection of messages in the mailFolder.
    [Categories <String[]>]: The categories associated with the item
    [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
    [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Id <String>]: Read-only.
    [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
      [Id <String>]: Read-only.
      [ContentType <String>]: The MIME type.
      [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
      [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Name <String>]: The attachment's file name.
      [Size <Int32?>]: The length of the attachment in bytes.
    [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [Body <IMicrosoftGraphItemBody>]: itemBody
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Content <String>]: The content of the item.
      [ContentType <String>]: bodyType
    [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
    [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
    [ConversationId <String>]: The ID of the conversation the email belongs to.
    [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
    [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
      [Id <String>]: Read-only.
    [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
      [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [FlagStatus <String>]: followupFlagStatus
      [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [From <IMicrosoftGraphRecipient>]: recipient
    [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    [Importance <String>]: importance
    [InferenceClassification <String>]: inferenceClassificationType
    [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
      [Name <String>]: Represents the key in a key-value pair.
      [Value <String>]: The value in a key-value pair.
    [InternetMessageId <String>]: 
    [IsDeliveryReceiptRequested <Boolean?>]: 
    [IsDraft <Boolean?>]: 
    [IsRead <Boolean?>]: 
    [IsReadReceiptRequested <Boolean?>]: 
    [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
      [Id <String>]: Read-only.
      [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
      [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
      [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
      [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
      [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
      [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
      [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
      [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
    [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
      [(Any) <Object>]: This indicates any property can be added to this object.
      [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
    [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String[]>]: A collection of property values.
    [ParentFolderId <String>]: 
    [ReceivedDateTime <DateTime?>]: 
    [ReplyTo <IMicrosoftGraphRecipient[]>]: 
    [Sender <IMicrosoftGraphRecipient>]: recipient
    [SentDateTime <DateTime?>]: 
    [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String>]: A property value.
    [Subject <String>]: 
    [ToRecipients <IMicrosoftGraphRecipient[]>]: 
    [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
    [UnsubscribeData <String[]>]: 
    [UnsubscribeEnabled <Boolean?>]: 
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.
  [UserConfigurations <IMicrosoftGraphUserConfiguration[]>]: 
    [Id <String>]: Read-only.
    [BinaryData <Byte[]>]: 
  [WellKnownName <String>]: The well-known folder name for the folder. The possible values are listed above. This property is only set for default folders created by Outlook. For other folders, this property is null.

CHILDFOLDERS <IMicrosoftGraphMailFolder1[]>: The collection of child folders in the mailFolder.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder1[]>]: The collection of child folders in the mailFolder.
  [DisplayName <String>]: The mailFolder's display name.
  [IsHidden <Boolean?>]: Indicates whether the mailFolder is hidden. This property can be set only when creating the folder. Find more information in Hidden mail folders.
  [MessageRules <IMicrosoftGraphMessageRule[]>]: The collection of rules that apply to the user's Inbox folder.
    [Id <String>]: Read-only.
    [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignCategories <String[]>]: A list of categories to be assigned to a message.
      [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
      [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
      [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
        [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Address <String>]: The email address of the person or entity.
          [Name <String>]: The display name of the person or entity.
      [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
      [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
      [MarkImportance <String>]: importance
      [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
      [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
      [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
      [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
    [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
      [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
      [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
      [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
      [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
      [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
      [Importance <String>]: importance
      [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
      [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
      [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
      [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
      [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
      [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
      [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
      [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
      [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
      [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
      [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
      [MessageActionFlag <String>]: messageActionFlag
      [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
      [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
      [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
      [Sensitivity <String>]: sensitivity
      [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
      [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
      [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
      [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
      [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
        [(Any) <Object>]: This indicates any property can be added to this object.
        [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
        [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [DisplayName <String>]: The display name of the rule.
    [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
    [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
    [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.
  [Messages <IMicrosoftGraphMessage1[]>]: The collection of messages in the mailFolder.
    [Categories <String[]>]: The categories associated with the item
    [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
    [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Id <String>]: Read-only.
    [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
      [Id <String>]: Read-only.
      [ContentType <String>]: The MIME type.
      [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
      [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Name <String>]: The attachment's file name.
      [Size <Int32?>]: The length of the attachment in bytes.
    [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [Body <IMicrosoftGraphItemBody>]: itemBody
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Content <String>]: The content of the item.
      [ContentType <String>]: bodyType
    [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
    [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
    [ConversationId <String>]: The ID of the conversation the email belongs to.
    [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
    [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
      [Id <String>]: Read-only.
    [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
      [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [FlagStatus <String>]: followupFlagStatus
      [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [From <IMicrosoftGraphRecipient>]: recipient
    [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    [Importance <String>]: importance
    [InferenceClassification <String>]: inferenceClassificationType
    [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
      [Name <String>]: Represents the key in a key-value pair.
      [Value <String>]: The value in a key-value pair.
    [InternetMessageId <String>]: 
    [IsDeliveryReceiptRequested <Boolean?>]: 
    [IsDraft <Boolean?>]: 
    [IsRead <Boolean?>]: 
    [IsReadReceiptRequested <Boolean?>]: 
    [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
      [Id <String>]: Read-only.
      [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
      [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
      [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
      [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
      [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
      [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
      [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
      [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
    [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
      [(Any) <Object>]: This indicates any property can be added to this object.
      [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
    [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String[]>]: A collection of property values.
    [ParentFolderId <String>]: 
    [ReceivedDateTime <DateTime?>]: 
    [ReplyTo <IMicrosoftGraphRecipient[]>]: 
    [Sender <IMicrosoftGraphRecipient>]: recipient
    [SentDateTime <DateTime?>]: 
    [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String>]: A property value.
    [Subject <String>]: 
    [ToRecipients <IMicrosoftGraphRecipient[]>]: 
    [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
    [UnsubscribeData <String[]>]: 
    [UnsubscribeEnabled <Boolean?>]: 
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.
  [UserConfigurations <IMicrosoftGraphUserConfiguration[]>]: 
    [Id <String>]: Read-only.
    [BinaryData <Byte[]>]: 
  [WellKnownName <String>]: The well-known folder name for the folder. The possible values are listed above. This property is only set for default folders created by Outlook. For other folders, this property is null.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

MESSAGERULES <IMicrosoftGraphMessageRule[]>: The collection of rules that apply to the user's Inbox folder.
  [Id <String>]: Read-only.
  [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignCategories <String[]>]: A list of categories to be assigned to a message.
    [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
    [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
    [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
      [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Address <String>]: The email address of the person or entity.
        [Name <String>]: The display name of the person or entity.
    [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
    [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
    [MarkImportance <String>]: importance
    [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
    [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
    [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
    [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
  [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
    [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
    [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
    [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
    [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
    [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
    [Importance <String>]: importance
    [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
    [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
    [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
    [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
    [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
    [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
    [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
    [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
    [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
    [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
    [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
    [MessageActionFlag <String>]: messageActionFlag
    [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
    [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
    [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
    [Sensitivity <String>]: sensitivity
    [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
    [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
    [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
    [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
    [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
      [(Any) <Object>]: This indicates any property can be added to this object.
      [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
      [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
  [DisplayName <String>]: The display name of the rule.
  [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
  [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
  [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
  [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
  [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.

MESSAGES <IMicrosoftGraphMessage1[]>: The collection of messages in the mailFolder.
  [Categories <String[]>]: The categories associated with the item
  [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
  [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Id <String>]: Read-only.
  [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
    [Id <String>]: Read-only.
    [ContentType <String>]: The MIME type.
    [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Name <String>]: The attachment's file name.
    [Size <Int32?>]: The length of the attachment in bytes.
  [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [Body <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
  [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
  [ConversationId <String>]: The ID of the conversation the email belongs to.
  [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
  [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
    [Id <String>]: Read-only.
  [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
      [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
    [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [FlagStatus <String>]: followupFlagStatus
    [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [From <IMicrosoftGraphRecipient>]: recipient
  [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
  [Importance <String>]: importance
  [InferenceClassification <String>]: inferenceClassificationType
  [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
    [Name <String>]: Represents the key in a key-value pair.
    [Value <String>]: The value in a key-value pair.
  [InternetMessageId <String>]: 
  [IsDeliveryReceiptRequested <Boolean?>]: 
  [IsDraft <Boolean?>]: 
  [IsRead <Boolean?>]: 
  [IsReadReceiptRequested <Boolean?>]: 
  [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
    [Id <String>]: Read-only.
    [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
    [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
    [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
    [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
    [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
    [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
    [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
  [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String[]>]: A collection of property values.
  [ParentFolderId <String>]: 
  [ReceivedDateTime <DateTime?>]: 
  [ReplyTo <IMicrosoftGraphRecipient[]>]: 
  [Sender <IMicrosoftGraphRecipient>]: recipient
  [SentDateTime <DateTime?>]: 
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String>]: A property value.
  [Subject <String>]: 
  [ToRecipients <IMicrosoftGraphRecipient[]>]: 
  [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
  [UnsubscribeData <String[]>]: 
  [UnsubscribeEnabled <Boolean?>]: 
  [WebLink <String>]: 

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

USERCONFIGURATIONS <IMicrosoftGraphUserConfiguration[]>: .
  [Id <String>]: Read-only.
  [BinaryData <Byte[]>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfolderchildfolder
#>
function Update-MgUserMailFolderChildFolder {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1]
    # mailFolder
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
    [System.Int32]
    # The number of immediate child mailFolders in the current mailFolder.
    ${ChildFolderCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1[]]
    # The collection of child folders in the mailFolder.
    # To construct, see NOTES section for CHILDFOLDERS properties and create a hash table.
    ${ChildFolders},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The mailFolder's display name.
    ${DisplayName},

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
    # Indicates whether the mailFolder is hidden.
    # This property can be set only when creating the folder.
    # Find more information in Hidden mail folders.
    ${IsHidden},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule[]]
    # The collection of rules that apply to the user's Inbox folder.
    # To construct, see NOTES section for MESSAGERULES properties and create a hash table.
    ${MessageRules},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1[]]
    # The collection of messages in the mailFolder.
    # To construct, see NOTES section for MESSAGES properties and create a hash table.
    ${Messages},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The unique identifier for the mailFolder's parent mailFolder.
    ${ParentFolderId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder.
    ${TotalItemCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder marked as unread.
    ${UnreadItemCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration[]]
    # .
    # To construct, see NOTES section for USERCONFIGURATIONS properties and create a hash table.
    ${UserConfigurations},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The well-known folder name for the folder.
    # The possible values are listed above.
    # This property is only set for default folders created by Outlook.
    # For other folders, this property is null.
    ${WellKnownName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderChildFolder_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderChildFolder_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderChildFolder_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderChildFolder_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The fileAttachment and itemAttachment attachments for the message.
.Description
The fileAttachment and itemAttachment attachments for the message.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAttachment>: attachment
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ContentType <String>]: The MIME type.
  [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Name <String>]: The attachment's file name.
  [Size <Int32?>]: The length of the attachment in bytes.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfoldermessageattachment
#>
function Update-MgUserMailFolderMessageAttachment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment]
    # attachment
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
    # The MIME type.
    ${ContentType},

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
    # true if the attachment is an inline attachment; otherwise, false.
    ${IsInline},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The attachment's file name.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The length of the attachment in bytes.
    ${Size},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageAttachment_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageAttachment_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageAttachment_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageAttachment_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of open extensions defined for the message.
Nullable.
.Description
The collection of open extensions defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfoldermessageextension
#>
function Update-MgUserMailFolderMessageExtension {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension]))]
    [System.Collections.Hashtable]
    # extension
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageExtension_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageExtension_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageExtension_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageExtension_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.
.Description
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMention>: mention
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
  [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
  [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.
  [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
  [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
  [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
  [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
  [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.

CREATEDBY <IMicrosoftGraphEmailAddress>: emailAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <String>]: The email address of the person or entity.
  [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

MENTIONED <IMicrosoftGraphEmailAddress>: emailAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <String>]: The email address of the person or entity.
  [Name <String>]: The display name of the person or entity.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfoldermessagemention
#>
function Update-MgUserMailFolderMessageMention {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mention
    ${MentionId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention]
    # mention
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
    # The name of the application where the mention is created.
    # Optional.
    # Not used and defaulted as null for message.
    ${Application},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A unique identifier that represents a parent of the resource instance.
    # Optional.
    # Not used and defaulted as null for message.
    ${ClientReference},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress]
    # emailAddress
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time that the mention is created on the client.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A deep web link to the context of the mention in the resource instance.
    # Optional.
    # Not used and defaulted as null for message.
    ${DeepLink},

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
    # Optional.
    # Not used and defaulted as null for message.
    # To get the mentions in a message, see the bodyPreview property of the message instead.
    ${MentionText},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress]
    # emailAddress
    # To construct, see NOTES section for MENTIONED properties and create a hash table.
    ${Mentioned},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time that the mention is created on the server.
    # Optional.
    # Not used and defaulted as null for message.
    ${ServerCreatedDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMention_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMention_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMention_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMention_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the message.
Nullable.
.Description
The collection of multi-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMultiValueLegacyExtendedProperty>: multiValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfoldermessagemultivalueextendedproperty
#>
function Update-MgUserMailFolderMessageMultiValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
    [System.String[]]
    # A collection of property values.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMultiValueExtendedProperty_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMultiValueExtendedProperty_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMultiValueExtendedProperty_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMultiValueExtendedProperty_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of rules that apply to the user's Inbox folder.
.Description
The collection of rules that apply to the user's Inbox folder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACTIONS <IMicrosoftGraphMessageRuleActions>: messageRuleActions
  [(Any) <Object>]: This indicates any property can be added to this object.
  [AssignCategories <String[]>]: A list of categories to be assigned to a message.
  [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
  [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
  [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
  [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
  [MarkImportance <String>]: importance
  [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
  [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
  [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
  [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.

BODYPARAMETER <IMicrosoftGraphMessageRule>: messageRule
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignCategories <String[]>]: A list of categories to be assigned to a message.
    [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
    [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
    [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
      [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Address <String>]: The email address of the person or entity.
        [Name <String>]: The display name of the person or entity.
    [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
    [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
    [MarkImportance <String>]: importance
    [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
    [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
    [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
    [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
  [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
    [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
    [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
    [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
    [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
    [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
    [Importance <String>]: importance
    [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
    [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
    [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
    [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
    [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
    [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
    [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
    [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
    [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
    [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
    [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
    [MessageActionFlag <String>]: messageActionFlag
    [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
    [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
    [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
    [Sensitivity <String>]: sensitivity
    [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
    [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
    [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
    [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
    [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
      [(Any) <Object>]: This indicates any property can be added to this object.
      [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
      [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
  [DisplayName <String>]: The display name of the rule.
  [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
  [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
  [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
  [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
  [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.

CONDITIONS <IMicrosoftGraphMessageRulePredicates>: messageRulePredicates
  [(Any) <Object>]: This indicates any property can be added to this object.
  [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
  [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
  [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
  [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
  [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
  [Importance <String>]: importance
  [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
  [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
  [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
  [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
  [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
  [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
  [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
  [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
  [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
  [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
  [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
  [MessageActionFlag <String>]: messageActionFlag
  [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
  [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
  [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
  [Sensitivity <String>]: sensitivity
  [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
  [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
  [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
  [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
  [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
  [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
  [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.

EXCEPTIONS <IMicrosoftGraphMessageRulePredicates>: messageRulePredicates
  [(Any) <Object>]: This indicates any property can be added to this object.
  [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
  [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
  [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
  [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
  [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
  [Importance <String>]: importance
  [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
  [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
  [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
  [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
  [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
  [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
  [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
  [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
  [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
  [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
  [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
  [MessageActionFlag <String>]: messageActionFlag
  [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
  [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
  [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
  [Sensitivity <String>]: sensitivity
  [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
  [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
  [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
  [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
  [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
  [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
  [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
    [(Any) <Object>]: This indicates any property can be added to this object.
    [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfoldermessagerule
#>
function Update-MgUserMailFolderMessageRule {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of messageRule
    ${MessageRuleId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule]
    # messageRule
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRuleActions]
    # messageRuleActions
    # To construct, see NOTES section for ACTIONS properties and create a hash table.
    ${Actions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRulePredicates]
    # messageRulePredicates
    # To construct, see NOTES section for CONDITIONS properties and create a hash table.
    ${Conditions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the rule.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRulePredicates]
    # messageRulePredicates
    # To construct, see NOTES section for EXCEPTIONS properties and create a hash table.
    ${Exceptions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the rule is in an error condition.
    # Read-only.
    ${HasError},

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
    # Indicates whether the rule is enabled to be applied to messages.
    ${IsEnabled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    ${IsReadOnly},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Indicates the order in which the rule is executed, among other rules.
    ${Sequence},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageRule_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageRule_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageRule_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageRule_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the message.
Nullable.
.Description
The collection of single-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSingleValueLegacyExtendedProperty>: singleValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfoldermessagesinglevalueextendedproperty
#>
function Update-MgUserMailFolderMessageSingleValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty]
    # singleValueLegacyExtendedProperty
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
    [System.String]
    # A property value.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageSingleValueExtendedProperty_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageSingleValueExtendedProperty_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageSingleValueExtendedProperty_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageSingleValueExtendedProperty_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of messages in the mailFolder.
.Description
The collection of messages in the mailFolder.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ATTACHMENTS <IMicrosoftGraphAttachment[]>: The fileAttachment and itemAttachment attachments for the message.
  [Id <String>]: Read-only.
  [ContentType <String>]: The MIME type.
  [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Name <String>]: The attachment's file name.
  [Size <Int32?>]: The length of the attachment in bytes.

BCCRECIPIENTS <IMicrosoftGraphRecipient[]>: The Bcc: recipients for the message.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

BODY <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType

BODYPARAMETER <IMicrosoftGraphMessage1>: message
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Categories <String[]>]: The categories associated with the item
  [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
  [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Id <String>]: Read-only.
  [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
    [Id <String>]: Read-only.
    [ContentType <String>]: The MIME type.
    [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Name <String>]: The attachment's file name.
    [Size <Int32?>]: The length of the attachment in bytes.
  [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [Body <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
  [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
  [ConversationId <String>]: The ID of the conversation the email belongs to.
  [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
  [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
    [Id <String>]: Read-only.
  [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
      [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
    [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [FlagStatus <String>]: followupFlagStatus
    [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [From <IMicrosoftGraphRecipient>]: recipient
  [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
  [Importance <String>]: importance
  [InferenceClassification <String>]: inferenceClassificationType
  [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
    [Name <String>]: Represents the key in a key-value pair.
    [Value <String>]: The value in a key-value pair.
  [InternetMessageId <String>]: 
  [IsDeliveryReceiptRequested <Boolean?>]: 
  [IsDraft <Boolean?>]: 
  [IsRead <Boolean?>]: 
  [IsReadReceiptRequested <Boolean?>]: 
  [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
    [Id <String>]: Read-only.
    [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
    [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
    [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
    [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
    [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
    [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
    [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
  [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String[]>]: A collection of property values.
  [ParentFolderId <String>]: 
  [ReceivedDateTime <DateTime?>]: 
  [ReplyTo <IMicrosoftGraphRecipient[]>]: 
  [Sender <IMicrosoftGraphRecipient>]: recipient
  [SentDateTime <DateTime?>]: 
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String>]: A property value.
  [Subject <String>]: 
  [ToRecipients <IMicrosoftGraphRecipient[]>]: 
  [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
  [UnsubscribeData <String[]>]: 
  [UnsubscribeEnabled <Boolean?>]: 
  [WebLink <String>]: 

CCRECIPIENTS <IMicrosoftGraphRecipient[]>: The Cc: recipients for the message.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

EXTENSIONS <IMicrosoftGraphExtension[]>: The collection of open extensions defined for the message. Nullable.
  [Id <String>]: Read-only.

FLAG <IMicrosoftGraphFollowupFlag>: followupFlag
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [FlagStatus <String>]: followupFlagStatus
  [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

FROM <IMicrosoftGraphRecipient>: recipient
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

INTERNETMESSAGEHEADERS <IMicrosoftGraphInternetMessageHeader[]>: .
  [Name <String>]: Represents the key in a key-value pair.
  [Value <String>]: The value in a key-value pair.

MENTIONS <IMicrosoftGraphMention[]>: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
  [Id <String>]: Read-only.
  [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
  [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
  [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.
  [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
  [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
  [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
  [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
  [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.

MENTIONSPREVIEW <IMicrosoftGraphMentionsPreview>: mentionsPreview
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the message. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

REPLYTO <IMicrosoftGraphRecipient[]>: .
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

SENDER <IMicrosoftGraphRecipient>: recipient
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the message. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

TORECIPIENTS <IMicrosoftGraphRecipient[]>: .
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

UNIQUEBODY <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfoldermessage
#>
function Update-MgUserMailFolderMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment[]]
    # The fileAttachment and itemAttachment attachments for the message.
    # To construct, see NOTES section for ATTACHMENTS properties and create a hash table.
    ${Attachments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Bcc: recipients for the message.
    # To construct, see NOTES section for BCCRECIPIENTS properties and create a hash table.
    ${BccRecipients},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first 255 characters of the message body.
    # It is in text format.
    ${BodyPreview},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The categories associated with the item
    ${Categories},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Cc: recipients for the message.
    # To construct, see NOTES section for CCRECIPIENTS properties and create a hash table.
    ${CcRecipients},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifies the version of the item.
    # Every time the item is changed, changeKey changes as well.
    # This allows Exchange to apply changes to the correct version of the object.
    # Read-only.
    ${ChangeKey},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the conversation the email belongs to.
    ${ConversationId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for ConversationIndex (Indicates the position of the message within the conversation.)
    ${ConversationIndexInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension[]]
    # The collection of open extensions defined for the message.
    # Nullable.
    # To construct, see NOTES section for EXTENSIONS properties and create a hash table.
    ${Extensions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFollowupFlag]
    # followupFlag
    # To construct, see NOTES section for FLAG properties and create a hash table.
    ${Flag},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for FROM properties and create a hash table.
    ${From},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the message has attachments.
    # This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false.
    # To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    ${HasAttachments},

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
    # importance
    ${Importance},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # inferenceClassificationType
    ${InferenceClassification},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInternetMessageHeader[]]
    # .
    # To construct, see NOTES section for INTERNETMESSAGEHEADERS properties and create a hash table.
    ${InternetMessageHeaders},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${InternetMessageId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDeliveryReceiptRequested},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDraft},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsRead},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsReadReceiptRequested},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention[]]
    # A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
    # By default, a GET /messages does not return this property unless you apply $expand on the property.
    # To construct, see NOTES section for MENTIONS properties and create a hash table.
    ${Mentions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMentionsPreview]
    # mentionsPreview
    # To construct, see NOTES section for MENTIONSPREVIEW properties and create a hash table.
    ${MentionsPreview},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ParentFolderId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ReceivedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for REPLYTO properties and create a hash table.
    ${ReplyTo},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for SENDER properties and create a hash table.
    ${Sender},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${SentDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for UNIQUEBODY properties and create a hash table.
    ${UniqueBody},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${UnsubscribeData},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${UnsubscribeEnabled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${WebLink},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessage_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessage_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessage_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessage_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the mailFolder.
Read-only.
Nullable.
.Description
The collection of multi-value extended properties defined for the mailFolder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMultiValueLegacyExtendedProperty>: multiValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfoldermultivalueextendedproperty
#>
function Update-MgUserMailFolderMultiValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
    [System.String[]]
    # A collection of property values.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMultiValueExtendedProperty_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMultiValueExtendedProperty_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMultiValueExtendedProperty_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMultiValueExtendedProperty_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the mailFolder.
Read-only.
Nullable.
.Description
The collection of single-value extended properties defined for the mailFolder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSingleValueLegacyExtendedProperty>: singleValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfoldersinglevalueextendedproperty
#>
function Update-MgUserMailFolderSingleValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty]
    # singleValueLegacyExtendedProperty
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
    [System.String]
    # A property value.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderSingleValueExtendedProperty_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderSingleValueExtendedProperty_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderSingleValueExtendedProperty_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderSingleValueExtendedProperty_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update the navigation property userConfigurations in users
.Description
Update the navigation property userConfigurations in users

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphUserConfiguration>: userConfiguration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [BinaryData <Byte[]>]: 

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfolderuserconfiguration
#>
function Update-MgUserMailFolderUserConfiguration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userConfiguration
    ${UserConfigurationId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration]
    # userConfiguration
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
    # Input File for BinaryData (.)
    ${BinaryDataInputFile},

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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderUserConfiguration_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderUserConfiguration_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderUserConfiguration_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderUserConfiguration_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The user's mail folders.
Read-only.
Nullable.
.Description
The user's mail folders.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMailFolder1>: mailFolder
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder1[]>]: The collection of child folders in the mailFolder.
  [DisplayName <String>]: The mailFolder's display name.
  [IsHidden <Boolean?>]: Indicates whether the mailFolder is hidden. This property can be set only when creating the folder. Find more information in Hidden mail folders.
  [MessageRules <IMicrosoftGraphMessageRule[]>]: The collection of rules that apply to the user's Inbox folder.
    [Id <String>]: Read-only.
    [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignCategories <String[]>]: A list of categories to be assigned to a message.
      [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
      [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
      [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
        [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Address <String>]: The email address of the person or entity.
          [Name <String>]: The display name of the person or entity.
      [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
      [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
      [MarkImportance <String>]: importance
      [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
      [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
      [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
      [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
    [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
      [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
      [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
      [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
      [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
      [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
      [Importance <String>]: importance
      [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
      [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
      [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
      [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
      [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
      [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
      [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
      [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
      [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
      [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
      [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
      [MessageActionFlag <String>]: messageActionFlag
      [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
      [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
      [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
      [Sensitivity <String>]: sensitivity
      [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
      [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
      [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
      [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
      [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
        [(Any) <Object>]: This indicates any property can be added to this object.
        [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
        [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [DisplayName <String>]: The display name of the rule.
    [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
    [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
    [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.
  [Messages <IMicrosoftGraphMessage1[]>]: The collection of messages in the mailFolder.
    [Categories <String[]>]: The categories associated with the item
    [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
    [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Id <String>]: Read-only.
    [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
      [Id <String>]: Read-only.
      [ContentType <String>]: The MIME type.
      [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
      [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Name <String>]: The attachment's file name.
      [Size <Int32?>]: The length of the attachment in bytes.
    [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [Body <IMicrosoftGraphItemBody>]: itemBody
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Content <String>]: The content of the item.
      [ContentType <String>]: bodyType
    [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
    [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
    [ConversationId <String>]: The ID of the conversation the email belongs to.
    [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
    [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
      [Id <String>]: Read-only.
    [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
      [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [FlagStatus <String>]: followupFlagStatus
      [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [From <IMicrosoftGraphRecipient>]: recipient
    [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    [Importance <String>]: importance
    [InferenceClassification <String>]: inferenceClassificationType
    [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
      [Name <String>]: Represents the key in a key-value pair.
      [Value <String>]: The value in a key-value pair.
    [InternetMessageId <String>]: 
    [IsDeliveryReceiptRequested <Boolean?>]: 
    [IsDraft <Boolean?>]: 
    [IsRead <Boolean?>]: 
    [IsReadReceiptRequested <Boolean?>]: 
    [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
      [Id <String>]: Read-only.
      [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
      [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
      [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
      [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
      [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
      [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
      [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
      [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
    [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
      [(Any) <Object>]: This indicates any property can be added to this object.
      [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
    [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String[]>]: A collection of property values.
    [ParentFolderId <String>]: 
    [ReceivedDateTime <DateTime?>]: 
    [ReplyTo <IMicrosoftGraphRecipient[]>]: 
    [Sender <IMicrosoftGraphRecipient>]: recipient
    [SentDateTime <DateTime?>]: 
    [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String>]: A property value.
    [Subject <String>]: 
    [ToRecipients <IMicrosoftGraphRecipient[]>]: 
    [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
    [UnsubscribeData <String[]>]: 
    [UnsubscribeEnabled <Boolean?>]: 
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.
  [UserConfigurations <IMicrosoftGraphUserConfiguration[]>]: 
    [Id <String>]: Read-only.
    [BinaryData <Byte[]>]: 
  [WellKnownName <String>]: The well-known folder name for the folder. The possible values are listed above. This property is only set for default folders created by Outlook. For other folders, this property is null.

CHILDFOLDERS <IMicrosoftGraphMailFolder1[]>: The collection of child folders in the mailFolder.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder1[]>]: The collection of child folders in the mailFolder.
  [DisplayName <String>]: The mailFolder's display name.
  [IsHidden <Boolean?>]: Indicates whether the mailFolder is hidden. This property can be set only when creating the folder. Find more information in Hidden mail folders.
  [MessageRules <IMicrosoftGraphMessageRule[]>]: The collection of rules that apply to the user's Inbox folder.
    [Id <String>]: Read-only.
    [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
      [(Any) <Object>]: This indicates any property can be added to this object.
      [AssignCategories <String[]>]: A list of categories to be assigned to a message.
      [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
      [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
      [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
        [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
          [(Any) <Object>]: This indicates any property can be added to this object.
          [Address <String>]: The email address of the person or entity.
          [Name <String>]: The display name of the person or entity.
      [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
      [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
      [MarkImportance <String>]: importance
      [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
      [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
      [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
      [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
    [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
      [(Any) <Object>]: This indicates any property can be added to this object.
      [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
      [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
      [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
      [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
      [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
      [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
      [Importance <String>]: importance
      [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
      [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
      [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
      [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
      [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
      [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
      [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
      [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
      [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
      [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
      [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
      [MessageActionFlag <String>]: messageActionFlag
      [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
      [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
      [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
      [Sensitivity <String>]: sensitivity
      [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
      [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
      [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
      [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
      [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
      [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
        [(Any) <Object>]: This indicates any property can be added to this object.
        [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
        [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
    [DisplayName <String>]: The display name of the rule.
    [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
    [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
    [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.
  [Messages <IMicrosoftGraphMessage1[]>]: The collection of messages in the mailFolder.
    [Categories <String[]>]: The categories associated with the item
    [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
    [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Id <String>]: Read-only.
    [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
      [Id <String>]: Read-only.
      [ContentType <String>]: The MIME type.
      [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
      [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
      [Name <String>]: The attachment's file name.
      [Size <Int32?>]: The length of the attachment in bytes.
    [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [Body <IMicrosoftGraphItemBody>]: itemBody
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Content <String>]: The content of the item.
      [ContentType <String>]: bodyType
    [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
    [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
    [ConversationId <String>]: The ID of the conversation the email belongs to.
    [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
    [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
      [Id <String>]: Read-only.
    [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
      [(Any) <Object>]: This indicates any property can be added to this object.
      [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
        [(Any) <Object>]: This indicates any property can be added to this object.
        [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
      [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [FlagStatus <String>]: followupFlagStatus
      [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [From <IMicrosoftGraphRecipient>]: recipient
    [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    [Importance <String>]: importance
    [InferenceClassification <String>]: inferenceClassificationType
    [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
      [Name <String>]: Represents the key in a key-value pair.
      [Value <String>]: The value in a key-value pair.
    [InternetMessageId <String>]: 
    [IsDeliveryReceiptRequested <Boolean?>]: 
    [IsDraft <Boolean?>]: 
    [IsRead <Boolean?>]: 
    [IsReadReceiptRequested <Boolean?>]: 
    [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
      [Id <String>]: Read-only.
      [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
      [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
      [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
      [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
      [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
      [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
      [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
      [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
    [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
      [(Any) <Object>]: This indicates any property can be added to this object.
      [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
    [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String[]>]: A collection of property values.
    [ParentFolderId <String>]: 
    [ReceivedDateTime <DateTime?>]: 
    [ReplyTo <IMicrosoftGraphRecipient[]>]: 
    [Sender <IMicrosoftGraphRecipient>]: recipient
    [SentDateTime <DateTime?>]: 
    [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
      [Id <String>]: Read-only.
      [Value <String>]: A property value.
    [Subject <String>]: 
    [ToRecipients <IMicrosoftGraphRecipient[]>]: 
    [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
    [UnsubscribeData <String[]>]: 
    [UnsubscribeEnabled <Boolean?>]: 
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.
  [UserConfigurations <IMicrosoftGraphUserConfiguration[]>]: 
    [Id <String>]: Read-only.
    [BinaryData <Byte[]>]: 
  [WellKnownName <String>]: The well-known folder name for the folder. The possible values are listed above. This property is only set for default folders created by Outlook. For other folders, this property is null.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

MESSAGERULES <IMicrosoftGraphMessageRule[]>: The collection of rules that apply to the user's Inbox folder.
  [Id <String>]: Read-only.
  [Actions <IMicrosoftGraphMessageRuleActions>]: messageRuleActions
    [(Any) <Object>]: This indicates any property can be added to this object.
    [AssignCategories <String[]>]: A list of categories to be assigned to a message.
    [CopyToFolder <String>]: The ID of a folder that a message is to be copied to.
    [Delete <Boolean?>]: Indicates whether a message should be moved to the Deleted Items folder.
    [ForwardAsAttachmentTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded as an attachment.
      [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
        [(Any) <Object>]: This indicates any property can be added to this object.
        [Address <String>]: The email address of the person or entity.
        [Name <String>]: The display name of the person or entity.
    [ForwardTo <IMicrosoftGraphRecipient[]>]: The email addresses of the recipients to which a message should be forwarded.
    [MarkAsRead <Boolean?>]: Indicates whether a message should be marked as read.
    [MarkImportance <String>]: importance
    [MoveToFolder <String>]: The ID of the folder that a message will be moved to.
    [PermanentDelete <Boolean?>]: Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder.
    [RedirectTo <IMicrosoftGraphRecipient[]>]: The email addresses to which a message should be redirected.
    [StopProcessingRules <Boolean?>]: Indicates whether subsequent rules should be evaluated.
  [Conditions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
    [(Any) <Object>]: This indicates any property can be added to this object.
    [BodyContains <String[]>]: Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply.
    [BodyOrSubjectContains <String[]>]: Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply.
    [Categories <String[]>]: Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply.
    [FromAddresses <IMicrosoftGraphRecipient[]>]: Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply.
    [HasAttachments <Boolean?>]: Indicates whether an incoming message must have attachments in order for the condition or exception to apply.
    [HeaderContains <String[]>]: Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply.
    [Importance <String>]: importance
    [IsApprovalRequest <Boolean?>]: Indicates whether an incoming message must be an approval request in order for the condition or exception to apply.
    [IsAutomaticForward <Boolean?>]: Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply.
    [IsAutomaticReply <Boolean?>]: Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply.
    [IsEncrypted <Boolean?>]: Indicates whether an incoming message must be encrypted in order for the condition or exception to apply.
    [IsMeetingRequest <Boolean?>]: Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply.
    [IsMeetingResponse <Boolean?>]: Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply.
    [IsNonDeliveryReport <Boolean?>]: Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply.
    [IsPermissionControlled <Boolean?>]: Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply.
    [IsReadReceipt <Boolean?>]: Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply.
    [IsSigned <Boolean?>]: Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply.
    [IsVoicemail <Boolean?>]: Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply.
    [MessageActionFlag <String>]: messageActionFlag
    [NotSentToMe <Boolean?>]: Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply.
    [RecipientContains <String[]>]: Represents the strings that appear in either the toRecipients or ccRecipients properties of an incoming message in order for the condition or exception to apply.
    [SenderContains <String[]>]: Represents the strings that appear in the from property of an incoming message in order for the condition or exception to apply.
    [Sensitivity <String>]: sensitivity
    [SentCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SentOnlyToMe <Boolean?>]: Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply.
    [SentToAddresses <IMicrosoftGraphRecipient[]>]: Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply.
    [SentToMe <Boolean?>]: Indicates whether the owner of the mailbox must be in the toRecipients property of an incoming message in order for the condition or exception to apply.
    [SentToOrCcMe <Boolean?>]: Indicates whether the owner of the mailbox must be in either a toRecipients or ccRecipients property of an incoming message in order for the condition or exception to apply.
    [SubjectContains <String[]>]: Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply.
    [WithinSizeRange <IMicrosoftGraphSizeRange>]: sizeRange
      [(Any) <Object>]: This indicates any property can be added to this object.
      [MaximumSize <Int32?>]: The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
      [MinimumSize <Int32?>]: The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply.
  [DisplayName <String>]: The display name of the rule.
  [Exceptions <IMicrosoftGraphMessageRulePredicates>]: messageRulePredicates
  [HasError <Boolean?>]: Indicates whether the rule is in an error condition. Read-only.
  [IsEnabled <Boolean?>]: Indicates whether the rule is enabled to be applied to messages.
  [IsReadOnly <Boolean?>]: Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
  [Sequence <Int32?>]: Indicates the order in which the rule is executed, among other rules.

MESSAGES <IMicrosoftGraphMessage1[]>: The collection of messages in the mailFolder.
  [Categories <String[]>]: The categories associated with the item
  [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
  [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Id <String>]: Read-only.
  [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
    [Id <String>]: Read-only.
    [ContentType <String>]: The MIME type.
    [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Name <String>]: The attachment's file name.
    [Size <Int32?>]: The length of the attachment in bytes.
  [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [Body <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
  [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
  [ConversationId <String>]: The ID of the conversation the email belongs to.
  [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
  [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
    [Id <String>]: Read-only.
  [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
      [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
    [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [FlagStatus <String>]: followupFlagStatus
    [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [From <IMicrosoftGraphRecipient>]: recipient
  [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
  [Importance <String>]: importance
  [InferenceClassification <String>]: inferenceClassificationType
  [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
    [Name <String>]: Represents the key in a key-value pair.
    [Value <String>]: The value in a key-value pair.
  [InternetMessageId <String>]: 
  [IsDeliveryReceiptRequested <Boolean?>]: 
  [IsDraft <Boolean?>]: 
  [IsRead <Boolean?>]: 
  [IsReadReceiptRequested <Boolean?>]: 
  [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
    [Id <String>]: Read-only.
    [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
    [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
    [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
    [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
    [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
    [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
    [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
  [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String[]>]: A collection of property values.
  [ParentFolderId <String>]: 
  [ReceivedDateTime <DateTime?>]: 
  [ReplyTo <IMicrosoftGraphRecipient[]>]: 
  [Sender <IMicrosoftGraphRecipient>]: recipient
  [SentDateTime <DateTime?>]: 
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String>]: A property value.
  [Subject <String>]: 
  [ToRecipients <IMicrosoftGraphRecipient[]>]: 
  [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
  [UnsubscribeData <String[]>]: 
  [UnsubscribeEnabled <Boolean?>]: 
  [WebLink <String>]: 

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

USERCONFIGURATIONS <IMicrosoftGraphUserConfiguration[]>: .
  [Id <String>]: Read-only.
  [BinaryData <Byte[]>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfolder
#>
function Update-MgUserMailFolder {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1]
    # mailFolder
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
    [System.Int32]
    # The number of immediate child mailFolders in the current mailFolder.
    ${ChildFolderCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1[]]
    # The collection of child folders in the mailFolder.
    # To construct, see NOTES section for CHILDFOLDERS properties and create a hash table.
    ${ChildFolders},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The mailFolder's display name.
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
    # Indicates whether the mailFolder is hidden.
    # This property can be set only when creating the folder.
    # Find more information in Hidden mail folders.
    ${IsHidden},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule[]]
    # The collection of rules that apply to the user's Inbox folder.
    # To construct, see NOTES section for MESSAGERULES properties and create a hash table.
    ${MessageRules},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1[]]
    # The collection of messages in the mailFolder.
    # To construct, see NOTES section for MESSAGES properties and create a hash table.
    ${Messages},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The unique identifier for the mailFolder's parent mailFolder.
    ${ParentFolderId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder.
    ${TotalItemCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder marked as unread.
    ${UnreadItemCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserConfiguration[]]
    # .
    # To construct, see NOTES section for USERCONFIGURATIONS properties and create a hash table.
    ${UserConfigurations},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The well-known folder name for the folder.
    # The possible values are listed above.
    # This property is only set for default folders created by Outlook.
    # For other folders, this property is null.
    ${WellKnownName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolder_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolder_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolder_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolder_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The fileAttachment and itemAttachment attachments for the message.
.Description
The fileAttachment and itemAttachment attachments for the message.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphAttachment>: attachment
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ContentType <String>]: The MIME type.
  [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Name <String>]: The attachment's file name.
  [Size <Int32?>]: The length of the attachment in bytes.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermessageattachment
#>
function Update-MgUserMessageAttachment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment]
    # attachment
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
    # The MIME type.
    ${ContentType},

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
    # true if the attachment is an inline attachment; otherwise, false.
    ${IsInline},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The attachment's file name.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The length of the attachment in bytes.
    ${Size},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageAttachment_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageAttachment_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageAttachment_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageAttachment_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of open extensions defined for the message.
Nullable.
.Description
The collection of open extensions defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermessageextension
#>
function Update-MgUserMessageExtension {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension]))]
    [System.Collections.Hashtable]
    # extension
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageExtension_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageExtension_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageExtension_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageExtension_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.
.Description
A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
By default, a GET /messages does not return this property unless you apply $expand on the property.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMention>: mention
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
  [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
  [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.
  [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
  [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
  [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
  [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
  [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.

CREATEDBY <IMicrosoftGraphEmailAddress>: emailAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <String>]: The email address of the person or entity.
  [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

MENTIONED <IMicrosoftGraphEmailAddress>: emailAddress
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Address <String>]: The email address of the person or entity.
  [Name <String>]: The display name of the person or entity.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermessagemention
#>
function Update-MgUserMessageMention {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mention
    ${MentionId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention]
    # mention
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
    # The name of the application where the mention is created.
    # Optional.
    # Not used and defaulted as null for message.
    ${Application},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A unique identifier that represents a parent of the resource instance.
    # Optional.
    # Not used and defaulted as null for message.
    ${ClientReference},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress]
    # emailAddress
    # To construct, see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time that the mention is created on the client.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A deep web link to the context of the mention in the resource instance.
    # Optional.
    # Not used and defaulted as null for message.
    ${DeepLink},

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
    # Optional.
    # Not used and defaulted as null for message.
    # To get the mentions in a message, see the bodyPreview property of the message instead.
    ${MentionText},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEmailAddress]
    # emailAddress
    # To construct, see NOTES section for MENTIONED properties and create a hash table.
    ${Mentioned},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time that the mention is created on the server.
    # Optional.
    # Not used and defaulted as null for message.
    ${ServerCreatedDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMention_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMention_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMention_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMention_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of multi-value extended properties defined for the message.
Nullable.
.Description
The collection of multi-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMultiValueLegacyExtendedProperty>: multiValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermessagemultivalueextendedproperty
#>
function Update-MgUserMessageMultiValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
    [System.String[]]
    # A collection of property values.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMultiValueExtendedProperty_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMultiValueExtendedProperty_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMultiValueExtendedProperty_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMultiValueExtendedProperty_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The collection of single-value extended properties defined for the message.
Nullable.
.Description
The collection of single-value extended properties defined for the message.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphSingleValueLegacyExtendedProperty>: singleValueLegacyExtendedProperty
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermessagesinglevalueextendedproperty
#>
function Update-MgUserMessageSingleValueExtendedProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty]
    # singleValueLegacyExtendedProperty
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
    # A property value.
    ${Value},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMessageSingleValueExtendedProperty_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessageSingleValueExtendedProperty_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMessageSingleValueExtendedProperty_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessageSingleValueExtendedProperty_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The messages in a mailbox or folder.
Read-only.
Nullable.
.Description
The messages in a mailbox or folder.
Read-only.
Nullable.

.Inputs
Microsoft.Graph.PowerShell.Models.IMailIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ATTACHMENTS <IMicrosoftGraphAttachment[]>: The fileAttachment and itemAttachment attachments for the message.
  [Id <String>]: Read-only.
  [ContentType <String>]: The MIME type.
  [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Name <String>]: The attachment's file name.
  [Size <Int32?>]: The length of the attachment in bytes.

BCCRECIPIENTS <IMicrosoftGraphRecipient[]>: The Bcc: recipients for the message.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

BODY <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType

BODYPARAMETER <IMicrosoftGraphMessage1>: message
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Categories <String[]>]: The categories associated with the item
  [ChangeKey <String>]: Identifies the version of the item. Every time the item is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
  [CreatedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
  [Id <String>]: Read-only.
  [Attachments <IMicrosoftGraphAttachment[]>]: The fileAttachment and itemAttachment attachments for the message.
    [Id <String>]: Read-only.
    [ContentType <String>]: The MIME type.
    [IsInline <Boolean?>]: true if the attachment is an inline attachment; otherwise, false.
    [LastModifiedDateTime <DateTime?>]: The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    [Name <String>]: The attachment's file name.
    [Size <Int32?>]: The length of the attachment in bytes.
  [BccRecipients <IMicrosoftGraphRecipient[]>]: The Bcc: recipients for the message.
    [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
      [(Any) <Object>]: This indicates any property can be added to this object.
      [Address <String>]: The email address of the person or entity.
      [Name <String>]: The display name of the person or entity.
  [Body <IMicrosoftGraphItemBody>]: itemBody
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Content <String>]: The content of the item.
    [ContentType <String>]: bodyType
  [BodyPreview <String>]: The first 255 characters of the message body. It is in text format.
  [CcRecipients <IMicrosoftGraphRecipient[]>]: The Cc: recipients for the message.
  [ConversationId <String>]: The ID of the conversation the email belongs to.
  [ConversationIndex <Byte[]>]: Indicates the position of the message within the conversation.
  [Extensions <IMicrosoftGraphExtension[]>]: The collection of open extensions defined for the message. Nullable.
    [Id <String>]: Read-only.
  [Flag <IMicrosoftGraphFollowupFlag>]: followupFlag
    [(Any) <Object>]: This indicates any property can be added to this object.
    [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
      [(Any) <Object>]: This indicates any property can be added to this object.
      [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
      [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
    [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [FlagStatus <String>]: followupFlagStatus
    [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [From <IMicrosoftGraphRecipient>]: recipient
  [HasAttachments <Boolean?>]: Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
  [Importance <String>]: importance
  [InferenceClassification <String>]: inferenceClassificationType
  [InternetMessageHeaders <IMicrosoftGraphInternetMessageHeader[]>]: 
    [Name <String>]: Represents the key in a key-value pair.
    [Value <String>]: The value in a key-value pair.
  [InternetMessageId <String>]: 
  [IsDeliveryReceiptRequested <Boolean?>]: 
  [IsDraft <Boolean?>]: 
  [IsRead <Boolean?>]: 
  [IsReadReceiptRequested <Boolean?>]: 
  [Mentions <IMicrosoftGraphMention[]>]: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
    [Id <String>]: Read-only.
    [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
    [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
    [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
    [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
    [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
    [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
    [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
  [MentionsPreview <IMicrosoftGraphMentionsPreview>]: mentionsPreview
    [(Any) <Object>]: This indicates any property can be added to this object.
    [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String[]>]: A collection of property values.
  [ParentFolderId <String>]: 
  [ReceivedDateTime <DateTime?>]: 
  [ReplyTo <IMicrosoftGraphRecipient[]>]: 
  [Sender <IMicrosoftGraphRecipient>]: recipient
  [SentDateTime <DateTime?>]: 
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the message. Nullable.
    [Id <String>]: Read-only.
    [Value <String>]: A property value.
  [Subject <String>]: 
  [ToRecipients <IMicrosoftGraphRecipient[]>]: 
  [UniqueBody <IMicrosoftGraphItemBody>]: itemBody
  [UnsubscribeData <String[]>]: 
  [UnsubscribeEnabled <Boolean?>]: 
  [WebLink <String>]: 

CCRECIPIENTS <IMicrosoftGraphRecipient[]>: The Cc: recipients for the message.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

EXTENSIONS <IMicrosoftGraphExtension[]>: The collection of open extensions defined for the message. Nullable.
  [Id <String>]: Read-only.

FLAG <IMicrosoftGraphFollowupFlag>: followupFlag
  [(Any) <Object>]: This indicates any property can be added to this object.
  [CompletedDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DateTime <String>]: A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
    [TimeZone <String>]: Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
  [DueDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone
  [FlagStatus <String>]: followupFlagStatus
  [StartDateTime <IMicrosoftGraphDateTimeZone>]: dateTimeTimeZone

FROM <IMicrosoftGraphRecipient>: recipient
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

INPUTOBJECT <IMailIdentity>: Identity Parameter
  [AttachmentId <String>]: key: id of attachment
  [ExtensionId <String>]: key: id of extension
  [InferenceClassificationOverrideId <String>]: key: id of inferenceClassificationOverride
  [MailFolderId <String>]: key: id of mailFolder
  [MailFolderId1 <String>]: key: id of mailFolder
  [MentionId <String>]: key: id of mention
  [MessageId <String>]: key: id of message
  [MessageRuleId <String>]: key: id of messageRule
  [MultiValueLegacyExtendedPropertyId <String>]: key: id of multiValueLegacyExtendedProperty
  [SingleValueLegacyExtendedPropertyId <String>]: key: id of singleValueLegacyExtendedProperty
  [UserConfigurationId <String>]: key: id of userConfiguration
  [UserId <String>]: key: id of user

INTERNETMESSAGEHEADERS <IMicrosoftGraphInternetMessageHeader[]>: .
  [Name <String>]: Represents the key in a key-value pair.
  [Value <String>]: The value in a key-value pair.

MENTIONS <IMicrosoftGraphMention[]>: A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
  [Id <String>]: Read-only.
  [Application <String>]: The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
  [ClientReference <String>]: A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
  [CreatedBy <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.
  [CreatedDateTime <DateTime?>]: The date and time that the mention is created on the client.
  [DeepLink <String>]: A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
  [MentionText <String>]: Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
  [Mentioned <IMicrosoftGraphEmailAddress>]: emailAddress
  [ServerCreatedDateTime <DateTime?>]: The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.

MENTIONSPREVIEW <IMicrosoftGraphMentionsPreview>: mentionsPreview
  [(Any) <Object>]: This indicates any property can be added to this object.
  [IsMentioned <Boolean?>]: True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter.

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the message. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

REPLYTO <IMicrosoftGraphRecipient[]>: .
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

SENDER <IMicrosoftGraphRecipient>: recipient
  [(Any) <Object>]: This indicates any property can be added to this object.
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the message. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.

TORECIPIENTS <IMicrosoftGraphRecipient[]>: .
  [EmailAddress <IMicrosoftGraphEmailAddress>]: emailAddress
    [(Any) <Object>]: This indicates any property can be added to this object.
    [Address <String>]: The email address of the person or entity.
    [Name <String>]: The display name of the person or entity.

UNIQUEBODY <IMicrosoftGraphItemBody>: itemBody
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Content <String>]: The content of the item.
  [ContentType <String>]: bodyType
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermessage
#>
function Update-MgUserMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment[]]
    # The fileAttachment and itemAttachment attachments for the message.
    # To construct, see NOTES section for ATTACHMENTS properties and create a hash table.
    ${Attachments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Bcc: recipients for the message.
    # To construct, see NOTES section for BCCRECIPIENTS properties and create a hash table.
    ${BccRecipients},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first 255 characters of the message body.
    # It is in text format.
    ${BodyPreview},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The categories associated with the item
    ${Categories},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Cc: recipients for the message.
    # To construct, see NOTES section for CCRECIPIENTS properties and create a hash table.
    ${CcRecipients},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifies the version of the item.
    # Every time the item is changed, changeKey changes as well.
    # This allows Exchange to apply changes to the correct version of the object.
    # Read-only.
    ${ChangeKey},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the conversation the email belongs to.
    ${ConversationId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for ConversationIndex (Indicates the position of the message within the conversation.)
    ${ConversationIndexInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension[]]
    # The collection of open extensions defined for the message.
    # Nullable.
    # To construct, see NOTES section for EXTENSIONS properties and create a hash table.
    ${Extensions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFollowupFlag]
    # followupFlag
    # To construct, see NOTES section for FLAG properties and create a hash table.
    ${Flag},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for FROM properties and create a hash table.
    ${From},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the message has attachments.
    # This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false.
    # To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    ${HasAttachments},

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
    # importance
    ${Importance},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # inferenceClassificationType
    ${InferenceClassification},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInternetMessageHeader[]]
    # .
    # To construct, see NOTES section for INTERNETMESSAGEHEADERS properties and create a hash table.
    ${InternetMessageHeaders},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${InternetMessageId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDeliveryReceiptRequested},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDraft},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsRead},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsReadReceiptRequested},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMention[]]
    # A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest.
    # By default, a GET /messages does not return this property unless you apply $expand on the property.
    # To construct, see NOTES section for MENTIONS properties and create a hash table.
    ${Mentions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMentionsPreview]
    # mentionsPreview
    # To construct, see NOTES section for MENTIONSPREVIEW properties and create a hash table.
    ${MentionsPreview},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ParentFolderId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ReceivedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for REPLYTO properties and create a hash table.
    ${ReplyTo},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for SENDER properties and create a hash table.
    ${Sender},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${SentDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for UNIQUEBODY properties and create a hash table.
    ${UniqueBody},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${UnsubscribeData},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${UnsubscribeEnabled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${WebLink},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessage_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessage_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessage_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessage_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCClQiybUFPy4VFd
# AalejI+CmQsPi3wbcXg3rrucrkPKlKCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgEc6bS2aX
# B8av/e+sBT8u+WL8McFUZ1BvmHsUcRyuXdMwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQCgWu3D9lAruxLKhqTMeyQAD8NMFnDbIefArNq9ECkB
# NZtiDulo7ftso5DjfXqJoayEvNOnsR/Lby+725Ess34//23Gcq3oiHVq4abneDNr
# CEd2Wo/R/QF40t+6SeOtQGXG7VqPDP48PBx6qgMdQhVDe2v8iWlKMfHdXCO5kq3I
# G6z4vdSpcrAoptqmKIFeWb6PrlVp9gdb4bep+BXggcTMZqE+ewgw8EG4Q95f4iaS
# /pASfiZHuQ30qStlfoFWYdfVBWEpYhHEjDNl9PwWW3BLPggQrnWERorbMfI29oo4
# 8qK96ojAP2UN3pmK+nqCGND+6nac5mkgDaR/MRdLf38NoYIS8TCCEu0GCisGAQQB
# gjcDAwExghLdMIIS2QYJKoZIhvcNAQcCoIISyjCCEsYCAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIPxXGkxnNzmNkO1/imS0Ed+xBGMv7oQYUs78Se92
# 8iW2AgZhb3TWkxYYEzIwMjExMDI3MDcxMTI1LjI0M1owBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjo0NjJGLUUzMTktM0YyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCDkQwggT1MIID3aADAgECAhMzAAABWHBaIve+luYDAAAA
# AAFYMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMDExNDE5MDIxNFoXDTIyMDQxMTE5MDIxNFowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0NjJG
# LUUzMTktM0YyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKEfC5dg9auw0KAFGwv1
# 7yMFG8SfqgUUFC8Dzwa8mrps0eyhRQ2Nv9K7/sz/fVE1o/1fZp4q4SGitcsjPGtO
# njWx45VIFTINQpdoOhmsPdnFy3gBXpMGtTfXqLnnUE4+VmKC2vAhOZ06U6vt5Cc0
# cJoqEJtzOWRwEaz8BoX2nCX1RBXkH3PiAu7tWJv3V8zhRSPLFmeiJ+CIway04AUg
# mrwXEQHvJHgb6PiLCxgE2VABCDNT5CVyieNapcZiKx16QbDle7KOwkjMEIKkcxR+
# 32dDMtzCtpIUDgrKxmjx+Gm94jHieohOHUuhl3u3hlAYfv2SA/86T1UNAiBQg3Wu
# 9xsCAwEAAaOCARswggEXMB0GA1UdDgQWBBRLcNkbfZ0cGB/u536ge5Mn06L5WDAf
# BgNVHSMEGDAWgBTVYzpcijGQ80N7fEYbxTNoWoVtVTBWBgNVHR8ETzBNMEugSaBH
# hkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNU
# aW1TdGFQQ0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUF
# BzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1RpbVN0
# YVBDQV8yMDEwLTA3LTAxLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsG
# AQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IBAQA53ygDWovQrh8fuliNXW0CUBTzfA4S
# l4h+IPEh5lNdrhDFy6T4MA9jup1zzlFkpYrUc0sTfQCAOnAjmunPgnmaS5bSf2VH
# 8Mg34U2qgPLInMAkGaBs/BzabJ65YKe1P5IKZN7Wj2bRfCK03ES8kS7g6YQH67ix
# MCQCLDreWDKJYsNs0chNpJOAzyJeGfyRUe+TUUbFwjsC/18KmYODVgpRSYZx0W7j
# rGqlJVEehuwpSIsGOYCBMnJDNdKnP+13Cg68cVtCNX6kJdvUFH0ZiuPMlBYD7GrC
# PqARlSn+vxffMivu2DMJJLkeywxSfD52sDV+NBf5IniuKFcE9y0m9m2jMIIGcTCC
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
# cGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0
# NjJGLUUzMTktM0YyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vy
# dmljZaIjCgEBMAcGBSsOAwIaAxUAqckrcxrn0Qshpuozjp+l+DSfNL+ggYMwgYCk
# fjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIF
# AOUjLZswIhgPMjAyMTEwMjcwNTQ0NTlaGA8yMDIxMTAyODA1NDQ1OVowdzA9Bgor
# BgEEAYRZCgQBMS8wLTAKAgUA5SMtmwIBADAKAgEAAgImJgIB/zAHAgEAAgIRBDAK
# AgUA5SR/GwIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIB
# AAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBAE7rl4eLqfnzqClD
# 4UNJlYpQyxUBTEi1AuOOGKXoR+NAtkfM8Gqa/2WrLa+IM+Ucks03s1WRg9BaVQIi
# NgpDm8SOIor7/7CDlRsDQL3kqlD9ZOi3SsWagubiGkF9xkdkQE4s4Nhtz2rq0pVt
# vYebi/DEIvycGA94wExYv6CMFXLzMYIDDTCCAwkCAQEwgZMwfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTACEzMAAAFYcFoi976W5gMAAAAAAVgwDQYJYIZIAWUD
# BAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0B
# CQQxIgQgHVwXYxOqy8+IVXyDYgDmJdX3fA7HgKfbu6xC0Dj2VlAwgfoGCyqGSIb3
# DQEJEAIvMYHqMIHnMIHkMIG9BCDySjONbIY1l2zKT4ba4sCI4WkBC6sIfR9uSVNV
# x3DTBzCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAB
# WHBaIve+luYDAAAAAAFYMCIEILuLhQPOgG/tIO5CCvlstZpMora0qsta4wGEcV/f
# QQulMA0GCSqGSIb3DQEBCwUABIIBAGNOEidHAIYMNiGQCrHNE9oTVxZcreXZxh7P
# 5X4WPljto20VGsITaYbjDtE1sUhhbrQ+b9rQ0t2qq0Rf2tzTrcfpMiPT97yxTJki
# qeZQJ8pANMNc9kWzS8y7GHlD7lYgyrEMfBTDSrNWB/IuLXhZ6MNZZITNSWj2of9d
# OHCypwdw156ZxusU3BCVx2TeICbjqMNWUY0lrQS51VRNexb3zwCxVYjKxfCWvNuA
# AJ8dfmZz11Q00lhXTi2Vmzsq76FFU3/c4ZW0pgPquvsYWdFk+S5A1Hox1w5ZdakI
# Asmw2YukgD3kHDmBGUdwKLoaLBizzEZtfl5s1pBT8N3PUQJ0nUk=
# SIG # End signature block
