context("test hiramelive_2011")

data(hiramelive_2011)
year <- 2011

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2011 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2011 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2011 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    21632)

  expect_identical(
    hiramelive_2011 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    45541862
  )

})
