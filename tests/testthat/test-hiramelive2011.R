context("test hiramelive_2011")

data(hiramelive_2011)
year <- 2011

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2011 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2011 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2011/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2011 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    15)

  expect_identical(
    hiramelive_2011 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    40845
  )

})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2011 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2011 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2011 %>%
      dplyr::filter(Year == 2011,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2011-01-01")
  )
})
