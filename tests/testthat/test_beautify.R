context("beautify")

b <- beautify()

test_that("beautify", {
  expect_length(b, 31)
  lapply(b, function(e) {
    expect_true(is.function(e))
  })
})
