
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of inferenceClassificationOverride
    ${InferenceClassificationOverrideId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserInferenceClassificationOverride_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserInferenceClassificationOverride_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserInferenceClassificationOverride_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserInferenceClassification_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserInferenceClassification_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    # key: id of mailFolder
    ${MailFolderId1},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderChildFolder_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderChildFolder_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderChildFolder_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageAttachment_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageAttachment_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageAttachment_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageContent_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageContent_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageExtension_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageExtension_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageExtension_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageMultiValueExtendedProperty_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageMultiValueExtendedProperty_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageMultiValueExtendedProperty_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    # key: id of messageRule
    ${MessageRuleId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageRule_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageRule_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageRule_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageSingleValueExtendedProperty_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageSingleValueExtendedProperty_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessageSingleValueExtendedProperty_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessage_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessage_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMessage_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMultiValueExtendedProperty_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMultiValueExtendedProperty_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderMultiValueExtendedProperty_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderSingleValueExtendedProperty_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderSingleValueExtendedProperty_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolderSingleValueExtendedProperty_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
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
            Get1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolder_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolder_GetViaIdentity1';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMailFolder_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMessageAttachment_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMessageAttachment_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMessageAttachment_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMessageContent_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMessageContent_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMessageExtension_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMessageExtension_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMessageExtension_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMessageMultiValueExtendedProperty_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMessageMultiValueExtendedProperty_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMessageMultiValueExtendedProperty_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of singleValueLegacyExtendedProperty
    ${SingleValueLegacyExtendedPropertyId},

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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMessageSingleValueExtendedProperty_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMessageSingleValueExtendedProperty_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMessageSingleValueExtendedProperty_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
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
            Get = 'Microsoft.Graph.Mail.private\Get-MgUserMessage_Get';
            GetViaIdentity = 'Microsoft.Graph.Mail.private\Get-MgUserMessage_GetViaIdentity';
            List = 'Microsoft.Graph.Mail.private\Get-MgUserMessage_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride]
    # inferenceClassificationOverride
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
    # inferenceClassificationType
    ${ClassifyAs},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserInferenceClassificationOverride_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserInferenceClassificationOverride_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserInferenceClassificationOverride_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserInferenceClassificationOverride_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMailFolder>: mailFolder
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder[]>]: The collection of child folders in the mailFolder.
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
  [Messages <IMicrosoftGraphMessage[]>]: The collection of messages in the mailFolder.
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
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.

CHILDFOLDERS <IMicrosoftGraphMailFolder[]>: The collection of child folders in the mailFolder.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder[]>]: The collection of child folders in the mailFolder.
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
  [Messages <IMicrosoftGraphMessage[]>]: The collection of messages in the mailFolder.
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
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.

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

