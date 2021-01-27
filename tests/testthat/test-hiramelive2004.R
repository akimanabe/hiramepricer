context("test hiramelive_2004")

data(hiramelive_2004)
year <- 2004

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2004 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2004 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2004 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    3244)

  expect_identical(
    hiramelive_2004 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    10531551
  )

})
