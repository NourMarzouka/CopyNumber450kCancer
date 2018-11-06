\name{AutoCorrectPeak}
\alias{AutoCorrectPeak}
\title{
This Function is the Main Function in CopyNumber450kCancer Package Which Correct the Baseline Based on the Density of the Probes/Segments
}
\description{
This function generate:\cr
1) a new segmentation file which is similar to the segmentation input but with the new log values, \cr
2) plots show the samples before and after the baseline correction, \cr
3) a QC file, \cr
4) a file contains the shifting amounts for each sample\cr

QC:\cr
There are no well-defined quality control (QC) standards for 450k data segmentation; therefore we selected different quality control standards those already used with the SNP arrays. QC file will be produced with these QC standards for each sample: \cr
1- Interquartile Range (IQR), \cr
2- Median Absolute Pairwise Difference (MAPD), \cr
3- number of the segments, \cr
4- standard deviation (SD), \cr
5- in the addition of a suggested QC standard named Maximum Density Peak Sharpness (MDPS). \cr

The QC values are calculated based on the log values of the segments but not the probes. CopyNumber450kCancer does not provide any QC thresholds because they are different from an experiment to another. The user can check the QC file and exclude the samples those have low quality QC values. We strongly recommend the visual reviewing for the segmentation plots as to recognize the low-quality samples.
}
\usage{
AutoCorrectPeak(object, cutoff = 0.1, markers = 20, ...)
}
\arguments{
  \item{object}{
    Data object, as returned by \code{\link{ReadData}}.
  }
  \item{cutoff}{
    The cutoff to be used in the ploting, the data or the new segments file will not be affected (default: 0.1)
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