MESSAGES <IMicrosoftGraphMessage[]>: The collection of messages in the mailFolder.
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
  [WebLink <String>]: 

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfolderchildfolder
#>
function New-MgUserMailFolderChildFolder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder]
    # mailFolder
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
    [System.Int32]
    # The number of immediate child mailFolders in the current mailFolder.
    ${ChildFolderCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder[]]
    # The collection of child folders in the mailFolder.
    # To construct, see NOTES section for CHILDFOLDERS properties and create a hash table.
    ${ChildFolders},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The mailFolder's display name.
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
    # Indicates whether the mailFolder is hidden.
    # This property can be set only when creating the folder.
    # Find more information in Hidden mail folders.
    ${IsHidden},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule[]]
    # The collection of rules that apply to the user's Inbox folder.
    # To construct, see NOTES section for MESSAGERULES properties and create a hash table.
    ${MessageRules},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage[]]
    # The collection of messages in the mailFolder.
    # To construct, see NOTES section for MESSAGES properties and create a hash table.
    ${Messages},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The unique identifier for the mailFolder's parent mailFolder.
    ${ParentFolderId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder.
    ${TotalItemCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder marked as unread.
    ${UnreadItemCount},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderChildFolder_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderChildFolder_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderChildFolder_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderChildFolder_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment]
    # attachment
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
    # The MIME type.
    ${ContentType},

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
    # true if the attachment is an inline attachment; otherwise, false.
    ${IsInline},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The attachment's file name.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageAttachment_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageAttachment_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageAttachment_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageAttachment_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension]))]
    [System.Collections.Hashtable]
    # extension
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageExtension_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageExtension_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageExtension_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageExtension_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMultiValueExtendedProperty_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMultiValueExtendedProperty_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMultiValueExtendedProperty_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageMultiValueExtendedProperty_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule]
    # messageRule
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRuleActions]
    # messageRuleActions
    # To construct, see NOTES section for ACTIONS properties and create a hash table.
    ${Actions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRulePredicates]
    # messageRulePredicates
    # To construct, see NOTES section for CONDITIONS properties and create a hash table.
    ${Conditions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the rule.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRulePredicates]
    # messageRulePredicates
    # To construct, see NOTES section for EXCEPTIONS properties and create a hash table.
    ${Exceptions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the rule is in an error condition.
    # Read-only.
    ${HasError},

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
    # Indicates whether the rule is enabled to be applied to messages.
    ${IsEnabled},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    ${IsReadOnly},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageRule_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageRule_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageRule_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageRule_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty]
    # singleValueLegacyExtendedProperty
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageSingleValueExtendedProperty_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageSingleValueExtendedProperty_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageSingleValueExtendedProperty_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessageSingleValueExtendedProperty_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
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

BODYPARAMETER <IMicrosoftGraphMessage>: message
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage]
    # message
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment[]]
    # The fileAttachment and itemAttachment attachments for the message.
    # To construct, see NOTES section for ATTACHMENTS properties and create a hash table.
    ${Attachments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Bcc: recipients for the message.
    # To construct, see NOTES section for BCCRECIPIENTS properties and create a hash table.
    ${BccRecipients},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first 255 characters of the message body.
    # It is in text format.
    ${BodyPreview},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The categories associated with the item
    ${Categories},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Cc: recipients for the message.
    # To construct, see NOTES section for CCRECIPIENTS properties and create a hash table.
    ${CcRecipients},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifies the version of the item.
    # Every time the item is changed, changeKey changes as well.
    # This allows Exchange to apply changes to the correct version of the object.
    # Read-only.
    ${ChangeKey},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the conversation the email belongs to.
    ${ConversationId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for ConversationIndex (Indicates the position of the message within the conversation.)
    ${ConversationIndexInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension[]]
    # The collection of open extensions defined for the message.
    # Nullable.
    # To construct, see NOTES section for EXTENSIONS properties and create a hash table.
    ${Extensions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFollowupFlag]
    # followupFlag
    # To construct, see NOTES section for FLAG properties and create a hash table.
    ${Flag},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for FROM properties and create a hash table.
    ${From},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the message has attachments.
    # This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false.
    # To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    ${HasAttachments},

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
    # importance
    ${Importance},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # inferenceClassificationType
    ${InferenceClassification},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInternetMessageHeader[]]
    # .
    # To construct, see NOTES section for INTERNETMESSAGEHEADERS properties and create a hash table.
    ${InternetMessageHeaders},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${InternetMessageId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDeliveryReceiptRequested},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDraft},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsRead},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsReadReceiptRequested},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ParentFolderId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ReceivedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for REPLYTO properties and create a hash table.
    ${ReplyTo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for SENDER properties and create a hash table.
    ${Sender},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${SentDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for UNIQUEBODY properties and create a hash table.
    ${UniqueBody},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessage_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessage_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessage_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMessage_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMultiValueExtendedProperty_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMultiValueExtendedProperty_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMultiValueExtendedProperty_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderMultiValueExtendedProperty_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty]
    # singleValueLegacyExtendedProperty
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderSingleValueExtendedProperty_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderSingleValueExtendedProperty_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderSingleValueExtendedProperty_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolderSingleValueExtendedProperty_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMailFolder>: mailFolder
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder[]>]: The collection of child folders in the mailFolder.
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
  [Messages <IMicrosoftGraphMessage[]>]: The collection of messages in the mailFolder.
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
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.

