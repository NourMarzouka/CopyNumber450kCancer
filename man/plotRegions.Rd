\name{plotRegions}
\alias{plotRegions}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
The plotting function
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function plots the chromosomal regions (segments) with colored segments based on the cutoff.
This function was built based on "plotSample" function in "CopyNumber450k" package (http://www.bioconductor.org/packages/release/bioc/html/CopyNumber450k.html), and uses a modified "minor.tick" function in "Hmisc" package to draw small tick in the plots.
}
\usage{
plotRegions(object, chr, start, end, cutoff = 0.1, markers = 20, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
%%     ~~Describe \code{object} here~~
}
  \item{chr}{
%%     ~~Describe \code{chr} here~~
}
  \item{start}{
%%     ~~Describe \code{start} here~~
}
  \item{end}{
%%     ~~Describe \code{end} here~~
}
  \item{cutoff}{
%%     ~~Describe \code{cutoff} here~~
}
  \item{markers}{
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
#to be used by the package

}
