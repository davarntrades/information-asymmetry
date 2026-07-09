# Constraint Geometry

Constraints define boundaries in state space. They may describe physical limits, policy restrictions, biological limits, task constraints, or unsafe regions.

Unsafe or forbidden regions may be represented as:

\[
\Omega \subset \mathcal{X}
\]

A trajectory is safe if:

\[
\tau \cap \Omega = \emptyset
\]

Constraint geometry helps describe which transitions are allowed, blocked, risky, or impossible.
