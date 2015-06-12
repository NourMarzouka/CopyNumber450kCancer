\name{ReadData}
\alias{ReadData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
This function reads the data (i.e. regions file and sample list file)
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The input should be two files regions file and sample list file.
regions file: contains the data for all the regions/segments in all the sample
sample list file: contains the number of the samples, the names of the samples and user comment.

The header of the segments/regions file should be in this order and with these names:
"Sample", "Chromosome", "bp.Start", "bp.End", "Num.of.Markers", "Mean"
The segments file should have all the samples in one file
Be carful for the dots and it is case sensitive.
Sample: the sample name
Chromosome: the chromosome number chr1, chr2, ....., chrX, chrY
bp.Start: number, the start point for the segment
bp.End: number, the end point for the segment
Num.of.Markers: 
Mean: is the log value for the segment 

The header of the sample list file should be in this order and with these names:
To check if the header of the sample list file is ok
"Number", "Sample", "Comment"
Be carful it is case sensitive.
Number: is the number of the sample 1,2,3,....
Sample: the name of the samples
Comment: any comment the user want to see in the reviewing step and in the QC file, ex karyotyping.


}
\usage{
ReadData(regions_file, Sample_list, copynumber450k = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{regions_file}{
  The segmentaion file (CSV file)
%%     ~~Describe \code{regions_file} here~~
}
  \item{Sample_list}{
%%     ~~Describe \code{Sample_list} here~~
The CSV file that contains the names of the samples and the user comments
}
  \item{copynumber450k}{
%%     ~~Describe \code{copynumber450k} here~~
True if the file is the output of copynumber450k, defualt is FALSE.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#use the example files
# ReadData("regions.csv","sample_list.csv",copynumber450k = F)
}
