context("test hiramelive_2014")

data(hiramelive_2014)
year <- 2014

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2014 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2014 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2014/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2014 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    256
  )

  expect_identical(
    hiramelive_2014 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    797093
  )
})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2014 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2014 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2014 %>%
      dplyr::filter(Year == 2014,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2014-01-01")
  )
})
