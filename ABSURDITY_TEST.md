# Psychological-Language Absurdity Test

> **Core thesis:** Psychological language can function as a lossy compression of deeper system dynamics. The problem begins when the compressed description is mistaken for the mechanism itself.

This companion page provides a fast diagnostic for one of the central concerns behind the Information Asymmetry programme: whether a familiar psychological description preserves enough causal structure to support explanation, intervention, accountability, and control.

## The absurdity test

> **Apply the psychological explanation to a domain where causal accountability is non-negotiable. If the explanation would be rejected there, ask why it is accepted for consequential AI systems.**

Take ordinary psychological language used to describe AI behaviour and apply the same style of description to other engineered or physical systems. If the explanation becomes obviously inadequate, ask whether the same causal compression is being tolerated merely because the system is an AI model.

The strongest versions of the test use domains in which causal reconstruction is mandatory: aviation, nuclear safety, guided weapons, medical devices, railway signalling, spacecraft guidance, and other safety-critical systems. In these domains, incident analysis cannot terminate at a psychological label because prevention, accountability, and corrective action depend on locating the actual causal chain.

| System | Psychological description | Higher-resolution description |
|---|---|---|
| Guided missile | “The missile wanted to hit the building.” | Guidance, target coordinates, sensor feedback, control law, trajectory, authorization, and terminal conditions produced interception. |
| Aircraft flight-control system | “The aircraft became confused and decided to descend.” | Sensor state, control mode, software logic, pilot inputs, actuator commands, and aerodynamic response generated the trajectory. |
| Nuclear reactor protection system | “The reactor realised it was in danger and tried to calm itself down.” | Sensor values crossed safety thresholds; protection logic, interlocks, control actions, and shutdown mechanisms altered reactor state. |
| Medical ventilator / infusion pump | “The ventilator thought the patient needed more oxygen.” / “The pump believed the patient needed another dose.” | Patient measurements, configured parameters, control logic, dosage or support limits, alarms, and actuator behaviour determined the delivered treatment. |
| Railway signalling system | “The signalling system thought the track was clear.” | Track occupancy, sensor state, interlocking logic, route authority, and signalling constraints determined whether movement authority was reachable. |
| Spacecraft guidance system | “The spacecraft wanted to return to Earth but changed its mind.” | Orbital state, navigation estimate, target trajectory, guidance computation, propulsion commands, and resulting delta-v determined the new trajectory. |
| Thermostat | “The thermostat felt cold and decided to turn the heating on.” | Temperature crossed a threshold; the controller changed actuator state. |
| Hurricane | “The hurricane was angry and wanted to destroy the coast.” | Pressure gradients, heat transfer, moisture, rotation, and atmospheric conditions drove the trajectory. |
| Traffic system | “Traffic wanted to create a jam.” | Vehicle density, braking propagation, road capacity, and feedback produced a congestion wave. |
| Trading algorithm | “The algorithm became nervous and sold the shares.” | Market variables satisfied configured decision conditions; the sell action became reachable and executed. |
| Malware | “The malware wanted your passwords.” | Code executed credential-access and exfiltration operations permitted by the compromised environment. |
| Autopilot | “The autopilot wanted the aircraft to turn left.” | Navigation target, measured state, and control law generated actuator commands that changed trajectory. |
| Database | “The database refused to delete the record because it understood it was important.” | The requested state transition violated permissions, constraints, or integrity rules. |
| Firewall | “The firewall thought the packet looked suspicious and decided it did not trust it.” | Packet attributes matched a rule or policy; transition across the network boundary was denied. |

## Why safety-critical domains are especially revealing

In ordinary conversation, anthropomorphic shorthand may be harmless. In safety-critical investigation, however, causality is non-negotiable because the explanation must support intervention.

If a missile strikes the wrong building, an investigator needs the targeting data, sensor state, guidance logic, authorization chain, reachable trajectories, safeguards, and failure conditions.

If an aircraft descends incorrectly, an investigator needs sensor readings, mode state, pilot commands, automation authority, actuator behaviour, and aerodynamic response.

If a reactor protection system trips or fails to trip, an investigator needs the thresholds, sensor values, interlocks, control logic, and state transition that occurred.

The question is therefore not merely whether a psychological description sounds natural. The question is whether it preserves enough causal structure to identify **where the system could have been changed, constrained, interrupted, or held accountable**.

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
- Which actor or component had the ability to alter the reachable set before the transition occurred?

## Causality and responsibility

A useful consequence of the higher-resolution framing is that responsibility becomes more locatable.

A psychological description can collapse multiple causal contributors into a single apparent agent-level explanation. A dynamical description instead exposes the configuration surface:

**capabilities → permissions → environment → policy → feedback → reachable states → executed transition**

That makes it possible to ask who configured each component, which safeguard failed, which transition should have been impossible, and where intervention should occur.

The objective is not to deny all usefulness to psychological vocabulary. It is to prevent a descriptive shortcut from displacing the causal variables required for engineering and governance.

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

> **When causal accountability is non-negotiable, the description must expose the mechanism well enough to support intervention. If psychological language would fail that standard elsewhere, consequential AI should not receive a weaker one.**

---

**Related:** [`papers/Information_Asymmetry_Preprint.pdf`](papers/Information_Asymmetry_Preprint.pdf)