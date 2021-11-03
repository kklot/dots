pkgs <- c("ggplot2", "devtools", "roxygen2", "colorout", "httpgd")
sapply(pkgs, library, character.only = TRUE)

if (interactive() && Sys.getenv("RSTUDIO") == "") {
  Sys.setenv(TERM_PROGRAM = "vscode")
  source(file.path(Sys.getenv(if (.Platform$OS.type == "windows") "USERPROFILE" else "HOME"), ".vscode-R", "init.R"))
}

options(
    vsc.use_httpgd = TRUE,
    help_type = "html",
    repos = structure(c(CRAN = "https://cran.ma.imperial.ac.uk/")))

theme_set(theme_minimal())
library(colorout)
