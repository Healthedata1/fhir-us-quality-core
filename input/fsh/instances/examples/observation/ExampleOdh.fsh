Instance: example-odh
InstanceOf: USQualityCoreSimpleObservation
Title: "ODH Observation example"
Description: "Example of occupational data added to observation measure"
Usage: #example
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#21843-8 "History of Usual Occupation"
* subject.reference = "Patient/example"
* encounter.reference = "Encounter/example"
* effectivePeriod
  * start = "2024-04-09T08:00:00-04:00"
  * end = "2026-08-01T10:30:00-04:00"
* performer
  * reference = "Practitioner/example"
  * display = "Example Practitioner"
* valueCodeableConcept.text = "Radiology Technician (Radiology Tech) [Radiologic Technicians]"
