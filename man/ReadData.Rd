\name{ReadData}
\alias{ReadData}
\title{
Function Reads the Data (i.e. regions file and sample list file) for CopyNumber450kCancer
}
\description{
The input should be two files regions file and sample list file.\cr
regions file: contains the data for all the regions/segments in all the sample\cr
sample list file: contains the number of the samples, the names of the samples and user comment.

The header of the segments/regions file should be in this order and with these names:\cr
"Sample", "Chromosome", "bp.Start", "bp.End", "Num.of.Markers", "Mean".\cr
The segments file should have all the samples in one file
Be carful for the dots and it is case sensitive.

\tabular{ll}{
 Sample\tab Sample name\cr
 Chromosome\tab Chromosome number chr1, chr2, ....., chrX, chrY \cr
 bp.Start\tab number, start point for the segment \cr
 bp.End\tab end point for the segment \cr
 Num.of.Markers\tab Number of the probes or markers in the segment \cr
 Mean\tab is the log value for the segment (the mean of the log values for all the probes in the segment, it is the same value that is used in CopyNumber450k package)     \cr
}

The header of the sample list file should be in this order and with these names:
To check if the header of the sample list file is ok
"Number", "Sample", "Comment"\cr
Be carful it is case sensitive.

\tabular{ll}{
Number \tab is the number of the sample 1,2,3,....\cr
Sample \tab the name of the samples\cr
Comment \tab any comment the user want to see in the reviewing step and in the QC file, (ex. karyotyping)\cr

}



}
\usage{
ReadData(regions_file, Sample_list, copynumber450k = FALSE)
}
\arguments{
  \item{regions_file}{
  The segmentaion file (CSV file)
}
  \item{Sample_list}{
The CSV file that contains the names of the samples and the user comments
}
  \item{copynumber450k}{
True if the file is the output of copynumber450k, defualt is FALSE.
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
