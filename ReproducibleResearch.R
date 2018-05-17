# -*- coding: utf-8 -*-
# ---------------------------------------------------------------------------
# Reproducible Research in R
# Author: Timm Nawrocki, Alaska Center for Conservation Science
# Created on: 2018-05-17
# Usage: Working script for May 2018 Workshop.
# Description: This is a working script for learning purposes.
# ---------------------------------------------------------------------------

# Install required libraries if they are not already installed.
Required_Packages <- c("devtools", "dplyr", "DT", "ggplot2", "ggpmisc", "kableExtra", "leaflet", "readxl", "remotes", "tidyr")
New_Packages <- Required_Packages[!(Required_Packages %in% installed.packages()[,"Package"])]
if (length(New_Packages) > 0) {
  install.packages(New_Packages)
}

# Import required libraries.
library(devtools)
library(dplyr)
library(DT)
library(ggplot2)
library(ggpmisc)
library(kableExtra)
library(leaflet)
library(readxl)
library(remotes)
library(tidyr)

# Set seed
set.seed(415)

# Set working directory to git repository
setwd("C:/Repositories/reproducible-research-workshop")