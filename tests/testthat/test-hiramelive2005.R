context("test hiramelive_2005")

data(hiramelive_2005)
year <- 2005

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2005 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2005 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2005/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2005 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    28)

  expect_identical(
    hiramelive_2005 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    92874
  )
})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2005 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2005 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2005 %>%
      dplyr::filter(Year == 2005,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2005-01-01")
  )
})
