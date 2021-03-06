% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calcIntegerCopyNumbers.R
\docType{methods}
\name{calcIntegerCopyNumbers,CNVDetectionResult-method}
\alias{calcIntegerCopyNumbers,CNVDetectionResult-method}
\title{Calculation of integer copy numbers for the CNVs and CNV regions.}
\usage{
\S4method{calcIntegerCopyNumbers}{CNVDetectionResult}(object)
}
\arguments{
\item{object}{An instance of "CNVDetectionResult"}
}
\value{
\code{calcIntegerCopyNumbers} returns an 
instance of "CNVDetectionResult".
}
\description{
This generic function calculates the integer copy numbers of
 a CNV detection method stored in an instance of 
\code{\link{CNVDetectionResult-class}}.
}
\examples{
data(cn.mops)
r <- cn.mops(X[1:100,1:5])
calcIntegerCopyNumbers(r)
}
\author{
Guenter Klambauer \email{klambauer@bioinf.jku.at}
}
