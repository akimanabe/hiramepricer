context("test hiramelive_2017")

data(hiramelive_2017)
year <- 2017

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2017 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2017 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2017 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    9368
  )

  expect_identical(
    hiramelive_2017 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    27068460
  )

})
