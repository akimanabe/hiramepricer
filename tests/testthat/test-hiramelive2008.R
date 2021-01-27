context("test hiramelive_2008")

data(hiramelive_2008)
year <- 2008

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2008 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2008 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2008 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    4747)

  expect_identical(
    hiramelive_2008 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    18141642
  )

})
