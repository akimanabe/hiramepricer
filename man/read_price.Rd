% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_price.R
\name{read_price}
\alias{read_price}
\title{Read market price stats for Tokyo central market}
\usage{
read_price(fname)
}
\arguments{
\item{fname}{file name}
}
\value{
tibble with hirame quantity, total_price, and average_price
}
\description{
Read market price stats for Tokyo central market
}
\examples{
\dontrun{
read_price("../data-raw/excel/2002_hiramelive.csv")
}
}
