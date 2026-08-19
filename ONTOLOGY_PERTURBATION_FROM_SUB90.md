# Ontology Perturbation: From a Sub-90% Result to a Hybrid Causal Architecture

## The question that changed the research trajectory

A key turn in this programme began with a simple question:

> **Why is the dynamical representation still below 90% on explicitly causal intervention questions?**

The important move was not to defend the dynamical ontology. It was to treat the shortfall as evidence that the representation might be missing information required by the task.

That changed the research trajectory.

```mermaid
flowchart LR
    Q[Why is dynamics below 90 percent?] --> T[Test the failure signal]
    T --> S[Structural Causal Models]
    S --> H[Hybrid dynamical plus SCM representation]
    H --> A[Compression and ablation tests]
    A --> R[Causal resolution threshold]
    R --> P[Runtime causal overlay prototype]
```

## What the result exposed

The earlier dynamical representation preserved:

- state;
- trajectory;
- reachability;
- constraints;
- transition structure.

That made it useful for questions such as:

- How did the system move?
- Which state became reachable?
- Which constraint failed or was absent?
- Where in the trajectory did the unsafe transition emerge?

But explicit causal intervention questions demand another kind of structure:

- Which variable is a direct causal parent of the outcome?
- What happens under `do(X = x_alt)`?
- Which intervention changes the outcome?
- Which counterfactual removes forbidden-state reachability?

This motivated the addition of **Structural Causal Models (SCMs)** as an explicit interventional layer.

## The resulting causal-resolution stack

The working stack became:

\[
\text{Psychological}
\rightarrow
\text{Dynamical}
\rightarrow
\text{Structural Causal / Mechanistic}
\]

with the following provisional interpretation:

- **Psychological representation** — behavioural and motive-like compression;
- **Dynamical representation** — state, trajectory, reachability, constraints and transition geometry;
- **Structural causal representation** — causal parents, interventions and counterfactual dependence.

The result did **not** invalidate dynamics. It showed that dynamics may be an intermediate causal-resolution layer rather than the endpoint for every causal task.

## The hybrid representation

The next step was therefore not to replace dynamics with SCMs, but to combine them:

\[
R_{hybrid}=R_{dynamics}\oplus R_{SCM}
\]

This gives two complementary forms of causal information:

> **Dynamics asks how the system moved and what became reachable.**

> **Structural causal modelling asks what would have changed the outcome.**

The combined target is:

> **What happened, how did it become reachable, and which intervention would have changed it?**

## Why the sub-90% result mattered

If the original dynamical representation had immediately produced near-perfect intervention performance, the research could have stopped too early with the claim that dynamics was the sufficient ontology.

Instead, the sub-90% result acted as a useful perturbation. It forced the programme to ask:

> **What task-relevant causal information has this representation compressed away?**

That led to:

```text
Psychological vs dynamical comparison
        ↓
Task-relative causal sufficiency
        ↓
Explicit causal-intervention benchmark
        ↓
SCM / mechanistic representations
        ↓
Hybrid dynamical + SCM representation
        ↓
Compression and variable ablation
        ↓
Causal-resolution thresholds
        ↓
Runtime causal-analysis overlay
```

## Methodological principle

The broader lesson is now part of the research method:

> **Do not protect the ontology. Test whether it is sufficient for the task.**

A representation should be retained, refined, combined, or rejected according to what information the causal task actually requires.

This is consistent with the programme's task-relative formulation:

\[
\text{Representation}\times\text{Task}\rightarrow\text{Sufficiency}
\]

and with the emerging question:

> **At what causal-resolution threshold does a representation cease to be sufficient?**

## Engineering consequence

The same discovery now motivates an additive prototype in Morrison Runtime Governance:

**Dynamical Runtime Governance with an SCM-based Causal Analysis Overlay.**

The runtime-governance layer remains responsible for the canonical pre-execution decision. The SCM-based overlay operates on the resulting trajectory evidence and asks:

- Why was a forbidden state reachable?
- Which variables materially contributed?
- What intervention would have broken the trajectory?
- Would the forbidden state remain reachable under a counterfactual change to permission, safeguards, monitoring, approval, trust boundaries, or other causal parents?

The research therefore moved from asking only:

> **Is the forbidden state reachable?**

Toward also asking:

> **What would have made it unreachable?**

That shift came directly from taking a failed threshold seriously instead of explaining it away.
