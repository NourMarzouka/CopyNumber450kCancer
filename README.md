# CopyNumber450kCancer

[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/CopyNumber450kCancer)](https://cran.r-project.org/package=CopyNumber450kCancer)

## Baseline Correction for Accurate Copy Number Calling

### Description

The 450k arrays are frequently used in epigenetic studies. Copy number calling from 450k data is possible but faces difficulties in cancer samples regarding the determination of copy number status due to false sample centering and baseline shifting. Without solving this issue, copy number calling will be inaccurate. 

**CopyNumber450kCancer** was designed to correct the baseline in cancer samples using the Maximum Density Peak Estimation (MDPE) method.

### Key Features

- ⚡ **Fast**: Few seconds per sample
- 🎯 **High accuracy rate**
- 🔬 **In-sample correction**
- 🚀 **No input parameters needed**
- 💻 **Low computational resources required**
- 🔄 **Adaptable for 450k-similar technologies**

**Note:** This package works with any copy number data. It uses LRR (Log R Ratio) values only; BAF (B Allele Frequency) values are not used.

### Shiny App - No Coding Required! 🎨

For users who prefer a graphical interface without coding, we provide a **Shiny web application**:

- **GitHub Repository**: https://github.com/NourMarzouka/RTCGA-CNV-Baseline-Correction
- **Live App**: https://copynumber.shinyapps.io/RTCGA-CNV-BaselineCorrection/

The Shiny app provides an intuitive interface for baseline correction with visualization and interactive analysis.

### Installation

#### From CRAN (Recommended)
```r
install.packages("CopyNumber450kCancer")
```

#### From GitHub (Development Version)
```r
# Install devtools if you haven't already
install.packages("devtools")

# Install CopyNumber450kCancer from GitHub
devtools::install_github("NourMarzouka/CopyNumber450kCancer")
```

### Quick Start

```r
library(CopyNumber450kCancer)

# Read your data
data <- ReadData(regions_file = "path/to/regions.csv", 
                 Sample_list = "path/to/samples.csv")

# Perform automatic correction
corrected_data <- AutoCorrectPeak(data)

# Plot results
PlotCNV(corrected_data, sample_name = "Sample1")
```

### Package Details

- **Package**: CopyNumber450kCancer
- **Type**: Package
- **Version**: 1.0.7
- **Date**: 2025-10-03
- **License**: GPL (>= 2)
- **R Version**: >= 4.0.0

### Citation

If you use this package in your research, please cite:

Marzouka, N., Nordlund, J., Backlin, C.L., Lönnerholm, G., Syvänen, A.C., & Carlsson Almlöf, J. (2016). CopyNumber450kCancer: baseline correction for accurate copy number calling from the 450k methylation array. *Bioinformatics*, 32(7), 1080-1082. DOI: 10.1093/bioinformatics/btv652

### Links

- **GitHub Repository**: https://github.com/NourMarzouka/CopyNumber450kCancer
- **Bug Reports**: https://github.com/NourMarzouka/CopyNumber450kCancer/issues
- **Shiny App**: https://copynumber.shinyapps.io/RTCGA-CNV-BaselineCorrection/
- **Shiny App Source**: https://github.com/NourMarzouka/RTCGA-CNV-Baseline-Correction

### Author

**Nour-al-dain Marzouka**  
Email: nour.dna.eng@gmail.com

### Contributing

Contributions are welcome! Please feel free to submit a Pull Request or open an Issue.

### License

This package is licensed under GPL (>= 2).