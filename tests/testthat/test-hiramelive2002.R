context("test hiramelive_2002")

data(hiramelive_2002)
year <- 2002

test_that("Month and Year are correctly parsed", {
  expect_equal(
    hiramelive_2002 %>%
    dplyr::pull(Month) %>%
    unique(), c(1:12)
  )

  expect_identical(
    hiramelive_2002 %>%
      dplyr::pull(Year) %>%
      unique(), year
  )
})

test_that("2002/01 Hokkaido quantity is correctly parsed", {
  expect_identical(
    hiramelive_2002 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Quantity),
    23)
})

test_that("2002/01 Hokkaido total price is correctly parsed", {
  expect_identical(
    hiramelive_2002 %>%
      dplyr::filter(Location == "北海道",
                    Month == 1) %>%
      dplyr::pull(Price),
    142811
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
