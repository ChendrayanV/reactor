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
                    li -Content { a -href "/dashboard" -Content "Dashboard" }
                    li -Content { a -href "/contact" -Content "Contact" }
                    li -Content { a -href "/freebusy" -Content "FreeBusy" }
                }
            }
        }
        (1..3).ForEach({ br })
        Div -Class 'container' -Content {
            form -action "/team-calendar-event" -method "post" -enctype 'multipart/form-data' -content {
                $items = @('Team Lunch' , 'Exchange Online Discussion', 'Azure Discussion' , 'SharePoint Discussion')
                div -class 'form-group' -content {
                    label -Content 'Choice of yours...'
                    selecttag -Content {
                        foreach($Item in $Items) {
                            option -Content $Item
                        }
                    } -name 'reason'
                }
                Div -Class 'form-group' -Content {
                    label -Content 'Start Date'
                    input -type 'text' -attributes @{'data-role'="datepicker"} -name 'startDate'
                }
                Div -Class 'form-group' -Content {
                    label -Content 'Start Time'
                    input -type 'text' -attributes @{'data-role'="timepicker";'data-value'='13:00:00'} -name 'startTime'
                }
                Div -Class 'form-group' -Content {
                    label -Content 'End Date'
                    input -type 'text' -attributes @{'data-role'="datepicker"} -name 'endDate'
                }
                Div -Class 'form-group' -Content {
                    label -Content 'End Time'
                    input -type 'text' -attributes @{'data-role'="timepicker";'data-value'='13:00:00'} -name 'endTime'
                }
                (1..3).foreach({br})
                div -class 'form-group' -content {
                    button -class 'button bg-blue outline rounded' -content 'Login'
                }
            }
        }
    }
}