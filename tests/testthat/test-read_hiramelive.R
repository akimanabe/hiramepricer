context("read_hiramelive")

path2002 <- "../../data-raw/excel/2002_hiramelive.csv"

test_that("function exists", {
  expect_is(read_hiramelive, "function")
})

test_that("function reads and shapes csv properly", {
  hirame2002 <- read_hiramelive(path2002)

  expect_is(hirame2002, "data_frame")
  expect_equal(hirame2002 %>%
                 dplyr::filter(Location == "北海道",
                               Type == "Quantity",
                               Year == "2002",
                               Month == "1"),
               23)
})
