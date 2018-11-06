\name{plotRegions}
\alias{plotRegions}
\title{
Genomic Copy Number Plotting Function
}
\description{
To be used internally by the package only.

This function plots the chromosomal regions (segments) with colored segments based on the cutoff.
This function was built based on "plotSample" function in "CopyNumber450k" package (http://www.bioconductor.org/packages/release/bioc/html/CopyNumber450k.html), and uses a modified "minor.tick" function in "Hmisc" package to draw small tick in the plots.
}
\usage{
plotRegions(object, chr, start, end, cutoff = 0.1, markers = 20, ...)
}
\arguments{
  \item{object}{
  Data object, as returned by \code{\link{ReadData}}.
}
  \item{chr}{
    Chromosomes to plot.
  }
  \item{start}{
    Start positions of region to plot.
  }
  \item{end}{
    End position of region to plot.
  }
  \item{cutoff}{
    Log R ratio cutoff.
  }
  \item{markers}{
    Minimum number of markers per segment cutoff. Less than this number the segment will not be plotted.
  }
  \item{\dots}{
    Sent to \code{\link{plot}}.
}
}
\examples{
#To be used internally by the package only

# the package contains example files: regions.csv and sample_list.csv
#to load the example regions.csv and sample_list.csv files
regions <- system.file("extdata", "regions.csv", package="CopyNumber450kCancer")
sample_list <- system.file("extdata", "sample_list.csv", package="CopyNumber450kCancer")

# Creat the object for the package
object <- ReadData(regions,sample_list) 

#to plot all the regions and all the sampls in one plot
plotRegions(object$regions)
}