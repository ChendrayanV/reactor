Start-PodeServer {
    Add-PodeEndpoint -Address * -Port 8080 -Protocol Http

    Set-PodeViewEngine -Type PSHTML -Extension PS1 -ScriptBlock {
        param($path, $data)
        return [string](. $path $data)
    }

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeViewResponse -Path 'index'
    }

    Add-PodeRoute -Method Get -Path '/about' -ScriptBlock {
        Write-PodeViewResponse -Path 'about'
    }
}