$Body = @"
{        
    "schedules": ["Chendrayan@ChensOffice365.onmicrosoft.com"],
    "startTime": {
        "dateTime": "$(Get-Date)",
        "timeZone": "India Standard Time"
    },
    "endTime": {
        "dateTime": "$((Get-Date).AddDays(2))",
        "timeZone": "India Standard Time"
    },
    "availabilityViewInterval": 60
}
"@
html -Content {
    head -Content {
        Title -Content "Reactor | Home"
        Link -href "https://cdn.metroui.org.ua/v4.3.2/css/metro-all.min.css" -rel "stylesheet"
        script -src "https://cdn.metroui.org.ua/v4/js/metro.min.js"
    }
    body -Content {
        # Menu Bar
        (1..2).ForEach({ br })
        Div -Class 'container' -Content {
            br
            '<div data-role="countdown" data-days="1"></div>'
            br
            $GetSchedules = Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users/18804ea8-1129-4996-8fba-a253d2574122/calendar/getSchedule" -Headers $Headers -Method Post -ContentType 'application/json' -Body $Body
            foreach ($GetSchedule in $GetSchedules.value.scheduleItems) {
                br
                $Caption = $([System.Globalization.CultureInfo]::CurrentCulture.TextInfo.ToTitleCase($($GetSchedule.status)))
                Div -Attributes @{'data-role' = 'panel'; 'data-title-caption' = "$Caption"; 'data-collapsible' = 'true' } -Content {
                    switch ($GetSchedule.status) {
                        'busy' { 
                            Div -class "remark alert" -content {
                                b -Content $($GetSchedule.subject)
                                br
                                b -Content $($GetSchedule.start.dateTime)
                            }
                         }
                         'free' {
                            Div -class "remark success" -content {
                                b -Content $($GetSchedule.subject)
                                br
                                b -Content $($GetSchedule.start.dateTime)
                            }
                         }
                         'tentative' {
                            Div -class "remark secondary" -content {
                                b -Content $($GetSchedule.subject)
                                br
                                b -Content $($GetSchedule.start.dateTime)
                            }
                         }
                         default {
                             
                         }
                    }
                }
            }
        }
    }
}