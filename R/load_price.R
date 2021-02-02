#' load price data for live hirame in Tokyo Central Market
#'
#' @return tibble with price of live hirame in Tokyo
#' @export
#'
#' @examples
#' \dontrun{
#' load_price()
#' }
load_price <-
  function(){
  hiramelive_2002 %>%
    dplyr::bind_rows(hiramelive_2003,
                     hiramelive_2004,
                     hiramelive_2005,
                     hiramelive_2006,
                     hiramelive_2007,
                     hiramelive_2008,
                     hiramelive_2009,
                     hiramelive_2010,
                     hiramelive_2011,
                     hiramelive_2012,
                     hiramelive_2013,
                     hiramelive_2014,
                     hiramelive_2015,
                     hiramelive_2016,
                     hiramelive_2017,
                     hiramelive_2018,
                     hiramelive_2019,
                     hiramelive_2020)
}
