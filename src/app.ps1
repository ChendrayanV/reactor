Start-PodeServer {
    
    # Endpoint - Localhost & Port 8080
    Add-PodeEndpoint -Address * -Port 8080 -Protocol Http
    
    Set-PodeViewEngine -Type PSHTML -Extension PS1 -ScriptBlock {
        param($path, $data)
        return [string](. $path $data)
    }

    # Index - Home Page
    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeViewResponse -Path 'index'
    }

    # About - About Page

    Add-PodeRoute -Method Get -Path '/about' -ScriptBlock {
        Write-PodeViewResponse -Path 'about'
    }
}