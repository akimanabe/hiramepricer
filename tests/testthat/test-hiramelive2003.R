context("test hiramelive_2003")

data(hiramelive_2003)
year <- 2003

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2003 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2003 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2003/01 Hokkaido quantity is correctly parsed", {
  expect_identical(
    hiramelive_2003 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    156)
})

test_that("2003/01 Hokkaido total price is correctly parsed",{
  expect_identical(
    hiramelive_2003 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    607670
  )
})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2003 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2003 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2003 %>%
      dplyr::filter(Year == 2003,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2003-01-01")
  )
})
