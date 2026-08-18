# Task-Relative Causal Sufficiency — Synthetic Sanity Check

> [!IMPORTANT]
> This is a **synthetic proof-of-concept sanity check**, not empirical validation of the Information Asymmetry hypothesis in real AI systems. Its purpose is to test whether the current framework can produce non-trivial, falsifiable, task-dependent results.

## Question

The experiment asks whether a single compressed representation should be expected to perform equally well across different causal tasks.

The working refinement is:

> **Causal sufficiency is task-relative.**

More formally, causal sufficiency is treated as a relation between a representation and the task it must support:

\[
\text{representation} \times \text{task} \rightarrow \text{causal sufficiency}
\]

## Synthetic system

A toy system was generated with four underlying dynamical variables:

- urgency;
- risk;
- available resources;
- constraint strength.

These variables jointly generated behaviour through a nonlinear rule.

Three approximately capacity-matched compressed representations were compared:

- **P** — a four-state psychological-style behavioural representation;
- **S_recon** — a four-state structural representation designed to preserve broad state geometry;
- **S_control** — a four-state structural representation focused on risk/constraint structure.

Each representation carried approximately the same coarse information budget (about 2 bits), so a structural representation could not win simply by being allowed to encode much more information.

## Task family

The same representations were evaluated on multiple tasks:

1. immediate behavioural prediction;
2. full causal-state reconstruction;
3. information retention about the original dynamics;
4. risk recovery;
5. constraint-strength recovery;
6. immediate counterfactual action-flip prediction.

## Results

| Task | Best representation | Result |
|---|---|---:|
| Predict immediate behaviour | **P** | 94.6% balanced accuracy |
| Reconstruct full causal state | **S_recon** | MSE 0.0296 vs P 0.0377 |
| Preserve information about original dynamics | **S_control** | \(I(D;S) \approx 2.00\) bits vs \(I(D;P) \approx 1.14\) bits |
| Recover risk | **S_control** | RMSE 0.118 vs P 0.174 |
| Recover constraint strength | **S_control** | RMSE 0.122 vs P 0.200 |
| Predict immediate counterfactual action flip | **P** | 89.7% balanced accuracy |

The conditional uncertainty about the original dynamical state also differed:

\[
H(D\mid P) \approx 6.856
\]

versus

\[
H(D\mid S_{\text{control}}) \approx 5.997
\]

In this toy setup, the psychological representation left substantially more uncertainty about the underlying dynamical state while still performing better on immediate behavioural and short-horizon counterfactual prediction.

## Interpretation

The result does **not** support a universal claim that structural descriptions are always superior to psychological descriptions.

Instead, it supports a narrower and more useful experimental framing:

> **A representation may be sufficient for predicting what a system will do while being insufficient for reconstructing why that action was reachable, which constraint mattered, or what should be changed to prevent recurrence.**

This is the main result of the sanity check.

The psychological representation was strong for tasks close to the observed behavioural output. The structural representations were stronger for recovering underlying state and control-relevant variables.

That distinction maps onto the causal-sufficiency question for action-taking AI systems. A statement such as:

> “The agent wanted to transfer the money.”

may be useful for describing or even predicting the immediate behaviour while preserving little information about:

- the permission that enabled the transition;
- the constraint that failed or was absent;
- the state that made the action reachable;
- the control variable that should be changed;
- the intervention point that could have blocked execution;
- the configuration responsibility behind the reachable action space.

## Important boundary condition

The experiment also shows that **structural representation is not a single universally optimal object**.

`S_recon` was better for overall state reconstruction, while `S_control` was better for preserving specific risk/constraint information.

Therefore the stronger formulation is:

> **A representation is causally sufficient relative to a specified task, intervention, and level of resolution.**

The research programme should not ask whether one representational language is globally superior. It should ask:

> **Which representation preserves the information required for the causal task being performed?**

## Falsification value

The test produced both wins and losses for the psychological representation. That is important.

If every experimental design were constructed so that structural representations must win, the programme would not be meaningfully falsifiable.

A valid future benchmark should allow outcomes such as:

- psychological representations outperforming structural ones on some tasks;
- no measurable difference between representations;
- structural representations outperforming only after particular interventions or under specific causal-resolution requirements.

The scientific target is therefore not:

\[
\text{psychological} < \text{structural}
\]

universally.

It is closer to:

\[
\text{causal sufficiency} = f(\text{representation},\text{task},\text{capacity},\text{resolution},\text{intervention})
\]

## Next experimental step

A stronger study should turn this toy result into a reproducible benchmark by:

- fixing the data-generating process and random seeds;
- publishing the exact construction of P, S_recon, and S_control;
- adding train/validation/test splits;
- reporting confidence intervals across repeated runs;
- matching representation capacity more formally;
- expanding the task family to trajectory reconstruction, intervention design, constraint diagnosis, responsibility localization, and recurrence prevention;
- testing whether the same pattern appears in real or controlled AI-agent traces rather than only synthetic states.

## One-line takeaway

> **A coarse psychological description can be highly sufficient for predicting behaviour while remaining causally insufficient for reconstructing mechanism, control variables, intervention points, or accountability structure.**