CHILDFOLDERS <IMicrosoftGraphMailFolder[]>: The collection of child folders in the mailFolder.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder[]>]: The collection of child folders in the mailFolder.
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
  [Messages <IMicrosoftGraphMessage[]>]: The collection of messages in the mailFolder.
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
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.

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

MESSAGES <IMicrosoftGraphMessage[]>: The collection of messages in the mailFolder.
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
  [WebLink <String>]: 

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/new-mgusermailfolder
#>
function New-MgUserMailFolder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder])]
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
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder]
    # mailFolder
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
    [System.Int32]
    # The number of immediate child mailFolders in the current mailFolder.
    ${ChildFolderCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder[]]
    # The collection of child folders in the mailFolder.
    # To construct, see NOTES section for CHILDFOLDERS properties and create a hash table.
    ${ChildFolders},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The mailFolder's display name.
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
    # Indicates whether the mailFolder is hidden.
    # This property can be set only when creating the folder.
    # Find more information in Hidden mail folders.
    ${IsHidden},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule[]]
    # The collection of rules that apply to the user's Inbox folder.
    # To construct, see NOTES section for MESSAGERULES properties and create a hash table.
    ${MessageRules},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage[]]
    # The collection of messages in the mailFolder.
    # To construct, see NOTES section for MESSAGES properties and create a hash table.
    ${Messages},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The unique identifier for the mailFolder's parent mailFolder.
    ${ParentFolderId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the mailFolder.
    # Read-only.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder.
    ${TotalItemCount},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of items in the mailFolder marked as unread.
    ${UnreadItemCount},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMailFolder_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolder_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMailFolder_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMailFolder_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment]
    # attachment
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
    # The MIME type.
    ${ContentType},

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
    # true if the attachment is an inline attachment; otherwise, false.
    ${IsInline},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The attachment's file name.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMessageAttachment_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessageAttachment_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMessageAttachment_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessageAttachment_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension]))]
    [System.Collections.Hashtable]
    # extension
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMessageExtension_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessageExtension_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMessageExtension_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessageExtension_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMessageMultiValueExtendedProperty_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessageMultiValueExtendedProperty_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMessageMultiValueExtendedProperty_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessageMultiValueExtendedProperty_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty]
    # singleValueLegacyExtendedProperty
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMessageSingleValueExtendedProperty_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessageSingleValueExtendedProperty_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMessageSingleValueExtendedProperty_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessageSingleValueExtendedProperty_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
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

