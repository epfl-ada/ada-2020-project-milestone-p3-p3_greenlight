# ADA Project - Creative extension


## Title : Unmeasured Confounding - Sensitivity Analysis of Treatment Effect 


## Abstract

A 150 word description of the project idea, goals, datasets used. 
Motivation, extend the analysis, story

Observational study with naive model
They verified if control and treatment sets were similar in terms of mean and size. But they don't use matching. Maybe we can obtain better results by using matching techniques.
Propensity score of a data point represents its probability of receiving the treatment, based on its pre-treatment features

Also they did robustness checks but they might have forget some covariates.

* Sensitivity analysis : evaluate the effect of unobserved covariates
Concern that some important baseline differences were not measured, so that individuals who appear comparable may not be. Sensitivity analysis in observational studies can address this, by finding what the unmeasured covariate would have to be like to change the study's conclusions.

A fundamental concern when conducting evaluations using observational data is that unmeasured confounding—one or more additional factors that cause both the treatment
assignment and the outcome—might be mistaken for a treatment effect. In observational research, it is unlikely that data for all potential confounding variables will be available. Thus, one should conduct a post-estimation sensitivity analysis to assess how strong a relationship would have to be between an unmeasured confounder and the treatment assignment, as well as between the unmeasured confounder and the outcome, to explain away an observed treatment effect.

* Propensity score matching : better result


## Research Questions

A list of research questions you would like to address during the project.

What would the unmeasured covariate have to be like to alter the conclusions of the study ?

## Proposed dataset

* Same data as in the paper, no additional data


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




## Organization within the team

A list of internal milestones up until project milestone P4. 
Add here a sketch of your planning for the next project milestone.

2 main tasks. Sensitivity analysis should be faster than propensity score matching.


## Ressources

* 

## Questions for TAs (optional)

Add here any questions you have for us related to the proposed project.
