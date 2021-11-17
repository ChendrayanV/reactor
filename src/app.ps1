Start-PodeServer {
    
    Add-PodeEndpoint -Address * -Port 3000 -Protocol Http

    Set-PodeViewEngine -Type PSHTML -Extension PS1 -ScriptBlock {
        param($path, $data)
        return (. $path $data)
    }

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeViewResponse -Path 'index.ps1'
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
        Write-PodeViewResponse -Path 'home.ps1'
    }

    Add-PodeRoute -Method Get -Path '/about' -ScriptBlock {
        Write-PodeViewResponse -Path 'about.ps1'
    }

    Add-PodeRoute -Method Get -Path '/contact' -ScriptBlock {
        Write-PodeViewResponse -Path 'contact.ps1'
    }

    Add-PodeRoute -Method Get -Path '/dashboard' -ScriptBlock {
        Write-PodeViewResponse -Path 'dashboard.ps1'
    }

    Add-PodeRoute -Method Get -Path '/calendar-event' -ScriptBlock {
        Write-PodeViewResponse -Path 'calendar-event.ps1'
    }

    Add-PodeRoute -Method Post -Path '/team-calendar-event' -ScriptBlock {
        # @('Team Lunch' , 'Exchange Online Discussion', 'Azure Discussion' , 'SharePoint Discussion')
        $Users = Invoke-RestMethod -Uri 'https://graph.microsoft.com/v1.0/users/' -Headers $Headers
        switch ($WebEvent.Data['reason']) {
            'Team Lunch' {
                $attendees = @()
                foreach ($User in $Users.value | Where-Object { $_.mail -ne $null }) {
                    $attendees += @([PSCustomObject]@{
                            emailAddress = [PSCustomObject]@{
                                address = "$($User.mail)"
                                name    = "$($User.displayName)"
                            }
                            type         = "required"
                        })
                }
            }
            'Exchange Online Discussion' {
                $attendees = @()
                foreach ($User in $Users.value | Where-Object { $_.mail -ne $null -and $_.jobtitle -eq 'Exchange' }) {
                    $attendees += @([PSCustomObject]@{
                            emailAddress = [PSCustomObject]@{
                                address = "$($User.mail)"
                                name    = "$($User.displayName)"
                            }
                            type         = "required"
                        })
                }
            }
            'Azure Discussion' {
                $attendees = @()
                foreach ($User in $Users.value | Where-Object { $_.mail -ne $null -and $_.jobtitle -eq 'Azure' }) {
                    $attendees += @([PSCustomObject]@{
                            emailAddress = [PSCustomObject]@{
                                address = "$($User.mail)"
                                name    = "$($User.displayName)"
                            }
                            type         = "required"
                        })
                }
            }
            'SharePoint Discussion' {
                $attendees = @()
                foreach ($User in $Users.value | Where-Object { $_.mail -ne $null -and $_.jobtitle -eq 'SharePoint' }) {
                    $attendees += @([PSCustomObject]@{
                            emailAddress = [PSCustomObject]@{
                                address = "$($User.mail)"
                                name    = "$($User.displayName)"
                            }
                            type         = "required"
                        })
                }
            }
        }
        $CalendarBody = [PSCustomObject]@{
            subject               = $WebEvent.Data['reason']
            body                  = [PSCustomObject]@{
                contentType = "HTML"
                content     = $WebEvent.Data['reason']
            }
            start                 = [PSCustomObject]@{
                dateTime = "$($WebEvent.Data['startDate'] + "T" + $($WebEvent.Data['startTime'] -replace ':0', ':00'))"
                timeZone = "India Standard Time"
            }
            end                   = [PSCustomObject]@{
                dateTime = "$($WebEvent.Data['endDate'] + "T" + $($WebEvent.Data['endTime'] -replace ':0', ':00'))"
                timeZone = "India Standard Time"
            }
            location              = [PSCustomObject]@{
                displayName = "House of Billiards"
            }
            attendees             = $($attendees)
            allowNewTimeProposals = $true
            transactionId         = "$(([guid]::NewGuid().Guid))"
        } | ConvertTo-Json -Depth 10
        $Response = Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users/{USER_ID}/events" `
            -Method Post `
            -Body $CalendarBody `
            -ContentType 'application/json' -Headers $Headers 
        
        Write-PodeJsonResponse -Value $($Response)
    }
}