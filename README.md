# ADA Project - Creative extension for 'Housing, Health, and Happiness'


## Title : Unmeasured Confounding and Bias - Sensitivity Analysis of Treatment Effect 


## Abstract

Due to the lack of random assignment to treatment groups in observational studies, omitted variable bias can affect treatment effect estimates. One can therefore question results of regression analyses for such studies, and sensitivity analysis allows to quantify the impact of potential omitted variables. Specifically, in this paper the matching between treatment and control is not fully transparent, and the lack of sensitivity analysis does not allow to measure its performance. In this extension, we propose to conduct a multi-step robustness check to verify the paper's results: firstly, a benchmark analysis is conducted based on available data to establish reference points for speculation about confounders. Next, a sensitivity analysis is carried out for various matching methods between treated and control groups, in order to assess the bias needed to change the results significantly. Specifically, a similar matching as the paper and propensity score matching are studied. 

## Research Questions

Here are some research questions that we would like to address during the project:
* What are the most important variables in the data set in terms of predicting power for the studied models ? 
* How strong would the bias have to be to alter the conclusions of the study, i.e. how sensitive to bias is the study design ?
* Would propensity score matching (or another matching method) improve the accuracy of the results ?

## Proposed dataset

The same dataset as the paper will be used, with no additional data.

## Methods

* Benchmark Analysis of available data:
   - Improve the visualisation of results for the studied models in the paper.
   - Classification of the most predictive regressors in terms of their effect on R^2.
   
* Treatment and Control Matching:
   - Replication of the paper's matching : based on the four variables described, minimise the L-infinite distance to match the pairs of control and treatment data points.
   - Propensity score matching : (1) Use logistic regression to estimate propensity scores for all points in the dataset. (2) Use the propensity scores to match each data point from the treated group with exactly one data point from the control group. (3) Maximize the similarity between matched subjects, as captured by their propensity scores. In other words, the sum (over all matched pairs) of absolute propensity-score differences between the two matched subjects should be minimized.

* Sensitivity analysis on the matching:
   - Specify the outcomes that we want to test.
   - Using *sensitivitymv* R library (more specifically senmv function), find the gamma for which the p-value is superior to 0.05. This would allow us to evaluate the robustness of the model towards the bias between the paper assignment and a randomized one.
   - Interpret the results of an amplification of sensitivity analysis using the strength and shift values, which could help quantify the effect of an unobserved covariate.


## Proposed timeline

* Week 1:
   - Conduct the benchmark analysis on available data.
   - Start the process of matching.

* Week 2:
   - Finalise matching and conduct the sensitivity analysis.
   - Start datastory.

* Week 3:
   - Finalise datastory.
   - Prepare video script.

## Organization within the team

* Louise: sensitivity analysis using R
* Lucas: matching of treatment and control
* Hugo: benchmark study
* All : datastory and video

## Ressources

* Paul R. Rosenbaum, Design of observational studies, Springer, 2010
* Paul R. Rosenbaum, Observation and experiment : An introduction to causal inference., Harvard University Press, 2017
* Paul R. Rosenbaum, Sensitivity analysis in obervational studies, Encyclopedia of Statistics in Behavioural Science, 2005
* C. A. Hosman et al., The Sensitivity of linear regression coefficients' confidence limits to the omission of a confounder, 2010

