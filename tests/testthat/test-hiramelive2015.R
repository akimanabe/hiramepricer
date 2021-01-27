context("test hiramelive_2015")

data(hiramelive_2015)
year <- 2015

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2015 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2015 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2015 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    22923
  )

  expect_identical(
    hiramelive_2015 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    50855090
  )

})
