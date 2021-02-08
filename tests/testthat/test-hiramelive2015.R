context("test hiramelive_2015")

data(hiramelive_2015)
year <- 2015

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2015 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2015 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2015/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2015 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    1
  )

  expect_identical(
    hiramelive_2015 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    518
  )

})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2015 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2015 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2015 %>%
      dplyr::filter(Year == 2015,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2015-01-01")
  )
})
