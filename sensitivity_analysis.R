
library(dplyr)
library(reshape2)
library(ggplot2)

# Load data

filename <- "../data/114542-V1/PisoFirme_AEJPol-20070024_household.csv"
file.exists(filename)

data <- read.table(filename, sep=",", row.names = 1, header= TRUE)

head(data)

# Sensitivity analysis

# senmv(y, gamma=1, method=NULL, inner=0, trim=2.5, lambda=1/2, tau=0, TonT=FALSE)

