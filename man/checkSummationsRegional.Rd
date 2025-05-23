% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/checkSummationsRegional.R
\name{checkSummationsRegional}
\alias{checkSummationsRegional}
\title{Checks for a run if the regions for selected variables sum up as expected}
\usage{
checkSummationsRegional(
  mifFile,
  parentRegion = NULL,
  childRegions = NULL,
  variables = NULL,
  skipUnits = c("", "arbitrary unit", "arbitrary unit/yr"),
  skipBunkers = NULL,
  intensiveUnits = TRUE,
  absDiff = 1e-04,
  relDiff = 0.1
)
}
\arguments{
\item{mifFile}{path to the mif file to apply summation checks to, or quitte object}

\item{parentRegion}{region to sum up to. Defaults to World or GLO}

\item{childRegions}{regions that should sum up to \code{parentRegion}. Default to all except parentRegion}

\item{variables}{list of variables to check. Defaults to all in mifFile}

\item{skipUnits}{units to be skipped. Add TRUE to add the list of units pointing towards
their variable being intensive.}

\item{skipBunkers}{set to TRUE to skip AR6 variables that contain bunkers only at the global level}

\item{intensiveUnits}{intensive units where the global value should not be the sum, but instead lie between
the regional values. Set to TRUE to get list of units pointing towards their variable being intensive.
You can also use c(TRUE, "additionalunit").}

\item{absDiff}{threshold for absolute difference between parent variable and summation}

\item{relDiff}{threshold (in percent) for relative difference between parent variable and summation}
}
\description{
Checks for a run if the regions for selected variables sum up as expected
}
\examples{
\dontrun{
checkSummationsRegional(
  mifFile = "path/to/file",
  childRegions = c("R5ASIA", "R5LAM", "R5MAF", "R5OECD90+EU", "R5REF"),
  parentRegion = "World",
  variables = c("Final Energy|Industry", "Emissions|CO2|Energy|Demand|Industry")
)
}
}
\author{
Falk Benke
}
