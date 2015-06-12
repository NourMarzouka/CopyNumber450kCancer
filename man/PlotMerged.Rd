\name{PlotMerged}
\alias{PlotMerged}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
To make plots with merged regions
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
optional function to make all the regions in 3 fixed log levels (deletion, normal, duplication) and then to plot the samples
}
\usage{
PlotMerged(file, cutoff = 0.1, markers = 20, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
  The dataframe to be readed (region object) 
%%     ~~Describe \code{file} here~~
}
  \item{cutoff}{
  This cutt of will affect these plots, default is cutoff = 0.1
%%     ~~Describe \code{cutoff} here~~
}
  \item{markers}{
  minimum number of marker required in the region, default is (markers = 20)
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

}
