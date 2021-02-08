context("hiramefresh 2002")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2002 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 214
    )

  expect_identical(
    hiramefresh_2002 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2002 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2003")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2003 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 336
  )

  expect_identical(
    hiramefresh_2003 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2003 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2004")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2004 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 654
  )

  expect_identical(
    hiramefresh_2004 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2004 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2005")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2005 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 1530
  )

  expect_identical(
    hiramefresh_2005 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2005 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2006")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2006 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 1859
  )

  expect_identical(
    hiramefresh_2006 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2006 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2007")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2007 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 1053
  )

  expect_identical(
    hiramefresh_2007 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2007 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2008")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2008 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 350
  )

  expect_identical(
    hiramefresh_2008 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2008 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2009")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2009 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 682
  )

  expect_identical(
    hiramefresh_2009 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2009 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2010")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2010 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 575
  )

  expect_identical(
    hiramefresh_2010 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2010 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2011")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2011 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 1601
  )

  expect_identical(
    hiramefresh_2011 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2011 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2012")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2012 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 2729
  )

  expect_identical(
    hiramefresh_2012 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2012 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2013")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2013 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 852
  )

  expect_identical(
    hiramefresh_2013 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2013 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2014")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2014 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 262
  )

  expect_identical(
    hiramefresh_2014 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2014 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2015")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2015 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 312
  )

  expect_identical(
    hiramefresh_2015 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2015 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2016")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2016 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 191
  )

  expect_identical(
    hiramefresh_2016 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2016 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2017")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2017 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 962
  )

  expect_identical(
    hiramefresh_2017 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2017 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2018")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2018 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 888
  )

  expect_identical(
    hiramefresh_2018 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2018 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2019")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2019 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 5507
  )

  expect_identical(
    hiramefresh_2019 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2019 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})

context("hiramefresh 2020")

test_that("Price for January Hokkaido is parsed properly", {
  expect_identical(
    hiramefresh_2020 %>%
      dplyr::filter(Month == 01,
                    Location == "北海道") %>%
      dplyr::pull(Quantity) %>%
      unique(), 3122
  )

  expect_identical(
    hiramefresh_2020 %>%
      dplyr::pull(Meigara) %>%
      unique, "Fresh"
  )

  expect_identical(
    hiramefresh_2020 %>%
      dplyr::pull(Species) %>%
      unique, "ひらめ"
  )
})
