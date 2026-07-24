# US Quality Core vs US Core V9 - Binding Changes

Comparison of value set bindings between each US Quality Core profile and the US Core V9
(`hl7.fhir.us.core#9.0.0`) profile named in its `baseDefinition`. Publisher-generated
snapshots were used on both sides. Where US Core leaves an element unbound, the comparison
is against the effective base FHIR R4 (4.0.1) binding.

## Bindings that changed vs US Core V9

| US Quality Core Profile - Data Element | Binding definition change (value set) | Binding strength change |
|---|---|---|
| **PractitionerRole** - `PractitionerRole.specialty` | Yes - `us-core-practitionerrole-specialty` to VSAC `2.16.840.1.114222.4.11.1066` | No (extensible) |
| **MedicationRequest** - `MedicationRequest.medication[x]` | No (VSAC `2.16.840.1.113762.1.4.1010.4`) | Yes - extensible to preferred (loosened ❗)  |


[1] US Core does not bind the `AssessPlan` slice, so this is compared against the base FHIR R4 binding.

## Notes on scope

- Only two profiles change the value set (code set): Encounter (which also changes strength)
  and PractitionerRole.
- Elements excluded as non-changes: `Organization` / `Practitioner` / `PractitionerRole`
  `identifier.use` and `identifier.type`, and
  `MedicationRequest.dosageInstruction.timing.repeat.*` / `timing.code`. US Quality Core marks
  these must-support but their strength and value set are identical to the inherited base FHIR
  datatype bindings, so nothing changed.
- Profiles with no US Core V9 parent (derived from base FHIR or from other US Quality Core
  profiles) were not compared: AdverseEvent, Communication (+Done/NotDone), DeviceRequest family,
  ImagingStudy, MedicationAdministration family, MedicationDispense variants, NutritionOrder,
  Task family, and the Procedure / Service "Done/NotDone/Prohibited/Requested" variants.
