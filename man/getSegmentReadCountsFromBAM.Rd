% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getSegmentReadCountsFromBAM.R
\name{getSegmentReadCountsFromBAM}
\alias{getSegmentReadCountsFromBAM}
\title{Calculation of read counts from BAM files for predefined segments.}
\usage{
getSegmentReadCountsFromBAM(BAMFiles, GR, sampleNames, parallel = 0, ...)
}
\arguments{
\item{BAMFiles}{BAMFiles}

\item{GR}{A genomic ranges object that contains the genomic coordinates of
the segments.}

\item{sampleNames}{The corresponding sample names to the BAM Files.}

\item{parallel}{The number of parallel processes to be used for this function.
Default=0.}

\item{...}{Additional parameters passed to the function "countBamInGRanges" 
of the Bioconductor package "exomeCopy". Quality filters for read counts can 
be adjusted there. Please see "??countBamInGRanges" for more information.}
}
\value{
An instance of "GRanges", that contains the breakpoints of the 
initial segments and the raw read counts that were extracted from the BAM
files. This object can be used as input for cn.mops and other CNV detection
methods.
}
\description{
Generates the read counts from BAM Files for predefined segments. 
This is the appropiate choice for exome sequencing data, where the
bait regions, target regions or exons are the predefined segments.
These counts are necessary for CNV detection methods based
on depth of coverage information.

This function can also be run in a parallel version.
}
\examples{
BAMFiles <- list.files(system.file("extdata", package="cn.mops"),pattern=".bam$", full.names=TRUE)
gr <- GRanges(c("20","20"),IRanges(c(60000,70000),c(70000,80000)))
bamDataRanges <- getSegmentReadCountsFromBAM(BAMFiles,GR=gr)
bamDataRanges <- getSegmentReadCountsFromBAM(BAMFiles,GR=gr,parallel=2)
}
\author{
Guenter Klambauer \email{klambauer@bioinf.jku.at}
}
