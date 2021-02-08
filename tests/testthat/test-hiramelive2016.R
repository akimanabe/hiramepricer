context("test hiramelive_2016")

data(hiramelive_2016)
year <- 2016

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2016 %>%
      dplyr::pull(Month) %>%
      unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2016 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2016/01 Hokkaido is correctly parsed", {
  expect_identical(
    hiramelive_2016 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(quantity),
    1
  )

  expect_identical(
    hiramelive_2016 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(total_price),
    950
  )

})

test_that("Species, meigara, and date are correctly parsed", {
  expect_identical(
    hiramelive_2002 %>%
      dplyr::pull(Species) %>%
      unique(), "ひらめ"
  )

  expect_identical(
    hiramelive_2002 %>%
      dplyr::pull(Meigara) %>%
      unique(), "Live"
  )

  expect_identical(
    hiramelive_2002 %>%
      dplyr::filter(Year == 2002,
                    Month == 1) %>%
      dplyr::pull(Date) %>%
      unique(),
    as.Date("2002-01-01")
  )
})
