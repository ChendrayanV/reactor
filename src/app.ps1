Start-PodeServer {
    
    Add-PodeEndpoint -Address * -Port 3000   -Protocol Http

    Set-PodeViewEngine -Type PSHTML -Extension PS1 -ScriptBlock {
        param($path, $data)
        return [string](. $path $data)
    }

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeViewResponse -Path 'login'
    }

    Add-PodeRoute -Method Post -Path '/appoauth2' -ScriptBlock {
        $Global:ClientId = $WebEvent.Data['client_id']
        $Global:TenantId = $WebEvent.Data['tenant_id']
        $Global:ClientSecret = $WebEvent.Data['client_secret']
        $Body = @{    
            Grant_Type    = "client_credentials"
            Scope         = "https://graph.microsoft.com/.default"
            client_Id     = $Global:ClientId
            Client_Secret = $Global:ClientSecret
        }
        $ConnectGraph = Invoke-RestMethod -Uri "https://login.microsoftonline.com/$($Global:TenantId)/oauth2/v2.0/token" -Method POST -Body $Body
        $Global:Headers = @{Authorization = "{0} {1}" -f ($ConnectGraph.token_type, $ConnectGraph.access_token) } 
        $Response = [PSCustomObject]@{
            Message    = "Success"
            TokenType  = $($ConnectGraph.token_type)
            StatusCode = $WebEvent.Response.StatusCode
        }
        Write-PodeJsonResponse -Value $($Response)
    }

    Add-PodeRoute -Method Get -Path '/home' -ScriptBlock {
        Write-PodeViewResponse -Path 'index'
    }

    Add-PodeRoute -Method Get -Path '/about' -ScriptBlock {
        Write-PodeViewResponse -Path 'about'
    }

    Add-PodeRoute -Method Get -Path '/contact' -ScriptBlock {
        Write-PodeViewResponse -Path 'contact'
    }

    Add-PodeRoute -Method Get -Path '/dashboard' -ScriptBlock {
        Write-PodeViewResponse -Path 'dashboard'
    }

    Add-PodeRoute -Method Get -Path '/calendar-event' -ScriptBlock {
        Write-PodeViewResponse -Path 'calendar-event'
    }

    Add-PodeRoute -Method Post -Path '/team-calendar-event' -ScriptBlock {
        $CalendarBody = @"
{
  "subject": "Lets go for lunch",
  "body": {
    "contentType": "HTML",
    "content": "$($WebEvent.Data['reason'])"
  },
  "start": {
      "dateTime": "$($WebEvent.Data['startDate'] + "T" + $($WebEvent.Data['startTime'] -replace ':0', ':00'))",
      "timeZone": "India Standard Time"
  },
  "end": {
      "dateTime": "2021-11-15T19:00:00",
      "timeZone": "India Standard Time"
  },
  "location":{
      "displayName":"Harrys Bar"
  },
  "attendees": [
    {
      "emailAddress": {
        "address":"Karthik@ChensOffice365.onmicrosoft.com",
        "name": "Karthik Muthukumar"
      },
      "type": "required"
    }
  ],
  "allowNewTimeProposals": true,
  "transactionId":"$(([guid]::NewGuid().Guid))"
}
"@
        $Response = Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users/18804ea8-1129-4996-8fba-a253d2574122/events" `
            -Method Post -Body $CalendarBody -ContentType 'application/json' -Headers $Headers 
        
        Write-PodeJsonResponse -Value $($Response)
    }
}