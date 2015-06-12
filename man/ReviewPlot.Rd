\name{ReviewPlot}
\alias{ReviewPlot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Interactive plots to modify the baseline in the samples
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~

CopyNumber450kCancer provides graphical interactive plots as an option to supervise/review the baseline estimation. The user can click on the LRR levels where the baseline should be located in between. The segments in the defined range will be selected and the user will be asked to choose one of two options for how the new baseline should be calculated. The first option is the weighted median for the LRRs with the respect of the number of the probes each segment. The second option is the local highest peak in the probes density function. For the reviewing step, we strongly recommend to use any other information (ex. karyotyping) those can help the user in deciding. 

This function uses modified "weighted.median" function from isotone package.
}
\usage{
ReviewPlot(select, plots = T, cutoff = 0.1, markers = 20, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{select}{
%%     ~~Describe \code{select} here~~
The number of the samples the you want to review of modify the baseline for them, if not specified then all the samples in the sample list will be selected
}
  \item{plots}{
%%     ~~Describe \code{plots} here~~
To get plots after the revieing all the selected samples (default is TURE) 
if FALSE then you will get only the new segments file (reviewed_regions) and a file contains the recording of the reviewing process.
}
  \item{cutoff}{
The cutoff to be used in the ploting only, the data or the new segments file will not be affected (default: 0.1)

%%     ~~Describe \code{cutoff} here~~
}
  \item{markers}{
  The minimum number of the probes required in the segment to be plotted (default: 20)
%%     ~~Describe \code{markers} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
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
#Example

#ReviewPlot() # to review all samples

#ReviewPlot(c(1,5,22:25), plots = F) # to review the sample 1,5,22:25 and without saving any plots at the end

}
