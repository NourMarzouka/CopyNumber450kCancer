\name{ReviewPlot}
\alias{ReviewPlot}
\title{
Interactive Plots for Baseline Correction in Copy Number Data
}
\description{
CopyNumber450kCancer provides graphical interactive plots as an option to supervise/review the baseline estimation. The user can click on the LRR levels where the baseline should be located in between. The segments in the defined range will be selected and the user will be asked to choose one of two options for how the new baseline should be calculated. The first option is the weighted median for the LRRs with the respect of the number of the probes each segment. The second option is the local highest peak in the probes density function. For the reviewing step, we strongly recommend to use any other information (ex. karyotyping) those can help the user in deciding. 

This function uses modified "weighted.median" function from isotone package.
}
\usage{
ReviewPlot(object, select, plots = TRUE, cutoff = 0.1, markers = 20, ...)
}
\arguments{
  \item{object}{
    Data object, as returned by \code{\link{ReadData}}.
  }
  \item{select}{
The number of the samples the you want to review of modify the baseline for them, if not specified then all the samples in the sample list will be selected
}
  \item{plots}{
To get plots after the revieing all the selected samples (default is TURE) 
if FALSE then you will get only the new segments file (reviewed_regions) and a file contains the recording of the reviewing process.
}
  \item{cutoff}{
The cutoff to be used in the ploting only, the data or the new segments file will not be affected (default: 0.1)
}
  \item{markers}{
  The minimum number of the probes required in the segment to be plotted (default: 20)
}
  \item{\dots}{
    Sent to \code{\link{plotRegions}}.
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
