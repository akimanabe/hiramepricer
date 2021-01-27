context("test hiramelive_2012")

data(hiramelive_2012)
year <- 2012

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2012 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2012 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2012 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    27787
    )

  expect_identical(
    hiramelive_2012 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    51845970
  )

})
