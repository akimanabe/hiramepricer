context("jy2ad")

test_that("jy2ad() converts JP years into AD years", {
  single_alphabet <- c(paste0("S", seq(59, 63)), paste0("H", seq(1, 11)))
  kanji           <- c(paste0("昭和", seq(59, 63)), paste0("平成", seq(1, 11)))
  single_kanji    <- c(paste0("昭 ", seq(59, 63)), paste0("平 ", seq(1, 11)))

  expected <- 1984:1999

  expect_equal(jy2ad(single_alphabet),     expected)
  expect_equal(jy2ad(kanji),               expected)
  expect_equal(jy2ad(single_kanji),        expected)
})

context("sort_prefec")

test_that("sort prefec sorts prefec names correctly", {
  expect_is(sort_prefec, "function")
  expect_is(sort_prefec(c("茨城", "北海道")), "factor")
  expect_equal(sort_prefec(c("千葉")) %>%
                     levels() %>%
                     length(), 47)
})

context("prefec_eng")

test_that("prefec eng convert prefec to English", {
  expect_is(prefec_eng, "function")
  expect_equal(sort_prefec(c("千葉")) %>%
                 levels() %>%
                 prefec_eng() %>%
                 .[1],
               "Hokkaido")
})
