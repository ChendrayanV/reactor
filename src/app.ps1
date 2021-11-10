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

    Add-PodeRoute -Method Post -Path '/appoauth2' -ScriptBlock {
        $Global:ClientId = $WebEvent.Data['client_id']
        $Global:TenantId = $WebEvent.Data['tenant_id']
        $Global:CertificateThumbprint = $WebEvent.Data['cert_thumbprint']
        $ConnectResponse = Connect-MgGraph -ClientId $ClientId -CertificateThumbprint $($CertificateThumbprint) -TenantId $TenantId 
        Write-PodeJsonResponse -Value $($ConnectResponse)
    }

    Add-PodeRoute -Method Get -Path '/home' -ScriptBlock {
        Write-PodeViewResponse -Path 'index'
    }

    Add-PodeRoute -Method Get -Path '/about' -ScriptBlock {
        Write-PodeViewResponse -Path 'about'
    }
}