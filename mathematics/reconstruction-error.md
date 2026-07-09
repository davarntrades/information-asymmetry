# Reconstruction Error

Reconstruction error compares original dynamics with recovered dynamics.

\[
\Delta(D, \hat{D}) = d(D, \hat{D})
\]

where \(d\) is a chosen distance or divergence measure.

Possible choices include:

- trajectory distance;
- state-space distance;
- topology mismatch;
- divergence between reachable sets;
- mismatch in constraints;
- temporal ordering error.

A central empirical question is whether \(\hat{D}\) is systematically less informative than \(D\).
