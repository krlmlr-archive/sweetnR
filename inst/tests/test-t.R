context("t")

test_that("result equivalence of tc", {
  expect_equal(c(1:5), tc(1:5), info="simple sequence")
  expect_equal(c(1:5), tc(1:5, ), info="simple sequence with extra comma")
  expect_equal(c(1, 2, 3), tc(1, 2, 3), info="individual parameters")
  expect_equal(c(1, 2, 3), tc(1, 2, 3, ), info="individual parameters with comma")
  expect_equal(c(1L, "2", 3.4), tc(1L, "2", 3.4), info="coercion")
  expect_equal(c(1L, "2", 3.4), tc(1L, "2", 3.4, ), info="coercion with comma")
})

test_that("result equivalence of tlist", {
  expect_equal(list(1:5), tlist(1:5), info="simple sequence")
  expect_equal(list(1:5), tlist(1:5, ), info="simple sequence with extra comma")
  expect_equal(list(1, 2, 3), tlist(1, 2, 3), info="individual parameters")
  expect_equal(list(1, 2, 3), tlist(1, 2, 3, ), info="individual parameters with comma")
  expect_equal(list(1L, "2", 3.4), tlist(1L, "2", 3.4), info="coercion")
  expect_equal(list(1L, "2", 3.4), tlist(1L, "2", 3.4, ), info="coercion with comma")
})