BODYPARAMETER <IMicrosoftGraphMessage>: message
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
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage])]
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
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage]
    # message
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment[]]
    # The fileAttachment and itemAttachment attachments for the message.
    # To construct, see NOTES section for ATTACHMENTS properties and create a hash table.
    ${Attachments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Bcc: recipients for the message.
    # To construct, see NOTES section for BCCRECIPIENTS properties and create a hash table.
    ${BccRecipients},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first 255 characters of the message body.
    # It is in text format.
    ${BodyPreview},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The categories associated with the item
    ${Categories},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Cc: recipients for the message.
    # To construct, see NOTES section for CCRECIPIENTS properties and create a hash table.
    ${CcRecipients},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifies the version of the item.
    # Every time the item is changed, changeKey changes as well.
    # This allows Exchange to apply changes to the correct version of the object.
    # Read-only.
    ${ChangeKey},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the conversation the email belongs to.
    ${ConversationId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for ConversationIndex (Indicates the position of the message within the conversation.)
    ${ConversationIndexInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension[]]
    # The collection of open extensions defined for the message.
    # Nullable.
    # To construct, see NOTES section for EXTENSIONS properties and create a hash table.
    ${Extensions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFollowupFlag]
    # followupFlag
    # To construct, see NOTES section for FLAG properties and create a hash table.
    ${Flag},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for FROM properties and create a hash table.
    ${From},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the message has attachments.
    # This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false.
    # To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    ${HasAttachments},

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
    # importance
    ${Importance},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # inferenceClassificationType
    ${InferenceClassification},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInternetMessageHeader[]]
    # .
    # To construct, see NOTES section for INTERNETMESSAGEHEADERS properties and create a hash table.
    ${InternetMessageHeaders},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${InternetMessageId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDeliveryReceiptRequested},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDraft},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsRead},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsReadReceiptRequested},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ParentFolderId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ReceivedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for REPLYTO properties and create a hash table.
    ${ReplyTo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for SENDER properties and create a hash table.
    ${Sender},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${SentDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for UNIQUEBODY properties and create a hash table.
    ${UniqueBody},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
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
            Create = 'Microsoft.Graph.Mail.private\New-MgUserMessage_Create';
            CreateExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessage_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Mail.private\New-MgUserMessage_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\New-MgUserMessage_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of inferenceClassificationOverride
    ${InferenceClassificationOverrideId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserInferenceClassificationOverride_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserInferenceClassificationOverride_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserInferenceClassification_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserInferenceClassification_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderChildFolder_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderChildFolder_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageAttachment_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageAttachment_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageExtension_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageExtension_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageMultiValueExtendedProperty_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageMultiValueExtendedProperty_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of messageRule
    ${MessageRuleId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageRule_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageRule_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageSingleValueExtendedProperty_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessageSingleValueExtendedProperty_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessage_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMessage_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMultiValueExtendedProperty_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderMultiValueExtendedProperty_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderSingleValueExtendedProperty_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolderSingleValueExtendedProperty_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolder_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMailFolder_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageAttachment_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageAttachment_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageExtension_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageExtension_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageMultiValueExtendedProperty_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageMultiValueExtendedProperty_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Delete1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageSingleValueExtendedProperty_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Mail.private\Remove-MgUserMessageSingleValueExtendedProperty_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Delete = 'Microsoft.Graph.Mail.private\Remove-MgUserMessage_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Mail.private\Remove-MgUserMessage_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
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
            Set = 'Microsoft.Graph.Mail.private\Set-MgUserMailFolderMessageContent_Set';
            SetViaIdentity = 'Microsoft.Graph.Mail.private\Set-MgUserMailFolderMessageContent_SetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
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
            Set = 'Microsoft.Graph.Mail.private\Set-MgUserMessageContent_Set';
            SetViaIdentity = 'Microsoft.Graph.Mail.private\Set-MgUserMessageContent_SetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of inferenceClassificationOverride
    ${InferenceClassificationOverrideId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassificationOverride]
    # inferenceClassificationOverride
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
    # inferenceClassificationType
    ${ClassifyAs},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassificationOverride_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassificationOverride_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassificationOverride_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassificationOverride_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
    [Microsoft.Graph.PowerShell.Models.IMailIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInferenceClassification]
    # inferenceClassification
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassification_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassification_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassification_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserInferenceClassification_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMailFolder>: mailFolder
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder[]>]: The collection of child folders in the mailFolder.
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
  [Messages <IMicrosoftGraphMessage[]>]: The collection of messages in the mailFolder.
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
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.

CHILDFOLDERS <IMicrosoftGraphMailFolder[]>: The collection of child folders in the mailFolder.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder[]>]: The collection of child folders in the mailFolder.
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
  [Messages <IMicrosoftGraphMessage[]>]: The collection of messages in the mailFolder.
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
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.

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

MESSAGES <IMicrosoftGraphMessage[]>: The collection of messages in the mailFolder.
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
  [WebLink <String>]: 

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfolderchildfolder
#>
function Update-MgUserMailFolderChildFolder {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    # key: id of mailFolder
    ${MailFolderId1},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder[]]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage[]]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderChildFolder_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderChildFolder_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderChildFolder_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderChildFolder_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment]
    # attachment
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
    # The MIME type.
    ${ContentType},

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
    # true if the attachment is an inline attachment; otherwise, false.
    ${IsInline},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The attachment's file name.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageAttachment_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageAttachment_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageAttachment_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageAttachment_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

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
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension]))]
    [System.Collections.Hashtable]
    # extension
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageExtension_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageExtension_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageExtension_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageExtension_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMultiValueExtendedProperty_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMultiValueExtendedProperty_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMultiValueExtendedProperty_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageMultiValueExtendedProperty_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    # key: id of messageRule
    ${MessageRuleId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRule]
    # messageRule
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRuleActions]
    # messageRuleActions
    # To construct, see NOTES section for ACTIONS properties and create a hash table.
    ${Actions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRulePredicates]
    # messageRulePredicates
    # To construct, see NOTES section for CONDITIONS properties and create a hash table.
    ${Conditions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the rule.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageRulePredicates]
    # messageRulePredicates
    # To construct, see NOTES section for EXCEPTIONS properties and create a hash table.
    ${Exceptions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the rule is in an error condition.
    # Read-only.
    ${HasError},

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
    # Indicates whether the rule is enabled to be applied to messages.
    ${IsEnabled},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API.
    ${IsReadOnly},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageRule_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageRule_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageRule_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageRule_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageSingleValueExtendedProperty_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageSingleValueExtendedProperty_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageSingleValueExtendedProperty_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessageSingleValueExtendedProperty_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
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

BODYPARAMETER <IMicrosoftGraphMessage>: message
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage]
    # message
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment[]]
    # The fileAttachment and itemAttachment attachments for the message.
    # To construct, see NOTES section for ATTACHMENTS properties and create a hash table.
    ${Attachments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Bcc: recipients for the message.
    # To construct, see NOTES section for BCCRECIPIENTS properties and create a hash table.
    ${BccRecipients},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first 255 characters of the message body.
    # It is in text format.
    ${BodyPreview},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The categories associated with the item
    ${Categories},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Cc: recipients for the message.
    # To construct, see NOTES section for CCRECIPIENTS properties and create a hash table.
    ${CcRecipients},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifies the version of the item.
    # Every time the item is changed, changeKey changes as well.
    # This allows Exchange to apply changes to the correct version of the object.
    # Read-only.
    ${ChangeKey},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the conversation the email belongs to.
    ${ConversationId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for ConversationIndex (Indicates the position of the message within the conversation.)
    ${ConversationIndexInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension[]]
    # The collection of open extensions defined for the message.
    # Nullable.
    # To construct, see NOTES section for EXTENSIONS properties and create a hash table.
    ${Extensions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFollowupFlag]
    # followupFlag
    # To construct, see NOTES section for FLAG properties and create a hash table.
    ${Flag},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for FROM properties and create a hash table.
    ${From},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the message has attachments.
    # This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false.
    # To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    ${HasAttachments},

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
    # importance
    ${Importance},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # inferenceClassificationType
    ${InferenceClassification},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInternetMessageHeader[]]
    # .
    # To construct, see NOTES section for INTERNETMESSAGEHEADERS properties and create a hash table.
    ${InternetMessageHeaders},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${InternetMessageId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDeliveryReceiptRequested},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDraft},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsRead},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsReadReceiptRequested},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ParentFolderId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ReceivedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for REPLYTO properties and create a hash table.
    ${ReplyTo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for SENDER properties and create a hash table.
    ${Sender},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${SentDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for UNIQUEBODY properties and create a hash table.
    ${UniqueBody},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessage_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessage_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessage_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMessage_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMultiValueExtendedProperty_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMultiValueExtendedProperty_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMultiValueExtendedProperty_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderMultiValueExtendedProperty_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderSingleValueExtendedProperty_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderSingleValueExtendedProperty_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderSingleValueExtendedProperty_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolderSingleValueExtendedProperty_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphMailFolder>: mailFolder
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder[]>]: The collection of child folders in the mailFolder.
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
  [Messages <IMicrosoftGraphMessage[]>]: The collection of messages in the mailFolder.
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
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.

CHILDFOLDERS <IMicrosoftGraphMailFolder[]>: The collection of child folders in the mailFolder.
  [Id <String>]: Read-only.
  [ChildFolderCount <Int32?>]: The number of immediate child mailFolders in the current mailFolder.
  [ChildFolders <IMicrosoftGraphMailFolder[]>]: The collection of child folders in the mailFolder.
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
  [Messages <IMicrosoftGraphMessage[]>]: The collection of messages in the mailFolder.
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
    [WebLink <String>]: 
  [MultiValueExtendedProperties <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>]: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [ParentFolderId <String>]: The unique identifier for the mailFolder's parent mailFolder.
  [SingleValueExtendedProperties <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>]: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [TotalItemCount <Int32?>]: The number of items in the mailFolder.
  [UnreadItemCount <Int32?>]: The number of items in the mailFolder marked as unread.

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

MESSAGES <IMicrosoftGraphMessage[]>: The collection of messages in the mailFolder.
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
  [WebLink <String>]: 

MULTIVALUEEXTENDEDPROPERTIES <IMicrosoftGraphMultiValueLegacyExtendedProperty[]>: The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String[]>]: A collection of property values.

