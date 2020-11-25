# ADA Project - Creative extension for 'Housing, Health, and Happiness'


## Title : Unmeasured Confounding - Sensitivity Analysis of Treatment Effect 


## Abstract

Due to the lack of random assignment to treatment groups in observational studies, omitted variable bias can affect treatment effect estimates. Indeed, it is possible that important baseline differences were not measured, and that individuals who appear comparable may in fact not be. One can therefore always put into question results of regression analyses for such studies, and sensitivity analysis allows to quantify the impact of potential omitted variables. In this extension, we propose to conduct a multi-step robustness check to verify the paper's results: firstly, a benchmark analysis is conducted based on available data to establish reference points for speculation about confounders. Next, a sensitivity analysis is carried out on the matching between treated and control groups, in order to assess the bias needed to change the results significantly. Finally, propensity score matching is used as an alternative matching solution, in order to compare with the original results. 


Paper 'Housing, health and happiness' : observational study using a naive model. 
They verified if control and treatment sets were similar in terms of mean and size, but they didn't use matching. Maybe we can obtain better results by using matching techniques. The idea is to predict the propensity score of a data point, i.e. its probability of receiving the treatment, based on its pre-treatment features. Match data points by pairs with similar propensity scores. 

Also they did robustness checks but they might have forget some unmeasured covariates.
We suggest to use the sensitivity analysis that allows to evaluate the effect of unobserved covariates. 
- Verify if unmeasured confounding—one or more additional factors could cause both the treatment assignment and the outcome. 
- assess how strong a relationship would have to be between an unmeasured confounder and the treatment assignment
Concern that some important baseline differences were not measured, so that individuals who appear comparable may not be. Sensitivity analysis in observational studies can address this, by finding what the unmeasured covariate would have to be like to change the study's conclusions.

-> déjà 200 mots donc reformuler en faisant court et précis
comment on fait notre data story ?

## Research Questions

Here are some research questions that we would like to address during the project:
* What are the most important variables in the data set in terms of predicting power for the studied models ? 
* What would the unmeasured covariates have to be like to alter the conclusions of the study ?
* Would porpensity score matching improve the accuracy of the results ?

## Proposed dataset

The same dataset as the paper will be used, with no additional data.

## Methods

* Benchmark Analysis of available data:

* Sensitivity analysis:
Linear regression models use t-test to check the significance of the computed coefficients.

? : What does the significance of the regression coefficient actually mean ??

Null hypothesis H_0 : the treatment is without effect, that each subject would have the same response under the
alternative treatment.

* Propensity score matching:
- Use logistic regression to estimate propensity scores for all points in the dataset.
- Use the propensity scores to match each data point from the treated group with exactly one data point from the control group, while ensuring that each data point from the control group is matched with at most one data point from the treated group.
- Maximize the similarity between matched subjects, as captured by their propensity scores. In other words, the sum (over all matched pairs) of absolute propensity-score differences between the two matched subjects should be minimized.
- Do we want some feature to be exactly EQUAL during this matching ??

## Proposed timeline

* Week 1:
- Conduct the benchmark analysis on available data.
- Start the sensitivity analysis of matching.

* Week 2:
- Create the propensity score matching and conduct the comparative study.

* Week 3:
- Prepare datastory and finalise results.

## Organization within the team

* Louise:
* Lucas:
* Hugo:

A list of internal milestones up until project milestone P4. 
Add here a sketch of your planning for the next project milestone.

## Ressources

* 

## Questions for TAs (optional)

Add here any questions you have for us related to the proposed project.
