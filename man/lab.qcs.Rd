% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lab.qcs.R
\name{lab.qcs}
\alias{lab.qcs}
\alias{print.lab.qcs}
\alias{summary.lab.qcs}
\title{Create an object of class 'lab.qcs' to perform statistical quality control.
This function is used to compute statistics required for plotting Statitics}
\usage{
lab.qcs(x, ...)

\method{print}{lab.qcs}(x, ...)

\method{summary}{lab.qcs}(object, ...)
}
\arguments{
\item{x}{Object lab.qcdata (Functional Quality Control Data)}

\item{...}{Arguments passed to or from methods.}

\item{object}{A \code{lab.qcs} object for which a summary is desired.}
}
\description{
It develops an object of \code{lab.qcs}-code{link{class}} to perform statistical quality control.
This function is used to compute the requested statistics to be summarized and ploted.
}
\examples{

library(ILS)
data(Glucose)
Glucose.qcdata <- lab.qcdata(Glucose)
str(Glucose.qcdata)
Glucose.qcs <- lab.qcs(Glucose.qcdata)
str(Glucose.qcs)
summary(Glucose.qcs)
}
