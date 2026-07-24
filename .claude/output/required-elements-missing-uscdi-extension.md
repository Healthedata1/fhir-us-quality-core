# Required-Element Changes (min 0 to 1) Lacking the USCDI+ Quality Extension

Every US Quality Core profile element whose minimum cardinality changed from `0` to `1`
relative to its immediate parent (US Core V9, base FHIR R4, or another US Quality Core
profile) and that does **not** carry the US Quality Core USCDI+ Quality extension
(`http://hl7.org/fhir/us/quality-core/StructureDefinition/us-quality-core-uscdi-quality-extension`).

Source: publisher-generated snapshots in `output/`, compared against
`hl7.fhir.us.core#9.0.0` and `hl7.fhir.r4.core#4.0.1`.

## All elements (14)

| Profile | Parent | Element |
|---|---|---|
| USQualityCoreCarePlan | USCoreCarePlanProfile | `CarePlan.category:AssessPlan` |
| USQualityCoreCommunicationNotDone | USQualityCoreCommunication | `Communication.extension` |
| USQualityCoreDeviceProhibited | USQualityCoreDeviceRequest | `DeviceRequest.modifierExtension` |
| USQualityCoreMedicationDispenseDeclined | USQualityCoreMedicationDispense | `MedicationDispense.extension` |
| USQualityCoreOrganization | USCoreOrganizationProfile | `Organization.identifier:ccn.use` |
| USQualityCoreOrganization | USCoreOrganizationProfile | `Organization.identifier:ccn.value` |
| USQualityCoreOrganization | USCoreOrganizationProfile | `Organization.identifier:ein.use` |
| USQualityCoreOrganization | USCoreOrganizationProfile | `Organization.identifier:ein.value` |
| USQualityCorePractitioner | USCorePractitionerProfile | `Practitioner.identifier:ein.use` |
| USQualityCorePractitionerRole | USCorePractitionerRoleProfile | `PractitionerRole.active` |
| USQualityCorePractitionerRole | USCorePractitionerRoleProfile | `PractitionerRole.period` |
| USQualityCoreProcedure | USCoreProcedureProfile | `Procedure.extension` |
| USQualityCoreProcedure | USCoreProcedureProfile | `Procedure.extension:recorded` |
| USQualityCoreTask | Task (base FHIR) | `Task.priority` |

## Classification

### Genuine data-element constraints (worth reviewing)
These are meaningful data elements made mandatory without a USCDI+ Quality extension:

- `CarePlan.category:AssessPlan` (required `assess-plan` category slice)
- `PractitionerRole.active`
- `PractitionerRole.period`
- `Task.priority`

### Structural artifacts (extension not expected at this level)
- Extension / modifierExtension slots that became `min=1` because a required extension
  slice was added: `Communication.extension`, `DeviceRequest.modifierExtension`,
  `MedicationDispense.extension`, `Procedure.extension`, `Procedure.extension:recorded`.
- Slice-internal components of pattern-sliced identifiers:
  `Organization.identifier:ccn.use`, `Organization.identifier:ccn.value`,
  `Organization.identifier:ein.use`, `Organization.identifier:ein.value`,
  `Practitioner.identifier:ein.use`.
