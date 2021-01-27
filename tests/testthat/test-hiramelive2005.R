context("test hiramelive_2005")

data(hiramelive_2005)
year <- 2005

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2005 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2005 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )

  expect_identical(
    hiramelive_2005 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    5245)

  expect_identical(
    hiramelive_2005 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    19540371
  )

})
