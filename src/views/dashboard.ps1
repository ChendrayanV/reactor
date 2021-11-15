function dashboard {
    param (
        $Title,
        $Content
    )
    Div -Class 'cell-lg-3 cell-sm-6 mt-2' -Content {
        Div -Class 'icon-box border bd-cyan' -Content {
            Div -Class 'icon bg-cyan fg-white' -Content {
                span -Class 'mif-users'
            }
            Div -Class 'content p-4' -Content {
                Div -Class 'text-upper' -Content $($Title)
                Div -Class 'text-upper text-bold text-lead' -Content $($Content)
            }
        }
    }
}
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
                    li -Content { a -href "/dashboard" -Content "Dashboard" }
                    li -Content { a -href "/contact" -Content "Contact" }
                    li -Content { a -href "/freebusy" -Content "FreeBusy" }
                }
            }
        }
        (1..3).ForEach({ br })
        Div -Class 'container' -Content {
            br
            Div -Attributes @{"data-role"="countdown";"data-days"="1"}
            br
            $Users = (Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users" -Headers $Headers).value
            Div -Class 'row mt-2' -Content {
                dashboard -Title 'Azure AD Users' -content $($Users.Count)
                dashboard -Title 'Mailbox Count' -Content $($Users.where({$_.mail -ne $null}).count)
            }
            
        }
    }
}