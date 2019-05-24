---
title: Install/upgrade software
author: ''
date: "2019-05-23"
slug: system
categories: []
tags: []
linktitle: "Install/upgrade software"
menu:
  prework:
    parent: "Local setup"
    weight: 2
toc: yes
type: docs
---

This section provides a very high level overview of the required software. More detailed instructions can be found in the [setup guides](https://crmda.ku.edu/setup) from the Center for Research Methods and Data Analysis.

## Install R

* A [recent version of R](https://cran.rstudio.com/) (>= 3.6.0 "Planting of a Tree") is recommended. You can check your version from the R Console:


```r
R.version.string
```

```
## [1] "R version 3.6.0 (2019-04-26)"
```

## Install Rtools (Windows Only)

On Windows, you may need to install Rtools. Rtools can be downloaded from [here](https://cran.r-project.org/bin/windows/Rtools/) (the green row marked "recommended").

Run the installer. When you reach a screen that offer the option to add Rtools to the system path, CHECK THE BOX. You want this to happen.

Once Rtools finishes installing, restart your R session. You should then be able to install all of the packages correctly.

## Install RStudio

* [RStudio](https://www.rstudio.com/products/rstudio/download/#download) (>= 1.2.1335)  is recommended.


## Upgrading your system

For more help installing or upgrading R and RStudio, please read through these links:

1. [Chapter 6 in **Happy Git with R**](http://happygitwithr.com/install-r-rstudio.html)
1. [Maintaining R from **What They Forgot to Teach You About R**](https://whattheyforgot.org/maintaining-r.html)
    - See ["How to transfer your library when updating R"](https://whattheyforgot.org/maintaining-r.html#how-to-transfer-your-library-when-updating-r)
