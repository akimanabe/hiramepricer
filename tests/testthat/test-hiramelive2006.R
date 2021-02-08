context("test hiramelive_2006")

data(hiramelive_2006)
year <- 2006

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2006 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2006 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2006/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2006 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    140)

  expect_identical(
    hiramelive_2006 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    812056
  )
})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2006 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2006 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2006 %>%
      dplyr::filter(Year == 2006,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2006-01-01")
  )
})