SINGLEVALUEEXTENDEDPROPERTIES <IMicrosoftGraphSingleValueLegacyExtendedProperty[]>: The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.
  [Id <String>]: Read-only.
  [Value <String>]: A property value.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.mail/update-mgusermailfolder
#>
function Update-MgUserMailFolder {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder[]]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage[]]
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolder_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolder_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolder_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMailFolder_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attachment
    ${AttachmentId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment]
    # attachment
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
    # The MIME type.
    ${ContentType},

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
    # true if the attachment is an inline attachment; otherwise, false.
    ${IsInline},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The attachment's file name.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMessageAttachment_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessageAttachment_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMessageAttachment_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessageAttachment_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of extension
    ${ExtensionId},

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
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension]))]
    [System.Collections.Hashtable]
    # extension
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

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMessageExtension_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessageExtension_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMessageExtension_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessageExtension_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    # key: id of multiValueLegacyExtendedProperty
    ${MultiValueLegacyExtendedPropertyId},

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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty]
    # multiValueLegacyExtendedProperty
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMultiValueExtendedProperty_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMultiValueExtendedProperty_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMultiValueExtendedProperty_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessageMultiValueExtendedProperty_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
            Update1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageSingleValueExtendedProperty_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageSingleValueExtendedProperty_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageSingleValueExtendedProperty_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Mail.private\Update-MgUserMessageSingleValueExtendedProperty_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
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
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
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

