# ADA Project - Creative extension


## Title : Unmeasured Confounding - Sensitivity Analysis of Treatment Effect 


## Abstract

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

Here are some research questions that we would like to address during the project :
* What would the unmeasured covariate have to be like to alter the conclusions of the study ?
* Would porpensity score matching improve the accuracy of the results ?
*

## Proposed dataset

* Same data as in the paper, no additional data.


## Methods

* Sensitivity analysis of the regression models
Linear regression models use t-test to check the significance of the computed coefficients.

? : What does the significance of the regression coefficient actually mean ??

Null hypothesis H_0 : the treatment is without effect, that each subject would have the same response under the
alternative treatment.


* Propensity score matching
- Use logistic regression to estimate propensity scores for all points in the dataset.
- Use the propensity scores to match each data point from the treated group with exactly one data point from the control group, while ensuring that each data point from the control group is matched with at most one data point from the treated group.
- Maximize the similarity between matched subjects, as captured by their propensity scores. In other words, the sum (over all matched pairs) of absolute propensity-score differences between the two matched subjects should be minimized.
- Do we want some feature to be exactly EQUAL during this matching ??


## Proposed timeline

3 weeks :
- sensitivity analysis might be a bit challenging so start with that
- do propensity score 


## Organization within the team

A list of internal milestones up until project milestone P4. 
Add here a sketch of your planning for the next project milestone.

2 main tasks. Sensitivity analysis should be faster than propensity score matching.


## Ressources

* 

## Questions for TAs (optional)

Add here any questions you have for us related to the proposed project.
