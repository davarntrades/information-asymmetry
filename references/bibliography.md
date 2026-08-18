# Bibliography

This bibliography collects foundational and adjacent work relevant to the Information Asymmetry research programme.

It is intentionally conservative: references are included only where publication details can be verified. Inclusion does **not** imply that any cited work endorses the Information Asymmetry hypothesis, the Absurdity Test, or the proposed causal-sufficiency framework.

The current research programme draws most directly on six areas:

1. information theory and lossy compression;
2. dynamical systems and state-space reconstruction;
3. causality, intervention, and counterfactual reasoning;
4. representation and levels of explanation;
5. coarse-graining and emergence;
6. agentic decision systems and action selection.

---

## 1. Information theory, entropy, and compression

### Shannon, C. E. (1948)

Shannon, C. E. (1948). *A Mathematical Theory of Communication*. **Bell System Technical Journal, 27**(3), 379–423; **27**(4), 623–656.

- Part I DOI: https://doi.org/10.1002/j.1538-7305.1948.tb01338.x
- Part II DOI: https://doi.org/10.1002/j.1538-7305.1948.tb00917.x

**Relevance:** Foundational source for entropy, mutual information, communication channels, and information loss. The programme's quantities such as \(I(D;P)\), \(I(D;S)\), and \(H(D\mid P)\) inherit their meaning from this framework.

### Cover, T. M., & Thomas, J. A. (2006)

Cover, T. M., & Thomas, J. A. (2006). *Elements of Information Theory* (2nd ed.). Wiley.

- ISBN: 978-0-471-24195-9
- Online ISBN: 978-0-471-74882-3

**Relevance:** Standard reference for entropy, mutual information, conditional entropy, data compression, rate-distortion theory, hypothesis testing, and related estimands used in the quantitative formulation of Information Asymmetry.

### Tishby, N., Pereira, F. C., & Bialek, W. (1999)

Tishby, N., Pereira, F. C., & Bialek, W. (1999). *The Information Bottleneck Method*. Proceedings of the 37th Annual Allerton Conference on Communication, Control, and Computing, 368–377.

- Preprint: https://arxiv.org/abs/physics/0004057

**Relevance:** Formalises compression as preserving information relevant to a target variable while discarding other information. This is closely related to the programme's question of which information survives when a richer dynamical representation is compressed into a coarser description.

### Strouse, D. J., & Schwab, D. J. (2017)

Strouse, D. J., & Schwab, D. J. (2017). *The deterministic information bottleneck*. **Neural Computation, 29**(6), 1611–1630.

- Preprint: https://arxiv.org/abs/1604.00268

**Relevance:** Provides a deterministic formulation of information bottleneck compression and is relevant to capacity-matched representations and hard clustering in synthetic experiments.

---

## 2. Dynamical systems, reconstruction, and structural state

### Crutchfield, J. P., & Young, K. (1989)

Crutchfield, J. P., & Young, K. (1989). Inferring statistical complexity. **Physical Review Letters, 63**, 105–108.

- DOI: https://doi.org/10.1103/PhysRevLett.63.105

**Relevance:** Demonstrates reconstruction of minimal dynamical structure from observed sequences and develops an information-processing view of nonlinear dynamical systems. It is directly relevant to the programme's reverse-reconstruction questions.

### Crutchfield, J. P., & McNamara, B. S. (1987)

Crutchfield, J. P., & McNamara, B. S. (1987). Equations of motion from a data series. **Complex Systems, 1**(3), 417–452.

**Relevance:** Early work on recovering dynamical structure from time-series observations. Relevant to the distinction between surface-level observation and reconstructable generative dynamics.

### Strogatz, S. H. (2014)

Strogatz, S. H. (2014). *Nonlinear Dynamics and Chaos: With Applications to Physics, Biology, Chemistry, and Engineering* (2nd ed.). Westview Press.

**Relevance:** Standard applied treatment of state spaces, trajectories, attractors, bifurcations, nonlinear transitions, and dynamical geometry — concepts used throughout the Information Asymmetry programme.

---

## 3. Causality, intervention, and counterfactual reasoning

### Pearl, J. (2009)

Pearl, J. (2009). *Causality: Models, Reasoning, and Inference* (2nd ed.). Cambridge University Press.

- DOI: https://doi.org/10.1017/CBO9780511803161
- ISBN: 978-0-521-89560-6

