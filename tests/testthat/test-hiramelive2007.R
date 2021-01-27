context("test hiramelive_2007")

data(hiramelive_2007)
year <- 2007

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2007 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2007 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2007 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    2927)

  expect_identical(
    hiramelive_2007 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    12016796
  )

})
