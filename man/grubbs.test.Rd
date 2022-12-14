% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lab.qcs.R
\name{grubbs.test}
\alias{grubbs.test}
\alias{grubbs.test.default}
\alias{grubbs.test.lab.qcdata}
\title{Function to compute the Grubbs test statistic.}
\usage{
grubbs.test(x, ...)

\method{grubbs.test}{default}(
  x,
  var.index = 1,
  replicate.index = 2,
  material.index = 3,
  laboratory.index = 4,
  data.name = NULL,
  alpha = 0.05,
  ...
)

\method{grubbs.test}{lab.qcdata}(x, alpha = 0.05, ...)
}
\arguments{
\item{x}{an R object (used to select the method). See details.}

\item{...}{arguments passed to or from methods.}

\item{var.index}{Scalar with the column number corresponding to the observed variable (the critical to quality variable). 
Alternatively, a string with the name of a quality variable can be provided.}

\item{replicate.index}{Scalar with the column number corresponding to the index each replicate.}

\item{material.index}{Scalar corresponding to the replicated number.}

\item{laboratory.index}{Scalar that defines the index number of each laboratory.}

\item{data.name}{String specifying the name of the variable which appears on the plots. 
If name is not provided, it is retrieved from the object.}

\item{alpha}{The significance level (0.05 for default)}
}
\description{
Function to estimate the Grubbs test statistic.
}
\examples{

library(ILS)
data(Glucose)
Glucose.qcdata<- lab.qcdata(Glucose)
str(Glucose.qcdata)
grubbs.test(Glucose.qcdata)
}
\references{
\describe{
  \item{}{Wilrich Peter-T. (2013), Critical values of Mandel's h and k, 
  the Grubbs and the Cochran test statistic. Asta-Advances in Statistical Analysis, 97(1):1-10.}
  \item{}{ASTM E 691 (1999), Standard practice for conducting an interlaboratory study 
  to determine the precision of a test method. American Society for Testing and Materials. West Conshohocken, PA, USA.}
}
}
