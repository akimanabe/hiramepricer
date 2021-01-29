context("read_hiramelive")


test_that("function exists", {
  expect_is(read_hiramelive, "function")
})



test_that("function reads and shapes csv properly", {
  path2002 <- "excel/test_hiramelive.csv"

  hirame2002 <- read_hiramelive(path2002)

  expect_is(hirame2002, "data.frame")

  expect_equal(hirame2002 %>%
                 dplyr::filter(Location == "北海道",
                               Year == "2002",
                               Month == "1") %>%
                 dplyr::pull(quantity),
               23)

  expect_equal(hirame2002 %>%
                 dplyr::mutate(avg = total_price / quantity) %>%
                 dplyr::mutate(diff = average_price - avg) %>%
                 dplyr::mutate(diff = round(diff)) %>%
                 dplyr::pull(diff) %>%
                 unique(),
               c(0, NA)
               )
})
