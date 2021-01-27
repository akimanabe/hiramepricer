context("test hiramelive_2003")

data(hiramelive_2003)
year <- 2003

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2003 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2003 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2003 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    4943)

  expect_identical(
    hiramelive_2003 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    16014588
  )

})
