# eegSeminaR <img src="man/figures/logo.png" align="right" width="120"/>

## 👋 Welcome

This is a MSc-level university seminar on analyzing EEG data in R. It follows a "code first" approach (using the R package `eegUtils`[^readme-1]) to teach the basics of event-related potentials (ERP) analysis, from raw data to statistical modeling and visualization.

------------------------------------------------------------------------

[^readme-1]: Craddock, M. (2022). *eegUtils: Utilities for electroencephalographic (EEG) analysis* (0.7.0). <https://craddm.github.io/eegUtils>

## ⚙️ How to follow along

### a) Interactive -- local (recommended)

-   Follow the instructions on the ["Get started"](https://alexenge.github.io/eegSeminaR/articles/eegSeminaR.html) page to download and install the required software

### b) Interactive -- cloud server

-   Hit this link (or the "Launch binder" button at the top) to open the course materials on a cloud server kindly provided by the Binder project

-   Note that: (a) Launching the cloud server might take a couple of minutes, (b) resources (CPUs and memory) are limited, and (c) changes you make to the code will be lost at the end of the session

### c) Static

-   Read through a static version of the [course materials](https://alexenge.github.io/eegSeminaR/articles/cm1-r-coding-basics.html) from your web browser

-   Does not allow you to run and/or modify any of the code

------------------------------------------------------------------------

## 🧭 Course content

+---------------+-------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
| Session       | Vignettes                                                                                                                                 | Homework                                                                            |
+===============+===========================================================================================================================================+=====================================================================================+
| 29.11.2022    | 1.  [**Intro to R**](https://alexenge.github.io/eegSeminaR/articles/cm1-r-coding-basics.html): Variables, data types, functions, packages | -   Choose + download the data from your ERP CORE experiment                        |
|               | 2.  [**Open data**](https://alexenge.github.io/eegSeminaR/articles/cm2-open-data.html): Data sharing, BIDS standard, ERP CORE dataset     |                                                                                     |
+---------------+-------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
| 06.12.2022    | 3.  **Preprocessing**: Loading and viewing data, re-referencing, filtering                                                                | -   Apply preprocessing and epoching to your data                                   |
|               | 4.  **Creating epochs**: Event codes, epoching, baseline correction                                                                       |                                                                                     |
+---------------+-------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
| 13.12.2022    | 5.  **Correcting artifacts**: ICA, BESA, voltage thresholds                                                                               | -   Apply artifact correction and/or rejection; extract single trial ERP amplitudes |
|               | 6.  **Extracting amplitudes**: Selecting time windows and regions of interest                                                             |                                                                                     |
+---------------+-------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
|               | Happy christmas holidays! 🎅🎁🎄                                                                                                          |                                                                                     |
+---------------+-------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
| 03.01.2023    | 7.  **Statistics**: ANOVA, mixed models, permutation tests                                                                                | -   Create at least one statistical model and plot; upload report on Moodle         |
|               | 8.  **Visualization**: time course, topography                                                                                            |                                                                                     |
+---------------+-------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
| Add-on topics | 9.  **Source localization**                                                                                                               |                                                                                     |
|               | 10. **Time-frequency analysis**                                                                                                           |                                                                                     |
|               | 11. **Multivariate analysis (decoding)**                                                                                                  |                                                                                     |
+---------------+-------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
