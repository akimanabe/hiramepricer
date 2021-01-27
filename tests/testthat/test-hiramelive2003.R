context("test hiramelive_2003")

data(hiramelive_2003)
year <- 2003

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2003 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2003 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2003/01 Hokkaido quantity is correctly parsed", {
  expect_identical(
    hiramelive_2003 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    156)
})

test_that("2003/01 Hokkaido total price is correctly parsed",{
  expect_identical(
    hiramelive_2003 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    607670
  )
})
