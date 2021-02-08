context("test hiramelive_2018")

data(hiramelive_2018)
year <- 2018

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2018 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2018 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2018/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2018 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    491
  )

  expect_identical(
    hiramelive_2018 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    2017104
  )

})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2018 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2018 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2018 %>%
      dplyr::filter(Year == 2018,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2018-01-01")
  )
})
