context("test hiramelive_2012")

data(hiramelive_2012)
year <- 2012

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2012 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2012 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2012/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2012 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    1485
    )

  expect_identical(
    hiramelive_2012 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    1875584
  )

})
