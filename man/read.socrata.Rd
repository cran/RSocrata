\name{read.socrata}
\alias{read.socrata}
\title{Get a full Socrata data set as an R data frame}
\usage{
  read.socrata(url)
}
\arguments{
  \item{url}{Socrata Open Data Application Program
  Interface (SODA) query requesting a comma-separated
  download format (.csv suffix), which may include SoQL
  parameters, but is assumed to not include a SODA offset
  parameter}
}
\value{
  an R data frame with POSIX dates
}
\description{
  Manages throttling and POSIX date-time conversions
}
\examples{
earthquakes <- read.socrata("http://soda.demo.socrata.com/resource/4334-bgaj.csv")
}
\author{
  Hugh J. Devlin, Ph. D.
  \email{Hugh.Devlin@cityofchicago.org}
}

