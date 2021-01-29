#' Convert Japanese year to AD
#'
#' @param jpyear vector of Japanese years
#'
#' @return numeric vector
#' @export

jy2ad <- function(jpyear) {

  jpyear_halfwidth <- jpyear %>%
    stringi::stri_trans_nfkc() %>%
    stringr::str_replace(pattern = "元", replacement = "1")

  showa <-
    stringr::str_match(jpyear_halfwidth, "S.+|昭.+") %>%
    stringr::str_extract("\\d?\\d") %>%
    as.numeric() %>%
    + 1925

  heisei <-
    stringr::str_match(jpyear_halfwidth, "H.+|平.+") %>%
    stringr::str_extract(., "\\d?\\d") %>%
    as.numeric() %>%
    + 1988

  reiwa <-
    stringr::str_match(jpyear_halfwidth, "R.+|令.+") %>%
    stringr::str_extract(., "\\d?\\d") %>%
    as.numeric() %>%
    + 2018


  adyear <- dplyr::coalesce(showa, heisei, reiwa)

  return(adyear)

}
