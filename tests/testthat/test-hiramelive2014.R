context("test hiramelive_2014")

data(hiramelive_2014)
year <- 2014

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2014 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2014 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2014 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    24162
  )

  expect_identical(
    hiramelive_2014 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    53174257
  )

})
