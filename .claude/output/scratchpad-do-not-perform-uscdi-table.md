# USCDI+ Quality elements unique to the "Do Not Perform" profiles

Root elements flagged as USCDI+ (US Quality Core USCDI+ Quality Extension) in each negation
profile, excluding elements that are also flagged USCDI+ in the parent (base) US Quality Core
profile. All listed elements are "Add'l USCDI".

The "in US Core" column is "true" when the same element is Must Support or an Additional USCDI
element in the corresponding US Core 9.0.0 profile, else "false". US Core 9.0.0 has no
MedicationAdministration profile, so those elements are "false".

| Profile | Element | Cardinality | MustSupport/Add'l USCDI | in US Core | Binding | Binding Strength |
|---|---|---|---|---|---|---|
| Immunization Not Done | `.statusReason` | 1..1 | Add'l USCDI | true | [US Quality Core Negation Reason Codes](ValueSet-us-quality-core-negation-reason-codes.html) | extensible |
| Immunization Not Done | `.recorded` | 0..1 | Add'l USCDI | false | — | — |
| Immunization Not Done | `.performer.actor` | 1..1 | Add'l USCDI | true | — | — |
| MedicationAdministration Not Done | `.statusReason` | 1..1 | Add'l USCDI | false | [US Quality Core Negation Reason Codes](ValueSet-us-quality-core-negation-reason-codes.html) | extensible |
| MedicationDispense Declined | `.extension[recorded]` | 1..1 | Add'l USCDI | false | — | — |
| MedicationDispense Declined | `.statusReason[x]` | 1..1 | Add'l USCDI | false | [US Quality Core Negation Reason Codes](ValueSet-us-quality-core-negation-reason-codes.html) | extensible |
| MedicationDispense Declined | `.performer.actor` | 1..1 | Add'l USCDI | true | — | — |
| Procedure Not Done | `.extension[recorded]` | 1..1 | Add'l USCDI | false | — | — |
| Procedure Not Done | `.statusReason` | 1..1 | Add'l USCDI | false | [US Quality Core Negation Reason Codes](ValueSet-us-quality-core-negation-reason-codes.html) | extensible |
| Procedure Not Done | `.performer.actor` | 1..1 | Add'l USCDI | true | — | — |
| Procedure Not Done | `.asserter` | 0..1 | Add'l USCDI | false | — | — |
