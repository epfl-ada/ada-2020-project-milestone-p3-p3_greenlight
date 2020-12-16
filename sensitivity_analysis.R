
library(sensitivitymv)

# Load data
filename <- "../data_sensitivity_analysis/X_paper_S_shcementfloor.csv"
file.exists(filename)

# Sensitivity analysis
X <- read.table(filename, sep=",", header= TRUE)
senmw(X, gamma=3.25, method = NULL, inner = 0, trim = 2.5, lambda = 1/2,
      tau = 0)

# Amplification of sensitivity analysis
delta=numeric(0)
for(i in 1:1000)
{delta[i]<-(amplify(3.25, seq(3.30, 5, length.out = 1000)[i]))}

lambda<- seq(3.30, 5, length.out = 1000)

g = data.frame(lambda, delta)

plot(lambda, delta)

write.csv(g, "../data_sensitivity_analysis/amplification/amp_paper_S_shcementfloor.csv", row.names = FALSE)
