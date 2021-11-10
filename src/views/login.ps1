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
            form -action "/appoauth2" -method "post" -enctype 'multipart/form-data' -content {
                div -class 'form-group' -content {
                    label -content 'Client Id'
                    input -type 'text' -name 'client_id' 
                }
                div -class 'form-group' -content {
                    label -content 'Tenant Id'
                    input -type 'password' -name 'tenant_id' 
                }
                div -class 'form-group' -content {
                    label -content 'Thumbprint'
                    input -type 'password' -name 'cert_thumbprint' 
                }
                div -class 'form-group' -content {
                    button -class 'button bg-blue' -content 'Login'
                    #input -type 'button' -class 'button' -value 'Cancel' -name 'cancel'
                }
            }
        }
    }
}