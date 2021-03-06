---
title: Install R packages
author: ''
date: "2019-05-23"
slug: packages
categories: []
tags: []
linktitle: "Install R packages"
menu:
  prework:
    parent: "Local setup"
    weight: 3
toc: yes
type: docs
---

All of the necessary packages and example data sets can be installed by installing the workshop companion package, `tidydscompanion`.

You can download our workshop companion package from GitHub:


```r
install.packages("remotes", dependencies = TRUE)
remotes::install_cran("tidyverse", dependencies = TRUE, upgrade = "always",
                      repos = "https://cran.rstudio.com/")
remotes::install_github("wjakethompson/tidydscompanion", dependencies = TRUE,
                        upgrade = "always")
```

Can you load the package?


```r
# should just work if installed
library(tidydscompanion)
```

If you are not able to load the `tidydscompanion` package, then everything hasn't installed correclty. Try to troubleshoot, or ask the instructor or a TA for help!
