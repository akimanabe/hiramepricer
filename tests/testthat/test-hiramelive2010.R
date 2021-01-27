context("test hiramelive_2010")

data(hiramelive_2010)
year <- 2010

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2010 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2010 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2010 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    4378)

  expect_identical(
    hiramelive_2010 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    10431331
  )

})
