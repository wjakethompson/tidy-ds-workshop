[![Join the chat at https://gitter.im/tidy-ds-2019/Lobby](https://badges.gitter.im/tidy-ds-2019/Lobby.svg)](https://gitter.im/tidy-ds-2019/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Netlify Status](https://api.netlify.com/api/v1/badges/f5aa3527-d363-44db-9289-3998f2e0f8f2/deploy-status)](https://app.netlify.com/sites/fervent-lovelace-c93802/deploys)

# Using R and the tidyverse for Data Science

This repository contains the materials and source code for the [webpage](https://tidy-ds.wjakethompson.com) for *Using R and the tidyverse for Data Science*. This is a 5-day workshop originally developed for the Stats Camp: Summer Statistical Institute hosted by the [Center for Research Methods and Data Analysis](https://crmda.ku.edu) and the [Achievement and Assessment Institute](https://aai.ku.edu) at the University of Kansas. All workshop materials are licensed under the [Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) License.

The [workshop website](https://tidy-ds.wjakethompson.com) is built using Project Kickstart-R and the Academic Hugo theme.


## Project Kickstart-R

**Project Kickstart-R** provides a minimal template to create a **Landing Page** and **Knowledge Sharing Platform** with *Academic* and **(R) Markdown**.

**Academic** is a framework to help you create a beautiful website quickly.

[Check out the demo](https://sourcethemes.com/academic/) of what you'll get in less than 5 minutes or [view the documentation](https://sourcethemes.com/academic/docs/).


### Install in 5 Steps

Open [RStudio](https://www.rstudio.com/products/rstudio/) and create a new project.

Run the following commands in RStudio to bootstrap your new project website with **Project Kickstart-R**:

1. Install the [Blogdown](https://bookdown.org/yihui/blogdown/) dependency:

    `install.packages("blogdown")`

2. Install the [Hugo](https://gohugo.io/) dependency:

    `install.packages("hugo")`

3. Install the [Academic](https://sourcethemes.com/academic/) dependency:

    `blogdown::new_site(theme = "gcushen/hugo-academic", sample = FALSE, theme_example = FALSE)`

4. Download **Project Kickstart-R**:

    `download.file( url = "https://github.com/sourcethemes/project-kickstart-r/archive/master.zip", destfile="project-kickstart-r.zip")`

5. Install **Project Kickstart-R** into your new project folder:

    `unzip( zipfile = "project-kickstart-r.zip", junkpaths = TRUE )`

A browser tab should open, displaying your new website. Otherwise, check your RStudio console messages.

Finally, learn how to [customize](https://sourcethemes.com/academic/docs/get-started/) and [deploy](https://sourcethemes.com/academic/docs/deployment/) your site.


### License

Copyright 2018-present [George Cushen](https://georgecushen.com).

Project Kickstart-R is released under the [MIT](https://github.com/sourcethemes/project-kickstart-r/blob/master/LICENSE.md) license.

