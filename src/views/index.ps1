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
        (1..3).ForEach({br})
        Div -Class 'container' -Content {
            
            "<div data-role='wizard'>
            <section><div class='page-content'>$((Get-UserName).givenName)</div></section>
            <section><div class='page-content'>Page 2</div></section>
            <section><div class='page-content'>Page 3</div></section>
            <section><div class='page-content'>Page 4</div></section>
            <section><div class='page-content'>Page 5</div></section>
        </div>"
        }
    }
}