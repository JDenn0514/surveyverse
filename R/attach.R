core <- c("surveycore", "surveytidy", "surveyweights")

#' List all surveyverse packages
#'
#' @return A character vector of core surveyverse package names.
#' @export
surveyverse_packages <- function() {
  core
}

surveyverse_attach <- function() {
  to_attach <- core[!is_attached(core)]
  if (length(to_attach) == 0) {
    return(invisible())
  }
  suppressPackageStartupMessages(
    lapply(to_attach, library, character.only = TRUE, warn.conflicts = FALSE)
  )
  invisible()
}

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}

#' @importFrom utils packageVersion
surveyverse_versions <- function(pkgs = core) {
  vapply(pkgs, function(p) {
    tryCatch(
      as.character(packageVersion(p)),
      error = function(e) NA_character_
    )
  }, character(1))
}
