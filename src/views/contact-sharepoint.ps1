# Import-Module .\modules\Microsoft.Graph.Calendar\1.8.0\Microsoft.Graph.Sites.psd1
Import-Module .\modules\Microsoft.Graph.Sites\1.8.0\Microsoft.Graph.Sites.psd1
html -Content {
    head -Content {
        Title -Content "Reactor | Home"
        Link -href "https://cdn.metroui.org.ua/v4.3.2/css/metro-all.min.css" -rel "stylesheet"
        script -src "https://cdn.metroui.org.ua/v4/js/metro.min.js"
    }
    body -Content {
        # Menu Bar
        $colors = @('blue' , 'green' , 'brown' , 'magenta' , 'orange' , 'pink' , 'black')
        $bgColor = $colors | Get-Random
        Div -Class "container bg-$($bgColor) fg-white pos-fixed fixed-top z-top" -Content {
            header -Class "app-bar container bg-$($bgColor) fg-white pos-relative" `
                -Attributes @{'data-role' = 'appbar'; 'data-expand-point' = 'md' } -Content {
                a -href "#" -Class "brand fg-white no-hover" -Content "REACTOR" -Target "_blank"
                ul -Class "app-bar-menu ml-auto" -Content {
                    li -Content { a -href "/about" -Content "About" }
                    li -Content { a -href "/mail" -Content "Mail" }
                    li -Content { a -href "/sharepoint" -Content "SharePoint" }
                }
            }
        }
        (1..2).ForEach({ br })
        Div -Class 'container' -Content {
            #'<div data-role="countdown" data-days="1"></div>'
            br
            Div -Attributes @{"data-role"="countdown";"data-days"="1"}
            br
            $ListItems = (Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/sites/chensoffice365.sharepoint.com,bc5124e0-2e63-4211-ad90-55f7a370b406,9d76d3a3-5c8e-4674-9883-ecabf3d09dfa/lists/67012b97-3df3-4eef-b98f-e4ecb13acffa/items?expand=fields" -Headers $Headers).value
            
            foreach($ListItem in $ListItems) {
                Div -Class 'social-box' -Content {
                    Div -Class 'header bg-cyan fg-white' -Content {
                        $ImageSource = ($ListItem.fields.Avatar | ConvertFrom-Json)
                        $ImageSourceUrl = [string]::Concat($ImageSource.serverUrl,$ImageSource.serverRelativeUrl)
                        img -src "$($ImageSourceUrl)" -Class 'avatar'
                        Div -Class 'title' -Content $([string]::Concat($ListItem.fields.FirstName , ' ' , $ListItem.fields.LastName))
                    }
                    ul -class 'skills' -Content {
                        li -Content {
                            Div -Class "text-bold" -Content $($ListItem.fields.Mobile)
                            Div -Content "Mobile"
                        }
                        hr
                        li -Content {
                            Div -Class "text-bold" -Content $("$" +$ListItem.fields.CostToCompany)
                            Div -Content "CostToCompany"
                        }
                        hr  
                        li -Content {
                            Div -Class "text-bold" -Content $($ListItem.fields.YearsOfExperience)
                            Div -Content "YearsOfExperience"
                        }
                    }
                }
            }
        }
    }
}