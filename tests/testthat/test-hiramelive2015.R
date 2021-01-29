context("test hiramelive_2015")

data(hiramelive_2015)
year <- 2015

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2015 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2015 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2015/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2015 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    1
  )

  expect_identical(
    hiramelive_2015 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    518
  )

})
