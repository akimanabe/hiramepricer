context("test hiramelive_2006")

data(hiramelive_2006)
year <- 2006

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2006 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2006 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2006 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    4859)

  expect_identical(
    hiramelive_2006 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    16052469
  )

})
