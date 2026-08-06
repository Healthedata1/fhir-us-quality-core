Instance: appendicitis-example
InstanceOf: USQualityCoreConditionEncounterDiagnosis
Title: "Condition example - appendicitis"
Description: "Example of a condition resource used to record information about an appendicitis"
Usage: #example
* clinicalStatus = $condition-clinical#resolved
* verificationStatus = $condition-ver-status#confirmed
* category[us-core] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* severity = $sct#24484000 "Severe (severity modifier)"
* code = $sct#74400008 "Appendicitis (disorder)"
  * text = "Appendicitis"
* bodySite = $sct#66754008 "Appendix structure"
* subject.reference = "Patient/example"
* encounter.reference = "Encounter/example"
* onsetDateTime = "2026-08-01T10:30:00-04:00"
* abatementDateTime = "2026-08-05T14:00:00-04:00"
* recordedDate = "2026-08-01T10:30:00-04:00"
* recorder = Reference(Practitioner/example) "Dr Adam Careful"
