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
$Body = @"
{        
    "schedules": ["Chendrayan@ChensOffice365.onmicrosoft.com"],
    "startTime": {
        "dateTime": "$(Get-Date)",
        "timeZone": "India Standard Time"
    },
    "endTime": {
        "dateTime": "$((Get-Date).AddDays(2))",
        "timeZone": "India Standard Time"
    },
    "availabilityViewInterval": 60
}
"@
$GetSchedule = Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users/18804ea8-1129-4996-8fba-a253d2574122/calendar/getSchedule" -Headers $Headers -Method Post -ContentType 'application/json' -Body $Body
$GetSchedule