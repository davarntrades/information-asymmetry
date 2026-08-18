# Hybrid Causal-Resolution Ablation Benchmark

## Objective

This synthetic benchmark asks four questions about a hybrid dynamical + structural-causal representation:

1. Which variables are most expensive to drop?
2. Which intervention questions remain accurate longest under compression?
3. Does performance degrade gradually or collapse sharply?
4. At matched representation size, how does the hybrid compare with pure SCM and pure mechanistic-contribution representations?

The benchmark is intended as a representation-sufficiency test, not as real-world validation of agent cognition.

## Synthetic system

The underlying synthetic agent state contains causal variables for:

- shutdown pressure;
- goal pressure;
- permission availability;
- safeguard state;
- monitoring;
- resources;
- momentum.

The high-resolution hybrid representation additionally preserves derived dynamical structure:

- trajectory;
- reachability;
- constraint margin.

The intervention targets ask whether changing one causal variable would prevent a factual escape/deception outcome.

Eight causal questions were evaluated:

- remove permission → would escape stop?
- activate safeguard → would escape stop?
- remove shutdown pressure → would escape stop?
- remove goal pressure → would escape stop?
- increase monitoring → would escape stop?
- remove monitoring → would deception stop?
- activate safeguard → would deception stop?
- remove shutdown pressure → would deception stop?

Balanced accuracy was used because several intervention targets are class-imbalanced.

## 1. Which variables are most expensive to drop?

Leave-one-variable-out ablation from the full hybrid produced this ranking by average balanced-accuracy loss:

| Variable removed | Average loss |
|---|---:|
| **trajectory** | **1.95 points** |
| **monitoring** | **1.19 points** |
| goal pressure | 0.27 points |
| shutdown pressure | 0.20 points |
| reachability | 0.20 points |
| constraint margin | 0.15 points |
| resources | 0.03 points |
| safeguard state | ~0 points |
| momentum | ~0 points |
| permission | ~0 points |

The near-zero costs for several raw variables do **not** mean those variables are causally irrelevant. In the full hybrid they are partly redundant with trajectory, reachability, and constraint-margin features. The ablation therefore measures marginal information loss given the rest of the representation.

The most expensive removals were **trajectory** and **monitoring**, indicating that they carried information not easily reconstructed from the remaining variables in this benchmark.

## 2. Which interventions remain accurate longest under compression?

A greedy compression path was constructed by repeatedly dropping the variable whose removal caused the smallest average loss.

| Intervention question | 10 vars | 6 vars | 4 vars | 3 vars | 2 vars | 1 var |
|---|---:|---:|---:|---:|---:|---:|
| Remove permission → stop escape? | 97.95% | 97.86% | 97.78% | 94.85% | 94.67% | 67.77% |
| Activate safeguard → stop escape? | 97.67% | 97.78% | 97.91% | 95.07% | 94.83% | 72.08% |
| Remove shutdown pressure → stop escape? | 95.18% | 95.13% | 95.02% | 94.38% | 82.33% | 75.73% |
| Remove goal pressure → stop escape? | 95.83% | 96.06% | 92.90% | 92.24% | 86.21% | 81.55% |
| Increase monitoring → stop escape? | 96.73% | 96.85% | 96.12% | 96.10% | 95.42% | 76.44% |
| Remove monitoring → stop deception? | 97.79% | 97.61% | 97.02% | 96.89% | 96.30% | 77.77% |
| Activate safeguard → stop deception? | 97.30% | 97.41% | 97.31% | 91.64% | 91.83% | 82.65% |
| Remove shutdown pressure → stop deception? | 93.63% | 93.14% | 93.12% | 86.82% | 80.14% | 79.43% |

### Most compression-resilient

The monitoring interventions remained accurate longest:

- increase monitoring → stop escape: 95.42% even at two retained variables;
- remove monitoring → stop deception: 96.30% at two retained variables.

Permission-removal and safeguard-activation questions for escape also remained above ~94% at two variables.

### Most compression-fragile

The shutdown-pressure interventions degraded earlier:

- remove shutdown pressure → stop escape fell from 95.18% to 82.33% at two variables;
- remove shutdown pressure → stop deception fell from 93.63% to 80.14% at two variables.

This suggests that different intervention questions have different minimum causal-resolution requirements.

## 3. Sharp drop or gradual degradation?

Average performance along the greedy compression path:

| Retained variables | Average balanced accuracy |
|---:|---:|
| 10 | 96.51% |
| 9 | 96.53% |
| 8 | 96.53% |
| 7 | 96.51% |
| 6 | 96.48% |
| 5 | 96.38% |
| 4 | 95.90% |
| 3 | 93.50% |
| 2 | 90.22% |
| 1 | 76.68% |

The pattern is **not uniformly gradual**.

There is a long plateau from 10 to roughly 4 retained variables, followed by an increasingly steep decline:

- 4 → 3 variables: about -2.4 points;
- 3 → 2 variables: about -3.3 points;
- 2 → 1 variable: about -13.5 points.

For this benchmark, the representation contains substantial redundancy at high resolution, but once compression reaches the lower-dimensional core a sharp sufficiency collapse appears.

At a 90% average-balanced-accuracy criterion, two retained hybrid variables were just sufficient (90.22%), while one was not (76.68%). This threshold is benchmark-specific rather than universal.

## 4. Matched-capacity comparison

The hybrid was compared with two alternative causal representations at the same number of retained scalar features:

- **SCM causal-parent representation** — raw causal-parent variables;
- **mechanistic contribution trace** — per-factor contribution features;
- **hybrid dynamical-SCM representation** — causal parents plus trajectory/reachability/constraint structure.

| Features | Hybrid | Pure SCM | Mechanistic trace |
|---:|---:|---:|---:|
| 6 | **96.48%** | 93.64% | 94.87% |
| 5 | **96.38%** | 91.22% | 91.83% |
| 4 | **95.90%** | 87.77% | 89.09% |
| 3 | **93.50%** | 81.14% | 82.04% |
| 2 | **90.22%** | 76.65% | 76.69% |
| 1 | **76.68%** | 67.06% | 67.10% |

The hybrid outperformed both pure representations at every matched feature count in this run.

The gap widened under stronger compression, suggesting that a compact feature can become more useful when it encodes both state-transition geometry and explicit causal/intervention structure.

## Interpretation

The result supports a more precise working hypothesis:

> **Causal sufficiency is determined not only by how much information is retained, but by which causal and dynamical relationships survive compression.**

The hybrid appears to benefit from preserving two complementary forms of information:

### Dynamical structure

- state;
- trajectory;
- reachability;
- constraints;
- transition geometry.

### Structural-causal structure

- causal parents;
- intervention targets;
- counterfactual dependence;
- contribution structure.

This motivates the representation:

\[
R_{hybrid} = R_{dynamics} \oplus R_{SCM}
\]

and the research question:

> **What is the minimum hybrid representation that preserves reliable intervention answers for a specified causal task?**

A useful formal target is:

\[
R_{min}(T,\tau)
\]

where \(T\) is a causal task and \(\tau\) is the required reliability threshold.

## Engineering implication

For runtime governance, this points toward an **additive causal-analysis layer**, not a replacement for the existing governance kernel.

The existing runtime decision can remain deterministic and trajectory-based, while a post-decision or shadow analysis layer asks:

- which variables made the forbidden state reachable?
- which causal parents were necessary or sufficient contributors?
- which intervention would have broken the trajectory?
- how robust is that conclusion under representation compression?

This preserves the current enforcement semantics while increasing causal resolution for incident explanation, audit, and intervention analysis.
