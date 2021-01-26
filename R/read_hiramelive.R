#' Read hirame (live) market stats for Tokyo central market
#'
#' @param fname file name
#'
#' @return tibble with hirame quantity, total_price, and average_price
#' @export
#'
#' @examples
#' \dontrun{
#' read_hiramelive("../data-raw/excel/2002_hiramelive.csv")
#' }
read_hiramelive <-
  function(fname){
    suppressWarnings(suppressMessages(
      readr::read_csv(fname))) %>%
      dplyr::filter(!is.na(X2)) %>%
      dplyr::rename(Location = 1) %>%
      magrittr::set_colnames(., dplyr::filter(.,Location=="出荷地")) %>%
      dplyr::rename(Location = 1,
                    Type = 2,
                    Sum = 3) %>%
      dplyr::select(-Sum) %>%
      dplyr::filter(Location != "出荷地") %>%
      tidyr::pivot_longer(cols = -c(1, 2), names_to = "Yearmonth", values_to = "Value") %>%
      dplyr::filter(Location != "合計") %>%
      dplyr::mutate(Year = stringr::str_extract(Yearmonth, "平成[1-2][0-9]|令和[1-9]"),
                    Month = stringr::str_extract(Yearmonth, "\\d?\\d(?=月)"),
                    Year = jy2ad(Year),
                    Month = as.double(Month)) %>%
      dplyr::mutate(Value = stringr::str_extract(Value, "0|\\d.+")) %>%
      dplyr::mutate(Value = as.double(Value),
                    Type = factor(Type)) %>%
      dplyr::mutate(Type = dplyr::recode(Type,
                                         '数量' = "quantity",
                                         '金額' = "total_price",
                                         '平均価格' = "average_price")) %>%
      dplyr::select(Year, Month, Location, Type, Value) %>%
      tidyr::pivot_wider(names_from = "Type", values_from = "Value")
  }


