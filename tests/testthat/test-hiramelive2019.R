context("test hiramelive_2019")

data(hiramelive_2019)
year <- 2019

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2019 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2019 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2019 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    8046
  )

  expect_identical(
    hiramelive_2019 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    23500539
  )

})
