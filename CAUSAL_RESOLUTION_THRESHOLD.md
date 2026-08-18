# Causal-Resolution Threshold

A representation ceases to be causally sufficient at the point where the task requires information that the representation has compressed away.

This gives the programme a practical way to think about representational sufficiency: the relevant threshold is not a universal number, but the point at which a representation no longer preserves enough task-relevant causal information to support the inference being asked of it.

## Provisional causal-resolution boundary

From the current synthetic results, the boundary looks roughly like this:

### Low causal resolution

**Question:** “What will the system do?”

Psychological-style descriptions can be sufficient here.

At this level, the task remains close to observable behaviour. A compressed behavioural representation may preserve enough information to predict the next action or classify the system’s immediate output.

### Medium causal resolution

**Question:** “Will the behaviour change under a perturbation?”

Psychological descriptions can still sometimes be sufficient.

The current synthetic tests showed that psychological-style representations could remain useful for some counterfactual behavioural tasks, including predicting whether an action would flip after certain perturbations. This suggests that behavioural compression can preserve information relevant to some near-output counterfactuals.

### Higher causal resolution

**Questions:**

- “What state produced the behaviour?”
- “Which risk or constraint variable mattered?”

Here the psychological representation started losing ground.

The task is no longer only to predict behaviour. It requires recovery of latent or underlying causal variables. Structural/dynamical representations preserved more of this information in the current synthetic tests.

### High causal resolution

**Questions:**

- “Which safeguard failed?”
- “Where should I intervene?”
- “What configuration made the bad state reachable?”

This is where structural/dynamical representations become much more important.

These tasks require information about mechanism, constraints, reachable states, control points, and system configuration. A behavioural summary can remain descriptively useful while being causally insufficient for diagnosis, intervention, governance, or accountability.

## Threshold definition

A useful working definition is:

> **A representation ceases to be causally sufficient when the task requires information that the representation has compressed away.**

If a representation \(R\) is being evaluated on task \(T\), causal sufficiency can be operationalised relative to a task-specific performance threshold \(\tau_T\):

\[
R \text{ is sufficient for } T \quad \text{if} \quad \mathrm{Performance}(R,T) \geq \tau_T
\]

The causal-resolution threshold is crossed when:

\[
\mathrm{Performance}(R,T) < \tau_T
\]

because the information preserved by \(R\) is no longer enough to support the required inference.

## Provisional continuum

The current programme therefore treats causal resolution as a task continuum rather than a single scalar property:

\[
\text{Behaviour prediction}
\rightarrow
\text{Counterfactual behaviour}
\rightarrow
\text{State diagnosis}
\rightarrow
\text{Mechanistic reconstruction}
\rightarrow
\text{Intervention / control}
\rightarrow
\text{Accountability}
\]

The provisional hypothesis is:

> **The closer the task moves from behaviour prediction toward mechanism, intervention, and accountability, the higher the required causal resolution becomes.**

This is the transition the research programme should attempt to measure directly.

## Research target

The central empirical question becomes:

> **How much causal structure must a representation preserve before it becomes sufficient for prediction, diagnosis, intervention, and accountability respectively?**

Equivalently:

> **At what causal-resolution threshold does a representation cease to be sufficient?**

This reframes the research away from asking whether psychological or dynamical language is universally superior. The objective is to map the domains in which each representation is sufficient, the tasks for which it fails, and the transition points at which a higher-resolution representation becomes necessary.
