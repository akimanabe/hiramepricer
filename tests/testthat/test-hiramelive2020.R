context("test hiramelive_2020")

data(hiramelive_2020)
year <- 2020

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2020 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2020 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2020/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2020 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    573
  )

  expect_identical(
    hiramelive_2020 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    1691990
  )

})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2020 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2020 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2020 %>%
      dplyr::filter(Year == 2020,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2020-01-01")
  )
})
