context("read_hiramelive")


test_that("function exists", {
  expect_is(read_hiramelive, "function")
})

path2002 <- "excel/test_hiramelive.csv"
hirame2002 <- read_hiramelive(path2002)


test_that("function reads and shapes csv properly", {
  expect_is(hirame2002, "data.frame")

  expect_equal(hirame2002 %>%
                 dplyr::filter(Location == "北海道",
                               Year == "2002",
                               Month == "1") %>%
                 dplyr::pull(Quantity),
               23)

  expect_equal(hirame2002 %>%
                 dplyr::mutate(avg = Price / Quantity) %>%
                 dplyr::mutate(diff = Avg_price - avg) %>%
                 dplyr::mutate(diff = round(diff)) %>%
                 dplyr::pull(diff) %>%
                 unique(),
               c(0, NA)
               )
})

test_that("function extracts species properly", {
  expect_identical(hirame2002 %>%
                     dplyr::pull(Species) %>%
                     unique(),
                   "ひらめ")
})

test_that("function extracts meigara properly", {
  expect_identical(hirame2002 %>%
                     dplyr::pull(Meigara) %>%
                     unique(),
                   "Live")
})

test_that("output has yearmonth column", {
  expect_is(hirame2002 %>%
              dplyr::pull(Date), "Date")

  expect_identical(hirame2002 %>%
                     dplyr::filter(Year == 2002,
                                   Month == 1,
                                   Location == "北海道") %>%
                     dplyr::pull(Date) %>%
                     unique() %>%
                     as.character(),
                   "2002-01-01")
})
