context("test hiramelive_2016")

data(hiramelive_2016)
year <- 2016

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2016 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2016 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2016 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    1
  )

  expect_identical(
    hiramelive_2016 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    950
  )

})
