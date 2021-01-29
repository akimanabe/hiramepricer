context("test hiramelive_2017")

data(hiramelive_2017)
year <- 2017

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2017 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2017 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2017/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2017 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    30
  )

  expect_identical(
    hiramelive_2017 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    92070
  )

})
