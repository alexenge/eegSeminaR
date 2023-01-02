# eegSeminaR <img src="man/figures/logo.png" align="right" width="120"/>

[![Launch Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/alexenge/eegSeminaR/HEAD?urlpath=rstudio) [![Repo Status](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip) [![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/alexenge/eegSeminaR/pkgdown.yaml)](https://github.com/alexenge/eegSeminaR/actions) [![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

## 👋 Welcome

This is a MSc-level university seminar on analyzing EEG data in R. It follows a "code first" approach to teach the basics of event-related potential (ERP) analysis, from raw data to statistical modeling and visualization.

The code examples draw heavily on the `eegUtils` package.[^readme-1]

------------------------------------------------------------------------

[^readme-1]: Craddock, M. (2022). *eegUtils: Utilities for electroencephalographic (EEG) analysis* (0.7.0). <https://craddm.github.io/eegUtils>

## 🧭 Course contents

| Session | Vignettes | Homework |
|------------|----------------------------|---------------------------------|
| 2022-11-29 | [1\. Introduction to R](https://alexenge.github.io/eegSeminaR/articles/v1-introduction-to-r.html) | Read [ERP CORE paper](https://doi.org/10.1016/j.neuroimage.2020.117465) |
| 2022-12-06 | [2\. Open data](https://alexenge.github.io/eegSeminaR/articles/v2-open-data.html)<br>[3\. Preprocessing](https://alexenge.github.io/eegSeminaR/articles/v3-preprocessing.html) | Download ERP CORE data<br>Apply preprocessing to your data |
| 2022-12-13 | [4\. Creating epochs](https://alexenge.github.io/eegSeminaR/articles/v4-creating-epochs.html)<br>[5\. Removing artifacts](https://alexenge.github.io/eegSeminaR/articles/v5-removing-artifacts.html) | Create epochs<br>Apply artifact correction and/or rejection |
| | Happy Christmas holidays! 🎅🎁🎄 | |
| 2023-01-03 | [6\. Extracting amplitudes](https://alexenge.github.io/eegSeminaR/articles/v6-extracting-amplitudes.html)<br>[7\. Statistical modeling](https://alexenge.github.io/eegSeminaR/articles/v7-statistical-modeling.html)<br>[8\. Making plots](https://alexenge.github.io/eegSeminaR/articles/v8-making-plots.html) | Extract single trial ERP amplitudes<br>Create at least one statistical model or plot<br>Upload report to Moodle |
| Add-on topics | 9\. Source localization<br>10\. Time-frequency analysis<br>11\. Multivariate analysis (decoding) | |

------------------------------------------------------------------------

## 🤗️ How to follow along

### a) Interactive -- local (recommended)

-   Follow the instructions on the ["Get started"](https://alexenge.github.io/eegSeminaR/articles/eegSeminaR.html) page to download and install the required software

### b) Interactive -- cloud server

-   Hit [this link](https://mybinder.org/v2/gh/alexenge/eegSeminaR/HEAD?urlpath=rstudio) (or the "Launch binder" button) to open the course materials on a cloud server kindly provided by the Binder project

-   Note that: (a) Launching the cloud server might take a couple of minutes, (b) resources (CPUs and memory) are limited, and (c) changes you make to the code will be lost at the end of the session

### c) Static

-   Read through a static version of the [course contents ("vignettes")](https://alexenge.github.io/eegSeminaR/articles/v1-introduction-to-r.html) from your web browser

-   Does not allow you to run and/or modify any of the code
