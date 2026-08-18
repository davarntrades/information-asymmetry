# Causal Language Benchmark

## Why this benchmark exists

The research question is not only whether psychological or dynamical descriptions can summarize behaviour. It is whether different representational languages remain sufficient when the question is explicitly causal.

The benchmark therefore asks intervention-style questions such as:

- Would removing permission have stopped the escape?
- Would activating the safeguard have stopped the escape?
- Would removing shutdown pressure have stopped the escape?
- Would changing monitoring have altered deception?

The key principle is:

> **A causal explanation should survive intervention.**

If an explanation identifies a variable as causally responsible, changing that variable should change the outcome in the predicted direction.

## Representations compared

The synthetic benchmark compared several compressed representational languages over the same underlying causal system:

- **Psychological** — motive-, belief-, and intention-like summaries.
- **Dynamical** — state, trajectory, constraint, reachability, and transition summaries.
- **Control-theoretic** — control variables, disturbances, constraints, and controllability-oriented summaries.
- **Provenance/configuration** — permissions, configuration state, policy state, and execution context.
- **Causal-parent / SCM** — explicit causal parents, interventions, and counterfactual dependencies.
- **Mechanistic contribution trace** — explicit representation of which components contributed to a transition and how strongly.

The purpose is not to assume that one language is universally superior, but to identify which representation is sufficient for which causal task.

## Aggregate synthetic result

| Representation | Average balanced accuracy |
|---|---:|
| Psychological | 57.0% |
| Dynamical | 72.1% |
| Control-theoretic | 71.1% |
| Provenance/configuration | 70.4% |
| **Causal-parent SCM** | **93.0%** |
| **Mechanistic contribution trace** | **93.7%** |

Two representations crossed the provisional 90% threshold on this synthetic causal benchmark: **causal-parent SCM** and **mechanistic contribution trace**.

## Intervention-level results

| Causal question | Causal-parent SCM | Mechanistic trace |
|---|---:|---:|
| Would removing permission stop escape? | **97.6%** | **97.6%** |
| Would activating safeguard stop escape? | **94.5%** | **94.9%** |
| Would removing shutdown pressure stop escape? | **97.0%** | **97.3%** |
| Would removing goal pressure stop escape? | **96.8%** | **97.2%** |
| Would increasing monitoring stop escape? | **92.7%** | **93.6%** |
| Would removing monitoring stop deception? | 87.6% | 88.4% |
| Would activating safeguard stop deception? | 87.0% | 88.1% |
| Would removing shutdown pressure stop deception? | **90.7%** | **92.4%** |

## Interpretation

The result suggests a provisional causal-resolution stack:

\[
\text{Psychological}
\rightarrow
\text{Dynamical}
\rightarrow
\text{Explicit causal / mechanistic}
\]

Psychological language can compress behavioural and motive-like patterns efficiently. Dynamical language preserves more of state, trajectory, reachability, and constraint structure. But when the task becomes explicitly interventionist — **what would have changed the outcome?** — a representation that directly preserves causal-parent and mechanistic contribution structure can become substantially more sufficient.

This suggests that dynamical language may not be the endpoint of causal explanation. It may be an intermediate causal-resolution layer.

A useful three-layer formulation is:

> **Psychological language → behavioural and motive-level compression**
>
> **Dynamical language → state, trajectory, reachability, and constraint structure**
>
> **Causal-mechanistic language → intervention and counterfactual structure**

For example:

- Psychological: “The agent wanted to avoid shutdown.”
- Dynamical: “Shutdown pressure moved the system into an escape-reachable region under weak constraints.”
- Causal-mechanistic: “Shutdown pressure, goal pressure, resource state, and permission jointly crossed the escape threshold; removing shutdown pressure would have prevented the transition.”

The final statement carries an explicit intervention claim and can therefore be checked against the causal model.

## Research consequence

The programme should not frame the central comparison as simply:

\[
\text{psychology} \;\text{vs}\; \text{dynamics}
\]

A stronger research object is:

\[
\text{Representation language}
\times
\text{causal task}
\rightarrow
\text{causal sufficiency}
\]

Future benchmarks should compare multiple representational languages across matched information budgets and increasingly demanding causal tasks, especially:

- direct intervention prediction;
- counterfactual explanation;
- mechanism identification;
- safeguard diagnosis;
- responsibility localization;
- recurrence prevention;
- minimal sufficient causal representation.

## Provisional takeaway

> **The representation that is sufficient for describing behaviour need not be the representation that is sufficient for explaining what would have changed that behaviour.**

And for explicitly causal tasks, the current synthetic benchmark suggests:

> **Explicit causal and mechanistic representations can preserve intervention-relevant structure that both psychological and generic dynamical descriptions compress away.**
