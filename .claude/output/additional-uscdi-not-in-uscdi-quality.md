# Additional USCDI Elements in US Core Not Flagged as USCDI+ Quality

## Purpose

Compares the Additional USCDI requirements listed in US Core
(`US-Core/input/data/additional-uscdi-requirements.csv`, 52 rows) against the
USCDI+ Quality elements flagged in US Quality Core
(`input/fsh/generated/USCDIQualityFlags.fsh`).

An element counts as a USCDI+ Quality element when the corresponding US Quality
Core profile flags that element path with the
`us-quality-core-uscdi-quality-extension`. `USCDIQualityFlags.fsh` is treated as
the definitive list (it is generated from `data/uscdi_plus_quality.json`).

## Summary

Most Additional USCDI elements map through cleanly, including all 13 Patient
elements, the MedicationRequest reason and adherence elements,
ServiceRequest/Procedure `reasonCode` and `reasonReference`, and CarePlan
`addresses` and `contributor`.

The elements below are Additional USCDI in US Core but are NOT flagged as
USCDI+ Quality elements. They fall into two causes, with three borderline cases.

## 1. Profile is out of US Quality Core scope (no profile exists)

| Additional USCDI (US Core) | Element(s) |
|---|---|
| US Core Document Category | `DocumentReference.category:uscore` |
| Specimen Source Site | `Specimen.collection`, `Specimen.collection.bodySite` |
| Specimen Condition Acceptability | `Specimen.condition` |
| Pregnancy Status | `Observation.performer` (Pregnancy Intent, Pregnancy Status) |
| Provenance Author | `Observation.performer` (Care Experience Preference, Occupation, Treatment Intervention Preference) |
| Family Health History | `FamilyMemberHistory.extension:recorder` |
| Unique Device Identifier | `Device.udiCarrier`, `.distinctIdentifier`, `.manufactureDate`, `.expirationDate`, `.lotNumber`, `.serialNumber` |

US Quality Core has no Specimen, DocumentReference, FamilyMemberHistory,
Occupation/Pregnancy/Care Experience/Treatment Intervention Observation, or
Device (instance) profile. It defines DeviceRequest only.

## 2. Profile exists, but the element is not flagged

| Additional USCDI (US Core) | Element | US Quality Core profile |
|---|---|---|
| An Interpreter Needed Flag | `Encounter.extension:interpreterRequired` | Encounter (flagged on Patient, not Encounter) |
| Reason or Indication for Referral or Consultation | `Procedure.performer`, `Procedure.performer.actor` | Procedure |
| Reference to the Request for the Procedure | `Procedure.basedOn` | Procedure |
| References to Associated Survey, Assessment, or Screening Tool | `Observation.derivedFrom` | Simple Observation |
| Health Status Assessments | `Condition.category:screening-assessment` | Condition Problems and Health Concerns (only `category[us-core]` flagged) |
| Provenance Author | `AllergyIntolerance.recorder` | AllergyIntolerance |
| Provenance Author | `Condition.recorder` | Condition Encounter Diagnosis, Condition Problems and Health Concerns |

## 3. Borderline (parent element flagged, exact sub-path not)

| Additional USCDI (US Core) | Element | Note |
|---|---|---|
| Orders | `ServiceRequest.code.text` | `code` is flagged; `.text` is not listed separately |
| Laboratory Tests | `Observation.code.text` | observation-lab flags `code`; `.text` is not listed separately |
| Health Status Assessments | `Observation.category:screening-assessment` | Screening Assessment flags `category` generically, not the named slice |

Whether these three count as "not USCDI+ Quality" depends on whether a flagged
parent is treated as covering its children.

## Caveats

- `USCDIQualityFlags.fsh` is treated as the source of truth. If the
  authoritative list is `data/uscdi_plus_quality.json` instead, the diff should
  be run against that file.
- A flag RuleSet is only generated for a profile that has at least one flagged
  element, so "no RuleSet" is read here as "profile out of scope." This was
  confirmed against the profiles present in `fsh-generated/resources/`.
