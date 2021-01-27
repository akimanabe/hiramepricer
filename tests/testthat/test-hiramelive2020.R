context("test hiramelive_2020")

data(hiramelive_2020)
year <- 2020

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2020 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2020 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2020 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    6381
  )

  expect_identical(
    hiramelive_2020 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    16758205
  )

})
