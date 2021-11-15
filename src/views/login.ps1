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
                    li -Content { a -href "/mail" -Content "Mail" }
                    li -Content { a -href "/powershell" -Content "PowerShell" }
                }
            }
        }
        (1..3).ForEach({ br })
        Div -Class 'container' -Content {
            form -action "/appoauth2" -method "post" -enctype 'multipart/form-data' -content {
                div -class 'form-group' -content {
                    label -content 'Client Id'
                    input -type 'text' -name 'client_id' -value "33e9c6e7-15fd-4393-b52f-ce7aed5f3729"
                }
                div -class 'form-group' -content {
                    label -content 'Tenant Id'
                    input -type 'password' -name 'tenant_id' -value "d15f83d0-ed59-4e08-925a-e7445f64efe8"
                }
                div -class 'form-group' -content {
                    label -content 'Client Secret'
                    input -type 'password' -name 'client_secret' -value "oiG7Q~H74qFVnjDlaT9Y6U2c1sa-oBvjYV1vV"
                }
                div -class 'form-group' -content {
                    button -class 'button bg-blue outline rounded' -content 'Login'
                    #input -type 'button' -class 'button' -value 'Cancel' -name 'cancel'
                }
            }
        }
    }
}