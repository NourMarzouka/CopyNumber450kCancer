\name{CopyNumber450kCancer-package}
\alias{CopyNumber450kCancer-package}
\alias{CopyNumber450kCancer}
\docType{package}
\title{Baseline Correction for Accurate Copy Number Calling in 450k Methylation Array}
\description{
 The 450k arrays are frequently used in the epigenetic studies, the copy number calling from the 450k data is possible but it faces some difficulties in cancer samples regarding the determination of the copy number status due to the false sample centering and baseline shifting. Without solving this issue the copy number calling will be inaccurate. CopyNumber450kCancer-package was designed to correct the baseline in cancer samples using the Maximum Density Peak Estimation.\cr
 
The main advantages for CopyNumber450kCancer-package are: Fast (few seconds per sample), high accuracy rate, in-sample correction, no input parameters needed, low computer sources required, and adaptable for 450k-similar technologies.\cr

A Shiny web application with no coding requirements is available at \url{https://copynumber.shinyapps.io/RTCGA-CNV-BaselineCorrection/} and source code at \url{https://github.com/NourMarzouka/RTCGA-CNV-Baseline-Correction}.
}
\details{
\tabular{ll}{
Package: \tab CopyNumber450kCancer\cr
Type: \tab Package\cr
Version: \tab 1.0.7\cr
Date: \tab 2025-10-03\cr
License: \tab GPL (>= 2)\cr
}
}
\author{
Nour-al-dain Marzouka

Maintainer: Nour-al-dain Marzouka <nour.dna.eng@gmail.com>
}
\keyword{450k}
\keyword{copy-number}
\keyword{baseline}
\keyword{correction}
\keyword{cancer}
\seealso{
\url{https://github.com/Molmed/CopyNumber450kCancer}

\strong{Shiny App (No Coding Required):}
\itemize{
  \item Live App: \url{https://copynumber.shinyapps.io/RTCGA-CNV-BaselineCorrection/}
  \item Source Code: \url{https://github.com/NourMarzouka/RTCGA-CNV-Baseline-Correction}
}
}