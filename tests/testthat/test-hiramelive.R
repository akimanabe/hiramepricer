context("test hiramelive_2002")

data(hiramelive_2002)
year <- 2002

test_that("2002/1-12 data are correctly parsed", {
  expect_identical(
    hiramelive_2002 %>%
    dplyr::pull(Month) %>%
    unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2002 %>%
      dplyr::pull(Year) %>%
      unique(), 2002
  )

  expect_identical(
    hiramelive_2002 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    23)

  expect_identical(
    hiramelive_2002 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    142811
  )

})
