# Psychological Label Prediction

## Purpose

Test whether dynamical representations can predict psychological labels.

## Hypothesis

Structural features of the dynamics contain information that supports prediction of psychological descriptions.

## Inputs

- dynamical representation;
- trajectories;
- constraints;
- reachability features;
- psychological labels.

## Method Template

1. Define dynamical variables.
2. Construct trajectories or state-space features.
3. Define psychological labels.
4. Train or specify a forward mapping from dynamics to labels.
5. Evaluate predictive performance.
6. Compare against baseline models that do not use dynamical structure.

## Metrics

- classification or regression performance;
- calibration;
- temporal prediction accuracy;
- ablation of dynamical features;
- uncertainty estimates.

## Limitations

Prediction of labels does not prove that labels are complete explanations of the underlying dynamics.
