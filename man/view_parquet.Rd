% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readParquet.R
\name{view_parquet}
\alias{view_parquet}
\title{Create a database view of a specific data type}
\usage{
view_parquet(con, httpfs_url = NULL, data_type)
}
\arguments{
\item{con}{DuckDB connection object of class 'duckdb_connection'}

\item{data_type}{Single string: value found in the data_type' column of
output_file_types() and also as the name of a file in the repo of interest,
indicating which output file to retrieve.}
}
\description{
'view_parquet' creates a database view with the provided DuckDB
connection object. The view is created from a parquet file hosted at a
repo of interest (see inst/extdata/parquet_repos.csv). The specific
file is specified via the file name.
}
\examples{
\dontrun{
if(interactive()){
 con <- db_connect()

 view_parquet(con, "pathcoverage_unstratified")
 DBI::dbListTables(con)
 }
}
}
\seealso{
\code{\link[DBI]{dbExecute}}
}
