context("test hiramelive_2013")

data(hiramelive_2013)
year <- 2013

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2013 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2013 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2013/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2013 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    1096
  )

  expect_identical(
    hiramelive_2013 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    1623491
  )
})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2013 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2013 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2013 %>%
      dplyr::filter(Year == 2013,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2013-01-01")
  )
})