BODYPARAMETER <IMicrosoftGraphMessage>: message
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
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage]
    # message
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachment[]]
    # The fileAttachment and itemAttachment attachments for the message.
    # To construct, see NOTES section for ATTACHMENTS properties and create a hash table.
    ${Attachments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Bcc: recipients for the message.
    # To construct, see NOTES section for BCCRECIPIENTS properties and create a hash table.
    ${BccRecipients},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The first 255 characters of the message body.
    # It is in text format.
    ${BodyPreview},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The categories associated with the item
    ${Categories},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # The Cc: recipients for the message.
    # To construct, see NOTES section for CCRECIPIENTS properties and create a hash table.
    ${CcRecipients},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Identifies the version of the item.
    # Every time the item is changed, changeKey changes as well.
    # This allows Exchange to apply changes to the correct version of the object.
    # Read-only.
    ${ChangeKey},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The ID of the conversation the email belongs to.
    ${ConversationId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for ConversationIndex (Indicates the position of the message within the conversation.)
    ${ConversationIndexInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphExtension[]]
    # The collection of open extensions defined for the message.
    # Nullable.
    # To construct, see NOTES section for EXTENSIONS properties and create a hash table.
    ${Extensions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFollowupFlag]
    # followupFlag
    # To construct, see NOTES section for FLAG properties and create a hash table.
    ${Flag},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for FROM properties and create a hash table.
    ${From},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the message has attachments.
    # This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false.
    # To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
    ${HasAttachments},

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
    # importance
    ${Importance},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # inferenceClassificationType
    ${InferenceClassification},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInternetMessageHeader[]]
    # .
    # To construct, see NOTES section for INTERNETMESSAGEHEADERS properties and create a hash table.
    ${InternetMessageHeaders},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${InternetMessageId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDeliveryReceiptRequested},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsDraft},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsRead},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsReadReceiptRequested},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMultiValueLegacyExtendedProperty[]]
    # The collection of multi-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for MULTIVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${MultiValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ParentFolderId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${ReceivedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for REPLYTO properties and create a hash table.
    ${ReplyTo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient]
    # recipient
    # To construct, see NOTES section for SENDER properties and create a hash table.
    ${Sender},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${SentDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSingleValueLegacyExtendedProperty[]]
    # The collection of single-value extended properties defined for the message.
    # Nullable.
    # To construct, see NOTES section for SINGLEVALUEEXTENDEDPROPERTIES properties and create a hash table.
    ${SingleValueExtendedProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, see NOTES section for UNIQUEBODY properties and create a hash table.
    ${UniqueBody},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
            Update = 'Microsoft.Graph.Mail.private\Update-MgUserMessage_Update';
            UpdateExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessage_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Mail.private\Update-MgUserMessage_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Mail.private\Update-MgUserMessage_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCA1YJ97257629Mc
# yX+bwbO942NgR1MOLrGbDqIqS2SVcqCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgzgNRcXBj
# 8Nm/NsM1ba5s8POYo/ytmO8DxF3t7GCLOCAwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQCg/oLU8B17AF4edpKJAfwDiae5UZyMO1VdyFSBh/xc
# 7kqp6ibTTXT0zewUOUfP7oTb1jCqt5d6Ew2p/cVOoA5qSF6eoYcVa6iJIIgMvWSX
# VMqG7JBZcTz3BJClp6DJOeDlxQq2J2I1EfP12307hnknGOqjWLWWVi+m2TmLIhlk
# /q4Bv3w3b7RXOx8NPs0JcmGcs1EPea0/XgM6j9oiQ55eW90D4GLC7mrvKVTR0EyX
# 3286ghSR+dODA2fmylovMhmCYDDSA8jkjAFSQu/Ms6dXxCcCoa6aBbriEjqvbjSl
# 4oFtgF2ai29mUzoZRkXOrnH4X5GHtpqnoyi9SE8MzblLoYIS+zCCEvcGCisGAQQB
# gjcDAwExghLnMIIS4wYJKoZIhvcNAQcCoIIS1DCCEtACAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIHG2fiuHYJYqhAQ/AFlqtxT/ju9WkFXp5w6qoZ3d
# vxLsAgZhcIewPuAYEzIwMjExMDI3MDcxMTI0Ljc5OVowBIACAfSggdikgdUwgdIx
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
# LwYJKoZIhvcNAQkEMSIEIEZSW+4scaBrxCFDcAB3fmEWIlK2pUn2WH3Jt04Bq3aY
# MIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgoEkCuk0kv8DnOqm31HwRr+2I
# bD3xmIW4FSGK4SboWkYwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMAITMwAAATyL/bmzP0eX/QAAAAABPDAiBCBOvcsDRGuHiiv9JuNR5soNRlwW
# F4/KGfDh0Qx+iMjufjANBgkqhkiG9w0BAQsFAASCAQA9wgLmw7IPlzrwF3CA8+a9
# jQjHCaH1LxvPgWO3y8evDPQDNGj4x7VNclCDmJqlcwxWJaxNDPcmjA+HtIddKzN0
# JTZdNibTpE0i6xCxeIFPD0BvcvKfL100caCrEPYQcP9T1xR8MljK6WDEOmZcujdk
# aCvtFel3mFdXXyLqMOk0jn78K/VJ02riwpgHOTi7ZI9WTOwiLODrjOzSDFyHIzYh
# 5I0s97xP6CrJWVP5WJJ/JErfpfxm+B2okcFoWsjclKpWYz/FlC3T1lyfx5jvLXqS
# gKf0iD52Y8+SX/S6mnSoqpjW4ec829kqYiOdYz1vPJ8pbZ32dv2inh1Zd1j9FcYc
# SIG # End signature block
