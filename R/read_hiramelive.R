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
    suppressMessages(
      readr::read_csv(fname,
                      col_names = FALSE)
    ) %>%
      dplyr::mutate(
        Names = stringr::str_extract(
          dplyr::slice(., 1) %>%
            dplyr::select(X1),
          "(?<=（).+(?=）)"
        )) %>%
      dplyr::filter(!is.na(X3)) %>%
      dplyr::mutate(X2 = replace(X2, X1 == "出荷地", "Type")) %>%
      magrittr::set_colnames(., dplyr::slice(., 1)) %>%
      dplyr::rename(Location = 1,
                    Type = 2,
                    Sum = 3,
                    Species = 16) %>%
      dplyr::select(-Sum) %>%
      dplyr::filter(Location != "出荷地") %>%
      tidyr::pivot_longer(cols = -c(1, 2, 15), names_to = "Yearmonth", values_to = "Value") %>%
      dplyr::filter(Location != "合計") %>%
      dplyr::mutate(Year = stringr::str_extract(Yearmonth, "平成[1-3][0-9]|令和[0]?[1-9]|令和元"),
                    Month = stringr::str_extract(Yearmonth, "\\d?\\d(?=月)"),
                    Year = jy2ad(Year),
                    Month = as.double(Month)) %>%
      dplyr::mutate(Value = stringr::str_extract(Value, "0|\\d\\d*")) %>%
      dplyr::mutate(Value = as.double(Value),
                    Type = factor(Type)) %>%
      dplyr::mutate(Type = dplyr::recode(Type,
                                         '数量' = "Quantity",
                                         '金額' = "Price",
                                         '平均価格' = "Avg_price")) %>%
      dplyr::mutate(Meigara = stringr::str_extract(Species, "活"),
                    Meigara = dplyr::recode(Meigara,
                                            "活" = "Live"),
                    Meigara = tidyr::replace_na(Meigara, "Fresh"),
                    Species = stringr::str_remove(Species, "活|（国内）")) %>%
      dplyr::mutate(Date = as.Date(paste(Year, Month, "01", sep = "-"))) %>%
      dplyr::select(Date, Year, Month, Location, Species, Meigara, Type, Value) %>%
      tidyr::pivot_wider(names_from = "Type", values_from = "Value")
  }
