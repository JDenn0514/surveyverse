# nocov start
.onAttach <- function(libname, pkgname) {
  surveyverse_attach()
  versions <- surveyverse_versions()
  attached <- core[!is.na(versions)]
  if (length(attached) == 0) {
    return(invisible())
  }
  bullets <- paste0(
    cli::col_green(cli::symbol$tick), " ",
    format(attached, width = max(nchar(attached))),
    " ",
    cli::col_silver(versions[!is.na(versions)])
  )
  packageStartupMessage(
    cli::rule(left = cli::style_bold("Attaching core surveyverse packages")),
    "\n",
    paste(bullets, collapse = "\n")
  )
}
# nocov end
