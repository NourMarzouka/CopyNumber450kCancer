# CopyNumber450kCancer
CopyNumber450kCancer R package

## Baseline Correction for Accurate Copy Number Calling
### Description
The 450k arrays are frequently used in the epigenetic studies, the copy number calling from the 450k data is possible but it faces some difficulties in cancer samples regarding the determination of the copy number status due to the false sample centering and baseline shifting. Without solving this issue the copy number calling will be inaccurate. CopyNumber450kCancer-package was designed to correct the baseline in cancer samples using the Maximum Density Peak Estimation.
The main advantages for CopyNumber450kCancer-package are: Fast (few seconds per sample), high accuracy rate, in-sample correction, no input parameters needed, low computer sources required, and adaptable for 450k-similar technologies.

#### This package should work fine with any copy number data. It uses LRR values only, BAF values are not used.

### Details
Package:	CopyNumber450kCancer

Type:	Package

Version:	1.0.4

Date:	2015-08-17

License:	GPL (>= 2)
