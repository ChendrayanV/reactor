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
        (1..3).ForEach({ br })
        Div -Class 'container' -Content {
            table -Class "table striped" -Content {
                thead -Content {
                    tr -content {
                        th -content "Sensitivity" 
                        th -content "ShowAs"
                        th -content "Start"
                    }
                }
                tbody -Content {

                foreach ($MgUserCalendarEvent in $MgUserCalendarEvents) {
                    tr -content {
                        if ((([DateTime]($($MgUserCalendarEvent.Start).DateTime))).Where({ $_.Date -eq ([datetime]::UtcNow.Date) })) {
                            td -Content {
                                $($MgUserCalendarEvent.Sensitivity)
                            }
                            td -Content {
                                $($MgUserCalendarEvent.ShowAs)
                            }
                            td -Content {
                                (([DateTime]($($MgUserCalendarEvent.Start).DateTime))).Where({$_.Date -eq ([datetime]::UtcNow.Date)})
                            }
                        }
                    }
                }
            }
            } 
            
        }
    }
}