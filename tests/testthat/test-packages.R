test_that("surveyverse_packages() returns the correct packages", {
  pkgs <- surveyverse_packages()
  expect_type(pkgs, "character")
  expect_true("surveycore" %in% pkgs)
  expect_true("surveytidy" %in% pkgs)
  expect_true("surveyweights" %in% pkgs)
})
