context("test hiramelive_2021")

data(hiramelive_2021)
year <- 2021

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2021 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:6) # because the file is 6 months data!
  )

  expect_identical(
    hiramelive_2021 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2021/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2021 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    20
  )

  expect_identical(
    hiramelive_2021 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    19904
  )

})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2021 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2021 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2021 %>%
      dplyr::filter(Year == 2021,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2021-01-01")
  )
})
