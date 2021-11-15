param($data)
function dashboard {
    param (
        $Color,
        $Icon,
        $Title,
        $Content
    )
    Div -Class 'cell-lg-3 cell-sm-6 mt-2' -Content {
        Div -Class "icon-box border bd-$($Color)" -Content {
            Div -Class "icon bg-$($Color) fg-white" -Content {
                span -Class $('mif-' + $($Icon))
            }
            Div -Class 'content p-4' -Content {
                Div -Class 'text-upper' -Content $($Title)
                Div -Class 'text-upper text-bold text-lead' -Content $($Content)
            }
        }
    }
}
return html -Content {
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
                a -href "/home" -Class "brand fg-white no-hover" -Content "REACTOR" -Target "_blank"
                ul -Class "app-bar-menu ml-auto" -Content {
                    li -Content { a -href "/about" -Content "About" }
                    li -Content { a -href "/dashboard" -Content "Dashboard" }
                    li -Content { a -href "/contact" -Content "Contact" }
                    li -Content { a -href "/calendar-event" -Content "Book an Event" }
                }
            }
        }
        (1..3).ForEach({ br })
        Div -Class 'container' -Content {
            br
            Div -Attributes @{"data-role" = "countdown"; "data-days" = "1" }
            br
            Div -Class 'remark' -Content {
                'Graph API - Sites & Users'
            }
            $Users = (Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users" -Headers $Headers).value
            $ListItems = (Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/sites/chensoffice365.sharepoint.com,bc5124e0-2e63-4211-ad90-55f7a370b406,9d76d3a3-5c8e-4674-9883-ecabf3d09dfa/lists/67012b97-3df3-4eef-b98f-e4ecb13acffa/items?expand=fields" -Headers $Headers).value
            Div -Class 'row mt-2' -Content {
                dashboard -color 'cyan' -Icon 'users' -Title 'Azure AD Users' -content $($Users.Count)
                dashboard -color 'red' -Icon 'mail' -Title  'Mailbox Count' -Content $($Users.where({ $_.mail -ne $null }).count)
                dashboard -color 'green' -Icon 'contacts-dialer' -Title 'Contact' -Content $(a -href 'https://www.google.com' -Content $($ListItems.count))
                
                dashboard -color 'magenta' -Icon 'spinner' -Title 'Place Holder' -Content $('<div data-role="activity" data-type="square" data-style="color"></div>')
            }
            hr
            Div -Class 'more-info-box bg-cyan fg-white' -Content {
                Div -Class 'content' -Content {
                    h2 -Class 'text-bold mb-0' -Content '10'
                    Div -Content 'New Orders'   
                }
                Div -Class 'icon' -Content {
                    Span -Class 'mif-cart'
                }
                a -href 'https://www.google.com' -Class 'more' -Content {
                    'More Info'
                    span -class 'mif-arrow-right'
                }
            }
            
            hr 
            Div -Class 'remark' -Content {
                'Issue Tracker - Status'
            }
            Div -Class 'row mt-2' -Content {
                $Items = (Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/sites/chensoffice365.sharepoint.com,bc5124e0-2e63-4211-ad90-55f7a370b406,9d76d3a3-5c8e-4674-9883-ecabf3d09dfa/lists/a6a8e0ae-f851-498e-b380-56957d039a0a/items?expand=fields" -Headers $headers).value
                dashboard -color 'cyan' -Icon 'chart-bars2' -Title 'Issues' -Content $($Items.count)
                $Status = $Items.fields | Group-Object -Property Status | Select-Object Name , Count 
                switch ($Status.Name) {
                    'New' {
                        dashboard -color 'cyan' -Icon 'stack' -Title 'New' -content $(($Status | Where-Object { $_.Name -eq 'New' }).count)
                    }
                    'In Progress' {
                        dashboard -color 'black' -Icon 'spinner5' -Title 'In progress' -content $(($Status | Where-Object { $_.Name -eq 'In progress' }).count)
                    }
                    'Completed' {
                        dashboard -color 'magenta' -Icon 'switch' -Title 'Completed' -content $(($Status | Where-Object { $_.Name -eq 'Completed' }).count)
                    }
                }
            }
        }
    }
}