context("test hiramelive_2009")

data(hiramelive_2009)
year <- 2009

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2009 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2009 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2009/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2009 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    221)

  expect_identical(
    hiramelive_2009 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    1068106
  )

})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2009 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2009 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2009 %>%
      dplyr::filter(Year == 2009,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2009-01-01")
  )
})
