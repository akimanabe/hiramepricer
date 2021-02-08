context("test hiramelive_2007")

data(hiramelive_2007)
year <- 2007

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2007 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2007 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2007/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2007 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    210)

  expect_identical(
    hiramelive_2007 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    1088391
  )
})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2007 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2007 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2007 %>%
      dplyr::filter(Year == 2007,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2007-01-01")
  )
})
