Import-Module .\modules\Microsoft.Graph.Calendar\1.8.0\Microsoft.Graph.Calendar.psd1
html -Content {
    head -Content {
        Title -Content "Reactor | Home"
        Link -href "https://cdn.metroui.org.ua/v4.3.2/css/metro-all.min.css" -rel "stylesheet"
        script -src "https://cdn.metroui.org.ua/v4/js/metro.min.js"
    }
    body -Content {
        # Menu Bar
        $colors = @('blue' , 'green' , 'brown' , 'magenta' , 'orange')
        $bgColor = $colors | Get-Random
        Div -Class "container bg-$($bgColor) fg-white pos-fixed fixed-top z-top" -Content {
            header -Class "app-bar container bg-$($bgColor) fg-white pos-relative" `
                -Attributes @{'data-role' = 'appbar'; 'data-expand-point' = 'md' } -Content {
                a -href "#" -Class "brand fg-white no-hover" -Content "REACTOR" -Target "_blank"
                ul -Class "app-bar-menu ml-auto" -Content {
                    li -Content { a -href "/about" -Content "About" }
                    li -Content { a -href "/azure" -Content "Azure" }
                    li -Content { a -href "/office365" -Content "Office 365" }
                    li -Content { a -href "/sharepoint" -Content "SharePoint" }
                }
            }
        }
        (1..2).ForEach({ br })
        Div -Class 'container' -Content {
            '<div data-role="countdown" data-days="1"></div>'
            h5 -content "Your Day look awesome..."
            table -Class "table striped" -Content {
                thead -Content {
                    tr -content {
                        th -Content "Organizer"
                        th -Content "Subject"
                        th -content "Sensitivity" 
                        th -content "Start(UTC)"
                        th -Content "LocalTime"
                    }
                }
                tbody -Content {
                    $MgUserCalendar = Invoke-RestMethod -Uri 'https://graph.microsoft.com/v1.0/users/18804ea8-1129-4996-8fba-a253d2574122/calendar' -Headers $Headers
                    $MgUserCalendarEvents = Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users/18804ea8-1129-4996-8fba-a253d2574122/calendars/$($MgUserCalendar.Id)/events" -Headers $Headers 
                    foreach ($MgUserCalendarEvent in $MgUserCalendarEvents.value) {
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
                                    (Get-Date).ToShortTimeString()
                                }
                                
                            }
                        }
                    }
                }
            } 
            
        }
        hr
        # (1..2).Foreach({ br })
        Div -Class 'container' -Content {
            h5 -Content "Your action please..."

            $collection = Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users/18804ea8-1129-4996-8fba-a253d2574122/messages?`$filter=importance eq 'high' and isRead eq false" -Headers $Headers
            foreach ($item in $collection.value) {
                Div -class "remark alert" -content {
                    $item.subject
                    br
                    $item.Sender.EmailAddress.Name
                }
            }
        }
        (1..2).ForEach({ br })
        Div -Class 'container' -Content {
            h5 -Content 'User Information'
            Div -Attributes @{"data-role" = "accordion"; "data-one-frame" = "true"; "data-show-active" = "true" } -Content {
                $Users = Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users" -Headers $Global:Headers
                foreach($User in $Users.value) {
                    Div -Class 'frame' -Content {
                        Div -Class 'heading' -Content $($User.displayName)
                        Div -Class 'content' -Content {
                            Div -Class 'p-2' -Content {
                                $User.jobTitle
                                br 
                                b -Content $User.mobilePhone
                            }
                        }
                    }
                }
            }
        }
    }
}