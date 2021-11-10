Import-Module .\modules\Microsoft.Graph.Calendar\1.8.0\Microsoft.Graph.Calendar.psd1
Start-PodeServer {
    Add-PodeEndpoint -Address * -Port 8080 -Protocol Http

    Set-PodeViewEngine -Type PSHTML -Extension PS1 -ScriptBlock {
        param($path, $data)
        return [string](. $path $data)
    }

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeViewResponse -Path 'login'
    }

    Add-PodeRoute -Method Get -Path '/appoauth2' -ScriptBlock {
        $Params = @{
            ClientId = $WebEvent.Data['client_id']
            ClientSecrtet = $WebEvent.Data['client_secret']
            TenantId = $WebEvent.Data['tenant_id']
            ThumbPrint = $WebEvent.Data['cert_thumprint']
        }
        Connect-MgGraph @Params | Out-Null
        $MgUserCalendar = (Get-MgUserCalendar -UserId 18804ea8-1129-4996-8fba-a253d2574122)
        Write-PodeJsonResponse -Value $($MgUserCalendar)
    }

    Add-PodeRoute -Method Get -Path '/home' -ScriptBlock {
        Write-PodeViewResponse -Path 'index'
    }

    Add-PodeRoute -Method Get -Path '/about' -ScriptBlock {
        Write-PodeViewResponse -Path 'about'
    }
}