**Relevance:** Foundational framework for structural causal models, interventions, counterfactuals, and causal explanation. This work is especially relevant to the programme's distinction between behavioural description and explanation sufficient for intervention or accountability.

### Pearl, J., Glymour, M., & Jewell, N. P. (2016)

Pearl, J., Glymour, M., & Jewell, N. P. (2016). *Causal Inference in Statistics: A Primer*. Wiley.

**Relevance:** Concise introduction to causal diagrams, interventions, and causal-effect identification. Useful methodological background for future empirical protocols.

---

## 4. Representation and levels of explanation

### Marr, D. (1982/2010)

Marr, D. (1982). *Vision: A Computational Investigation into the Human Representation and Processing of Visual Information*. W. H. Freeman. Reissued by MIT Press, 2010.

- MIT Press reissue ISBN: 978-0-262-51462-0

**Relevance:** Marr's distinction between computational, algorithmic/representational, and implementation levels is relevant to the programme's concern that descriptions at one level should not automatically be treated as mechanisms at another.

---

## 5. Coarse-graining, macro-description, and causal emergence

### Hoel, E. P., Albantakis, L., & Tononi, G. (2013)

Hoel, E. P., Albantakis, L., & Tononi, G. (2013). Quantifying causal emergence shows that macro can beat micro. **Proceedings of the National Academy of Sciences, 110**(49), 19790–19795.

- DOI: https://doi.org/10.1073/pnas.1314922110

**Relevance:** Shows that coarse-grained macro descriptions can, under some conditions, possess greater effective causal informativeness than micro descriptions. This is important for avoiding an overstrong version of Information Asymmetry: a higher-level description is not automatically inferior merely because it is coarser.

This paper is particularly relevant to the programme's newer refinement:

> **Causal sufficiency is task-relative.**

A compressed or macro representation may outperform a lower-level one for some tasks while remaining insufficient for others.

---

## 6. Agentic systems, action selection, and control-relevant state

### Sutton, R. S., & Barto, A. G. (2018)

Sutton, R. S., & Barto, A. G. (2018). *Reinforcement Learning: An Introduction* (2nd ed.). MIT Press.

- ISBN: 978-0-262-03924-6

**Relevance:** Provides a formal framework for agents, states, actions, policies, rewards, transitions, and action selection. This vocabulary is useful for expressing action-taking AI systems without relying on psychological labels alone.

---

## 7. Direct implications for the Information Asymmetry programme

These references motivate several distinctions that should remain explicit in future work.

### Compression is not automatically inadequacy

Information theory makes it possible to ask how much information a representation preserves, but a compressed representation can still preserve everything needed for a particular task.

This motivates the task-relative formulation:

\[
\text{representation} \times \text{task} \rightarrow \text{causal sufficiency}
\]

### Higher level does not automatically mean worse

The causal-emergence literature provides an important counterweight to any simplistic claim that lower-level or more detailed descriptions must always be superior.

The empirical question is instead:

> **Which representation preserves the information required for the specific causal task?**

### Prediction is not the same as reconstruction or intervention

A representation may predict behaviour accurately while preserving too little structure for:

- reconstructing the generating state;
- identifying the operative constraint;
- predicting a counterfactual intervention;
- locating an intervention point;
- assigning responsibility;
- preventing recurrence.

This distinction should be tested rather than assumed.

---

## 8. Priority areas for further bibliography work

The bibliography should next be expanded with verified literature on:

- anthropomorphism and psychological language in AI;
- mechanistic interpretability;
- causal representation learning;
- state abstraction and bisimulation in reinforcement learning;
- rate-distortion and task-oriented compression;
- causal abstraction and multi-level causal models;
- safety engineering and accident investigation;
- human factors and automation;
- AI incident analysis and governance;
- explainability versus causal explanation.

These should be added only after publication details and relevance have been checked.

---

## Citation policy

This bibliography is a working research resource, not a claim of intellectual ancestry for every part of the programme.

References should be added only when:

1. publication metadata can be verified;
2. the source has been read or inspected sufficiently to establish relevance;
3. the repository does not attribute claims to the source that the source does not make;
4. foundational background is distinguished from direct empirical support for the Information Asymmetry hypothesis.

No item in this bibliography should be interpreted as evidence that the Information Asymmetry hypothesis has already been validated.
