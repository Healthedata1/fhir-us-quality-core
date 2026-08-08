Instance: example-gestation
InstanceOf: USQualityCoreSimpleObservation
Title: "Gestation age at birth observation example"
Description: "Example of a gestation age at birth observation"
Usage: #example
* status = #final
* category = $observation-category#exam "exam"
* code = $loinc#76516-4 "Gestational age--at birth"
* subject = Reference(Patient/reproductive-health-example) "Example Reproductive Health Patient"
* effectiveDateTime = "2025-04-09"
* performer
  * reference = "Organization/example-1"
  * display = "Example Hospital"
* valueQuantity = 37 'wk' "week"
