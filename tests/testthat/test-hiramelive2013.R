context("test hiramelive_2013")

data(hiramelive_2013)
year <- 2013

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2013 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2013 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2013 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    31439
  )

  expect_identical(
    hiramelive_2013 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    56425659
  )

})
