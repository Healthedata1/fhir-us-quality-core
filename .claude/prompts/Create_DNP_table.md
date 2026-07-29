Create a table that summarizes the USCDI+ Quality elements that are unique to the "Do Not Perform" (negation) profiles for:

- Immunization (US Quality Core Immunization Not Done)
- MedicationAdministration (US Quality Core MedicationAdministration Not Done)
- MedicationDispense (US Quality Core MedicationDispense Declined)
- Procedure (US Quality Core Procedure Not Done)

Selection rules for rows:

- List only root elements flagged as USCDI+ with the US Quality Core USCDI+ Quality Extension (`us-quality-core-uscdi-quality-extension` = true). Exclude the `.extension[codeOptions]` pointer sub-elements.
- Remove any element that is also flagged USCDI+ in the parent (base) US Quality Core profile, EXCEPT keep `Procedure.statusReason`.
- Resolve cardinality and binding from the publisher snapshot in `output/`.

Columns:

- Profile
- Element (leading-dot path in backticks)
- Cardinality (min..max)
- MustSupport/Add'l USCDI (always "Add'l USCDI")
- in US Core - boolean; "true" if the same element is Must Support OR an Additional USCDI element (`uscdi-requirement` extension) in the corresponding US Core 9.0.0 profile, else "false". US Core 9.0.0 has no MedicationAdministration profile, so those elements are "false".
- Binding - value set binding, linked to its page (e.g. `[US Quality Core Negation Reason Codes](ValueSet-us-quality-core-negation-reason-codes.html)`); "—" if none.
- Binding Strength - "—" if no binding.

Save the result to a markdown file.

Example row:

`Immunization Not Done | `.statusReason` | 1..1 | Add'l USCDI | true | [US Quality Core Negation Reason Codes](ValueSet-us-quality-core-negation-reason-codes.html) | extensible`
