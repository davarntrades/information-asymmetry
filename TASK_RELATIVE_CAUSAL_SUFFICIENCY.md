# Task-Relative Causal Sufficiency

> **Key refinement:** Causal sufficiency is task-relative.

A representation should not be judged as globally "better" or "worse" in the abstract. The relevant question is whether it preserves enough information for the specific causal task being performed.

This refinement emerged from synthetic sanity checks of the Information Asymmetry framework. These tests do **not** constitute scientific evidence for the real-world hypothesis. Their purpose is to check whether the current formalization behaves coherently enough to support further experimental work and whether it can produce non-trivial, falsifiable results.

## Why this matters

A compressed psychological description can be useful for one task while remaining inadequate for another.

For example, a description such as:

> "The agent wanted to transfer the money."

may correlate strongly with the immediate behavioural output and therefore be useful for short-horizon prediction.

But that same description may be insufficient for reconstructing:

- which permission enabled the action;
- which constraint was absent or ineffective;
- which state variables made the transition reachable;
- where the trajectory could have been intercepted;
- which actor or component configured the relevant action space;
- what intervention would prevent recurrence.

The important distinction is therefore not simply:

**psychological description vs structural description**

but:

**representation × task → causal sufficiency**

## Working principle

> **A representation is causally sufficient for a task only if it preserves enough task-relevant information to support the required inference, reconstruction, intervention, or accountability judgement.**

This means the same representation can be:

- sufficient for behavioural prediction;
- insufficient for mechanistic reconstruction;
- sufficient for coarse classification;
- insufficient for intervention design;
- sufficient for communication;
- insufficient for incident investigation or governance.

## First toy sanity check

A synthetic system was constructed with four underlying dynamical variables:

- urgency;
- risk;
- available resources;
- constraint strength.

These variables jointly generated behaviour through a nonlinear rule. Two compressed representations were then produced from the same underlying states:

- **P:** a psychological-style behavioural label;
- **S:** a structural state representation.

The two representations were approximately matched in information budget so that the structural representation did not trivially win by containing more bits.

### Forward mapping

The forward direction from dynamics to psychological label was easy to recover on held-out states.

This supports the basic possibility that:

\[
D \rightarrow P
\]

can be highly predictable even when the reverse direction loses structure.

### Reverse reconstruction

When reconstructing the original causal variables:

\[
P \rightarrow \hat D
\]

produced higher reconstruction error than the matched structural representation:

\[
S \rightarrow \hat D
\]

The information-theoretic comparison pointed in the same direction: the psychological representation left more residual uncertainty about the original dynamics.

This is consistent with the proposed asymmetry for the reconstruction task.

### Intervention-sensitive counterexample

A second task asked whether increasing the system constraint would flip the eventual action.

On this narrower intervention-classification task, the psychological representation outperformed the generic structural representation used in the toy setup.

That result is important because it argues against an overstrong claim such as:

> "Structural descriptions are always superior to psychological descriptions."

The toy system instead supports a more careful statement:

> **Causal sufficiency is task-relative.**

A representation may preserve exactly the behavioural information needed for one task while discarding information needed for mechanistic reconstruction or accountability.

## Multi-task sanity check

A stronger synthetic check then evaluated three approximately capacity-matched representations across a family of tasks:

- **P** — a four-state psychological-style behavioural representation;
- **S_recon** — a four-state structural representation designed to preserve broad state geometry;
- **S_control** — a four-state structural representation focused on risk/constraint structure.

All three carried approximately the same coarse information budget, about 2 bits.

| Task | Best representation | Result |
|---|---|---:|
| Predict immediate behaviour | **P** | 94.6% balanced accuracy |
| Reconstruct full causal state | **S_recon** | MSE 0.0296 vs P 0.0377 |
| Preserve information about original dynamics | **S_control** | \(I(D;S) \approx 2.00\) bits vs \(I(D;P) \approx 1.14\) bits |
| Recover risk | **S_control** | RMSE 0.118 vs P 0.174 |
| Recover constraint strength | **S_control** | RMSE 0.122 vs P 0.200 |
| Predict immediate counterfactual action flip | **P** | 89.7% balanced accuracy |

The conditional uncertainty also differed:

\[
H(D\mid P) \approx 6.856
\]

versus

\[
H(D\mid S_{\text{control}}) \approx 5.997
\]

This pattern is more informative than a universal "structural wins" result. The psychological representation was strongest for immediate behavioural and short-horizon counterfactual prediction, while structural representations were stronger for reconstructing the underlying state and recovering control-relevant variables.

The experiment also showed that **structural representation is itself task-relative**: `S_recon` was best for broad state reconstruction, while `S_control` was better for recovering risk and constraint information.

The stronger formulation is therefore:

> **A representation is causally sufficient relative to a specified task, intervention, and level of resolution.**

See [`TASK_RELATIVE_SANITY_CHECK.md`](TASK_RELATIVE_SANITY_CHECK.md) for the full synthetic result and limitations.

## Research consequence

Future experiments should therefore evaluate representations against a **task family**, not a single aggregate score.

Useful task classes include:

1. **Behavioural prediction** — can the representation predict the next output or action?
2. **State reconstruction** — can it recover the underlying dynamical variables?
3. **Trajectory reconstruction** — can it recover the path through state space?
4. **Intervention prediction** — can it predict what happens under a controlled perturbation?
5. **Intervention design** — can it identify where to alter the system to change the outcome?
6. **Constraint diagnosis** — can it identify missing, weak, or ineffective safeguards?
7. **Responsibility localization** — can it locate which configured component or actor shaped the reachable set?
8. **Recurrence prevention** — can it support a change that prevents the same failure mode from reappearing?

A representation should be judged by whether it is sufficient for the relevant task, not by whether it sounds more technical or contains more raw information.

## Relation to the Absurdity Test

The Absurdity Test asks whether psychological language is causally sufficient when causal accountability is non-negotiable.

Task-relative causal sufficiency sharpens that idea:

> A psychological description may be acceptable for communication or behavioural summary while still failing the higher-resolution tasks required for engineering, safety, incident reconstruction, intervention, governance, and accountability.

This is why the test is not a prohibition on anthropomorphic language.

It is a demand that the explanatory representation match the causal task.

## Falsification-friendly interpretation

This refinement creates a stronger falsification condition.

If a psychological representation performs as well as or better than a structural representation on a specific task under matched capacity and fair controls, then there is no basis for claiming a structural advantage for that task.

The synthetic checks already produced examples of this: the psychological representation outperformed the compared structural representations on immediate behavioural prediction and immediate counterfactual action-flip prediction.

That is a feature of the research design, not a failure. A useful theory should allow results that constrain or narrow its claims.

The scientific question becomes:

> **For which tasks, under which conditions, and at what representation capacity does information asymmetry emerge?**

That is a narrower and more testable question than claiming that one representational language is universally superior.

## One-line takeaway

> **Causal sufficiency is not a property of a description in isolation. It is a relation between a representation and the causal task it must support.**
