context("test hiramelive_2009")

data(hiramelive_2009)
year <- 2009

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2009 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2009 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2009/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2009 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    221)

  expect_identical(
    hiramelive_2009 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    1068106
  )

})
