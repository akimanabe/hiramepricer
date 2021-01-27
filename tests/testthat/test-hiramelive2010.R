context("test hiramelive_2010")

data(hiramelive_2010)
year <- 2010

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2010 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2010 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2010/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2010 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    61)

  expect_identical(
    hiramelive_2010 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    180570
  )

})
