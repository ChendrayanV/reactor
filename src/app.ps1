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
            Message   = "Success"
            TokenType = $($ConnectGraph.token_type)
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
}