
# Video script

Duration : 2 min
 
## 1) Context \[10sec\]

Hello ! We are team Greenlight.

In 2000, a large-scale program called Piso Firme offered households in Mexico cement floors to replace dirt floors. The paper ‘Housing, Health and Happiness’ aims to measure the impact of this program on health and welfare of young children and their mothers through linear regression models. Their conclusion was that the program significantly improved the health and cognitive development of children and quality of life of their mothers, but are their results robust enough ?


## 2) Observational studies \[30sec\]

This study is what we call an observational study, because there is no random assignment to treatment groups. As it's a retrospective study, you cannot flip a coin to assign the treatment, so omitted variable bias can affect treatment effect estimates. Using standardised mean differences we can check whether the control and treatment data sets are well balanced in terms of pre-treatment variables.


## 3) Matching \[30sec\]

A solution is to use matching. The idea is to create pairs with one treated and one control individual that have similar covariates. Different strategies are applied : the matching done in the paper using an L_infinite norm of four pre-treatment covariates, a propensity score matching using these same four variables and a propensity score matching using all variables.


## 4) Sensitivity analysis \[30sec\]

The naive model assumes that the probability to be treated is 50% inside the matched pairs. But there might exist unmeasured confounders that could unbalance this probability. Sensitivity analysis allows to quantify this discrepancy. More specifically, we can compute the minimum bias for which we cannot reject the hypothesis of no treatment effect. 
The second step is then called 'amplification', and it allows to discuss the characteristics of these unobserved covariates. 

If you are interested in seeing our results, visit our website to view our full datastory !
