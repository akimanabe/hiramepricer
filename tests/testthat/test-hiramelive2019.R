context("test hiramelive_2019")

data(hiramelive_2019)
year <- 2019

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2019 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2019 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2019/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2019 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    104
  )

  expect_identical(
    hiramelive_2019 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    290454
  )

})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2019 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2019 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2019 %>%
      dplyr::filter(Year == 2019,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2019-01-01")
  )
})
