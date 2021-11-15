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
        div -Class 'container' -Content {
            div -Class "h-100" -attributes @{'data-role'= 'splitter'} -content {
                
                div -class 'd-flex flex-justify-center flex-align-center' -content {
                    p -Class "indent-letter" -Content {
                        "Dedicated IT professional with a history of meeting company goals utilizing consistent and organized practices, skilled in working under pressure and adapting to new situations and challenges to enhance the corporate brand best. Intrinsic passion for learning and self-development, I come from an infrastructure development background with experiences across a variety of environments and languages; expert-level knowledge of PowerShell, Python, ARM Templates, Terraform, Bicep, Azure, Azure Policy, Serverless, Azure Kubernetes Service (AKS), Azure CLI, Azure Rest API, Azure Data Explorer, Kusto Query Language, Observaibility, Integrations, Workflows, Orchestrations, Microsoft 365, and Power Platform."
                    }
                    
                }
                div -class 'd-flex flex-justify-center flex-align-center' -content {
                    #p -content "Chen"
                    '<form>
                    <div class="form-group">
                        <label>Email address</label>
                        <input type="email" placeholder="Enter email"/>
                        <small class="text-muted">Well never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" placeholder="Enter email"/>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" data-role="checkbox" data-caption="Remember me">
                    </div>
                    <div class="form-group">
                        <button class="button bg-blue rounded">Submit</button>
                        <input type="button" class="button bg-blue rounded" value="Cancel">
                    </div>
                </form>'
                }
            }
        }
    }
}