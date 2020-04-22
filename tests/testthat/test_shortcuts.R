context("shortcuts")

s <- shortcuts(wyz.code.offensiveProgramming::retrieveFunctionArgumentNames(GenerationContext))

test_that("shortcuts", {
  expect_length(s, 4L)
  expect_length(unlist(s), 34L)
})
