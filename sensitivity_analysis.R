
library(dplyr)
library(reshape2)
library(ggplot2)
library(sensitivitymv)

# Load data

filename <- "../data/P3/X_shcementfloor.csv" #X_S_satislife.csv"
file.exists(filename)

y <- read.table(filename, sep=",", header= TRUE)
head(y)

# Sensitivity analysis
  
senmv(y, gamma=1, method=NULL, inner=0, trim=2.5, lambda=1/2, tau=0, TonT=FALSE)

  # Amplification of sensitivity analysis

#amplify(gamma=2, 3)
