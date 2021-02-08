context("test hiramelive_2008")

data(hiramelive_2008)
year <- 2008

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2008 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2008 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2008/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2008 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    72)

  expect_identical(
    hiramelive_2008 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    302381
  )

})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2008 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2008 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2008 %>%
      dplyr::filter(Year == 2008,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2008-01-01")
  )
})
