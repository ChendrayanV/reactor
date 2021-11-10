html -Content {
    head -Content {
        Title -Content "Reactor | Home"
        Link -href "https://cdn.metroui.org.ua/v4.3.2/css/metro-all.min.css" -rel "stylesheet"
        script -src "https://cdn.metroui.org.ua/v4/js/metro.min.js"
    }
    body -Content {
        # Menu Bar
        Div -Class "container bg-blue fg-white pos-fixed fixed-top z-top" -Content {
            header -Class "app-bar container bg-blue fg-white pos-relative" `
                -Attributes @{'data-role' = 'appbar'; 'data-expand-point' = 'md' } -Content {
                a -href "#" -Class "brand fg-white no-hover" -Content "REACTOR" -Target "_blank"
                ul -Class "app-bar-menu ml-auto" -Content {
                    li -Content { a -href "/about" -Content "About" }
                    li -Content { a -href "/azure" -Content "Azure" }
                    li -Content { a -href "/office365" -Content "Office 365" }
                    li -Content { a -href "/powershell" -Content "PowerShell" }
                }
            }
        }
        (1..2).ForEach({ br })
        Div -Class 'container' -Content {
            h5 -content "Your Day look awesome..."
            table -Class "table striped" -Content {
                thead -Content {
                    tr -content {
                        th -Content "Organizer"
                        th -Content "Subject"
                        th -content "Sensitivity" 
                        th -content "Start(UTC)"
                        th -Content "IsCancelled"
                    }
                }
                tbody -Content {
                    Connect-MgGraph -ClientId $ClientId -CertificateThumbprint $($CertificateThumbprint) -TenantId $TenantId | Out-Null
                    $MgUserCalendar = (Get-MgUserCalendar -UserId '18804ea8-1129-4996-8fba-a253d2574122')
                    $MgUserCalendarEvents = Get-MgUserCalendarEvent -CalendarId $MgUserCalendar.Id -UserId '18804ea8-1129-4996-8fba-a253d2574122'
                    foreach ($MgUserCalendarEvent in $MgUserCalendarEvents) {
                        tr -content {
                            if ((([DateTime]($($MgUserCalendarEvent.Start).DateTime))).Where({ $_.Date -eq ([datetime]::UtcNow.Date) })) {
                                td -Content {
                                    $($MgUserCalendarEvent.Organizer.EmailAddress.Name)
                                }
                                td -Content {
                                    $($MgUserCalendarEvent.Subject)
                                }
                                td -Content {
                                    $($MgUserCalendarEvent.Sensitivity)
                                }
                                
                                td -Content {
                                    (([DateTime]($($MgUserCalendarEvent.Start).DateTime))).Where({ $_.Date -eq ([datetime]::UtcNow.Date) })
                                }
                                td -Content {
                                    $($MgUserCalendarEvent.IsCancelled)
                                }
                            }
                        }
                    }
                }
            } 
            
        }
        hr
        (1..2).Foreach({ br })
        Div -Class 'container' -Content {
            h5 -Content "Your action please..."

            $collection = (Get-MgUserMessage -UserId '18804ea8-1129-4996-8fba-a253d2574122' -Filter "importance eq 'high' and isRead eq false")
            foreach ($item in $collection) {
                Div -class "remark" -content {
                    $item.subject
                    br
                    $item.Sender.EmailAddress.Name
                }
            }
        }
    }
}