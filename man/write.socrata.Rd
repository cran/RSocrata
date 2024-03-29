% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RSocrata.R
\name{write.socrata}
\alias{write.socrata}
\title{Write to a Socrata dataset (full replace or upsert)}
\usage{
write.socrata(
  dataframe,
  dataset_json_endpoint,
  update_mode,
  email,
  password,
  app_token = NULL
)
}
\arguments{
\item{dataframe}{- dataframe to upload to Socrata}

\item{dataset_json_endpoint}{- Socrata Open Data Application Program Interface (SODA) endpoint (JSON only for now)}

\item{update_mode}{- "UPSERT" or "REPLACE"; consult https://dev.socrata.com/publishers/getting-started.html}

\item{email}{- The email to the Socrata account with read access to the dataset}

\item{password}{- The password associated with the email to the Socrata account}

\item{app_token}{- a (non-required) string; SODA API token can be used to query the data 
portal \url{https://dev.socrata.com/consumers/getting-started.html}}
}
\description{
Method for updating Socrata datasets
}
\examples{
\dontrun{
# Store user email and password
socrataEmail <- Sys.getenv("SOCRATA_EMAIL", "mark.silverberg+soda.demo@socrata.com")
socrataPassword <- Sys.getenv("SOCRATA_PASSWORD", "7vFDsGFDUG")

datasetToAddToUrl <- "https://soda.demo.socrata.com/resource/xh6g-yugi.json" # dataset

# Generate some data
x <- sample(-1000:1000, 1)
y <- sample(-1000:1000, 1)
df_in <- data.frame(x,y)

# Upload to Socrata
write.socrata(df_in,datasetToAddToUrl,"UPSERT",socrataEmail,socrataPassword)
}
}
\author{
Mark Silverberg \email{mark.silverberg@socrata.com}
}
