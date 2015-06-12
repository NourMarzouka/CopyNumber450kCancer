\name{PlotCNV}
\alias{PlotCNV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Plot the CNV regions with the density plot
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Uses the regions object, this function will plot the last modified regions object (i.e. after the autocorrection or the reviewing)
}
\usage{
PlotCNV(select, comment = F, cutoff = 0.1, markers = 20)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{select}{
  The number of the samples to be reviewed, if not determined then all the samples in the sample list will be selected
%%     ~~Describe \code{select} here~~
}
  \item{comment}{
  If TRUE then the comment in the sample list file will be printed in the header of the plots, default is FALSE
%%     ~~Describe \code{comment} here~~
}
  \item{cutoff}{
  cutoff for the segments coloring , default is cutoff = 0.1
%%     ~~Describe \code{cutoff} here~~
}
  \item{markers}{
  the minimum number of markers in the segment to be plotted, default is markers = 20
%%     ~~Describe \code{markers} here~~
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
#example
#PlotCNV() #this will plot all the samples

#PlotCNV(c(5,8,90:100),comment = T, cutoff = 0.2, markers = 5)
}
