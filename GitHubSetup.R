# library(credentials)
usethis::use_git_config(user.name = "Amar Dani",
                        user.email = "amar.gupta.dani@gmail.com")
usethis::create_github_token()


credentials::set_github_pat("")
