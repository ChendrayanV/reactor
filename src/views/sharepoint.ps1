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
                    li -Content { a -href "/azure" -Content "Azure" }
                    li -Content { a -href "/office365" -Content "Office 365" }
                    li -Content { a -href "/sharepoint" -Content "SharePoint" }
                }
            }
        }
        (1..2).ForEach({ br })
        Div -Class 'container' -Content {
            '<div data-role="countdown" data-days="1"></div>'
            h5 -content "SharePoint List Information..."
            table -Class "table striped" -Content {
                thead -Content {
                    tr -content {
                        th -Content "DisplayName"
                        th -Content "CreatedDateTime"
                        th -Content "LastModifiedDateTime"    
                    }
                }
                tbody -Content {
                    Connect-MgGraph -ClientId $ClientId -CertificateThumbprint $($CertificateThumbprint) -TenantId $TenantId | Out-Null
                    $Sites = Get-MgSite
                    $ListCollection = @()
                    foreach($Site in $Sites) {
                        $ListCollection += Get-MgSiteList -SiteId $($Site.Id)
                    }
                    foreach($List in $ListCollection) {
                        tr -Content {
                            td -Content {
                                $($List.DisplayName)
                            }
                            td -Content {
                                $($List.CreatedDateTime)
                            }
                            td -Content {
                                $($List.LastModifiedDateTime)
                            }
                        }
                    }
                }
            } 
        }
    }
}