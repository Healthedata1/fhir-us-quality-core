Instance: example-frailty
InstanceOf: USQualityCoreSimpleObservation
Title: "Mobility aid use observation example"
Description: "Example of an observation documenting regular mobility-aid use"
Usage: #example
* status = #final
* category = $observation-category#exam "exam"
* code = $loinc#99354-3 "Mobility device or aid is regularly used"
* subject.reference = "Patient/example-2"
* effectivePeriod
  * start = "2026-07-15T10:30:00-04:00"
  * end = "2026-07-15T10:45:00-04:00"
* issued = "2026-07-15T11:00:00-04:00"
* performer
  * reference = "Practitioner/example"
  * display = "Example Practitioner"
* valueCodeableConcept = $sct#105503008 "Dependence on wheelchair (finding)"
  * text = "Uses a wheelchair regularly"
