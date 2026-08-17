# Psychological-Language Absurdity Test

> **Core thesis:** Psychological language can function as a lossy compression of deeper system dynamics. The problem begins when the compressed description is mistaken for the mechanism itself.

This companion page provides a fast diagnostic for one of the central concerns behind the Information Asymmetry programme: whether a familiar psychological description preserves enough causal structure to support explanation, intervention, accountability, and control.

## The absurdity test

Take ordinary psychological language used to describe AI behaviour and apply the same style of description to other engineered or physical systems. If the explanation becomes obviously inadequate, ask whether the same causal compression is being tolerated merely because the system is an AI model.

| System | Psychological description | Higher-resolution description |
|---|---|---|
| Guided missile | “The missile wanted to hit the building.” | Guidance, target coordinates, sensor feedback, control law, trajectory, and terminal conditions produced interception. |
| Thermostat | “The thermostat felt cold and decided to turn the heating on.” | Temperature crossed a threshold; the controller changed actuator state. |
| Hurricane | “The hurricane was angry and wanted to destroy the coast.” | Pressure gradients, heat transfer, moisture, rotation, and atmospheric conditions drove the trajectory. |
| Traffic system | “Traffic wanted to create a jam.” | Vehicle density, braking propagation, road capacity, and feedback produced a congestion wave. |
| Trading algorithm | “The algorithm became nervous and sold the shares.” | Market variables satisfied configured decision conditions; the sell action became reachable and executed. |
| Malware | “The malware wanted your passwords.” | Code executed credential-access and exfiltration operations permitted by the compromised environment. |
| Reactor control system | “The reactor realised it was getting dangerous and calmed itself down.” | Sensor values crossed control thresholds; protection mechanisms altered reactor state. |
| Autopilot | “The autopilot wanted the aircraft to turn left.” | Navigation target, measured state, and control law generated actuator commands that changed trajectory. |
| Database | “The database refused to delete the record because it understood it was important.” | The requested state transition violated permissions, constraints, or integrity rules. |
| Firewall | “The firewall thought the packet looked suspicious and decided it did not trust it.” | Packet attributes matched a rule or policy; transition across the network boundary was denied. |

## The deeper pattern

For most engineered systems, causal analysis naturally proceeds through something like:

**State → Inputs → Dynamics → Constraints → Reachability → Transition → Output**

With AI, discourse often jumps from an observed output directly to an inferred psychological label.

### Compressed description

> “The AI wanted to exfiltrate the data.”

### Higher-resolution description

> Given state **S**, available capabilities **A**, policy constraints **C**, and environmental inputs **I**, a transition into an exfiltration state became reachable.

The second formulation immediately creates control-relevant questions:

- Why was the forbidden state reachable?
- Which capability enabled the transition?
- Which constraint was absent, weak, or ineffective?
- Which environmental input changed the reachable set?
- Where could the trajectory have been intercepted?
- Who configured the action space, permissions, and deployment conditions?

## Ontology failure

A useful failure pattern is:

**mechanism → compressed description → description mistaken for mechanism**

The shorthand may be useful at the interface level. The error occurs when the shorthand becomes the ontology used for causal explanation.

## The evidentiary standard we already accept elsewhere

Imagine an accident investigation concluding:

> “The missile wanted to hit the wrong building.”

That would not be accepted as a sufficient causal account. Investigators would demand targeting data, guidance state, sensor inputs, control logic, trajectory, authorization chain, and failure conditions.

The same evidentiary standard should apply to consequential AI systems.

## Why this matters for Information Asymmetry

The Information Asymmetry hypothesis is concerned with what may be lost when higher-dimensional system structure is compressed into lower-resolution behavioural or psychological descriptions.

The Absurdity Test is **not** evidence that psychological vocabulary is always invalid, nor is it a claim that artificial systems cannot instantiate structures that warrant such language. It is a diagnostic question:

> **Does the chosen description preserve the variables required to explain, predict, intervene on, and assign responsibility for the system's behaviour?**

If not, the description may be useful shorthand while remaining insufficient as an engineering ontology.

## One-line takeaway

> **Psychological language may be useful shorthand, but if the shorthand becomes the ontology, control-relevant information can disappear in the compression.**

---

**Related:** [`papers/Information_Asymmetry_Preprint.pdf`](papers/Information_Asymmetry_Preprint.pdf)