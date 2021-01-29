context("test hiramelive_2007")

data(hiramelive_2007)
year <- 2007

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2007 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2007 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2007/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2007 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    210)

  expect_identical(
    hiramelive_2007 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    1088391
  )
})
