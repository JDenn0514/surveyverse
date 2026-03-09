# tests/testthat/helper-test-data.R
#
# Shared test infrastructure loaded automatically by testthat.

#' @keywords internal
test_invariants <- function(obj) {
  expect_true(!is.null(obj))
}
