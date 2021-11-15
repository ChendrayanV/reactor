$Client_Id = "33e9c6e7-15fd-4393-b52f-ce7aed5f3729"
$Tenant_Id = "d15f83d0-ed59-4e08-925a-e7445f64efe8"
$Client_Secret = "oiG7Q~H74qFVnjDlaT9Y6U2c1sa-oBvjYV1vV" #| ConvertTo-SecureString -AsPlainText -Force 
$Body = @{    
    Grant_Type    = "client_credentials"
    Scope         = "https://graph.microsoft.com/.default"
    client_Id     = $Client_Id
    Client_Secret = $Client_Secret
} 
$ConnectGraph = Invoke-RestMethod -Uri "https://login.microsoftonline.com/$Tenant_Id/oauth2/v2.0/token" -Method POST -Body $Body
$Headers = @{Authorization = "{0} {1}" -f ($ConnectGraph.token_type, $ConnectGraph.access_token) }
$CollectionSite = @()
$CollectionSite += (Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/sites" -Headers $Headers).value
$ListCollection = @()
foreach($Site in $CollectionSite | Where-Object {$_.name -eq 'Microsoft365'}) {
    $ListCollection += (Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/sites/$($Site.id)/lists" -Headers $Headers).value
}

$ListItems = (Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/sites/chensoffice365.sharepoint.com,bc5124e0-2e63-4211-ad90-55f7a370b406,9d76d3a3-5c8e-4674-9883-ecabf3d09dfa/lists/67012b97-3df3-4eef-b98f-e4ecb13acffa/items?expand=fields" -Headers $Headers).value
foreach($ListItem in $ListItems) {
    if($ListItem.fields.Avatar) {
        ($ListItem.fields.Avatar | ConvertFrom-Json)
    }
}