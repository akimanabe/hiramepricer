context("load_price")

test_that("function exists", {
  expect_is(load_price, "function")
})

test_that("function combines years properly", {
  expect_equal(
    load_price() %>%
    dplyr::pull(Year) %>%
    unique(),
    c(2002:2020)
  )
})

test_that("function reads 40 prefecs", {
  expect_equal(
    load_price() %>%
      dplyr::pull(Location) %>%
      unique() %>%
      length(),
    42
  )
})

test_that("function combines live and fresh meigaras", {
  expect_equal(
    load_price() %>%
      dplyr::pull(Meigara) %>%
      unique(),
    c("Fresh", "Live")
  )
})
