\name{PlotCNV}
\alias{PlotCNV}
\title{
Plot the CNV Regions with the Density Plot
}
\description{
Uses the regions object, this function will plot the last modified regions object (i.e. after the autocorrection or the reviewing)
}
\usage{
PlotCNV(object, select, comment = FALSE, cutoff = 0.1, markers = 20)
}
\arguments{
  \item{object}{
    Data object, as returned by \code{\link{ReadData}}.
  }
  \item{select}{
  The number of the samples to be reviewed, if not determined then all the samples in the sample list will be selected
}
  \item{comment}{
  If TRUE then the comment in the sample list file will be printed in the header of the plots, default is FALSE
}
  \item{cutoff}{
  cutoff for the segments coloring , default is cutoff = 0.1
}
  \item{markers}{
    the minimum number of markers in the segment to be plotted, default is markers = 20
  }
}

\examples{
#example
# the package contains example files: regions.csv and sample_list.csv
#to load the example regions.csv and sample_list.csv files
regions <- system.file("extdata", "regions.csv", package="CopyNumber450kCancer")
sample_list <- system.file("extdata", "sample_list.csv", package="CopyNumber450kCancer")

# Creat the object for the package
object <- ReadData(regions,sample_list) 

# Baseline autocorrection, 
# this will creat different plot and QC and new regions file in the working directory
object <- AutoCorrectPeak(object)

# For manual revision and manual baseline determination
# object <- ReviewPlot(object)

# To plot the final plots
PlotCNV(object) # to plot all the samples
PlotCNV(object, select= c(1,4), comment=FALSE, cutoff=0.1, markers=20) # to plot some samples
}
