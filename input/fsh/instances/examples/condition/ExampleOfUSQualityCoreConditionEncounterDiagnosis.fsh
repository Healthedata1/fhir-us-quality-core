Instance: example-of-us-quality-core-condition-encounter-diagnosis
InstanceOf: USQualityCoreConditionEncounterDiagnosis
Title: "Condition Encounter Diagnosis example"
Description: "Example of a condition encounter diagnosis resource used to record information about a burn of the left ear"
Usage: #example
* id = "example"
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
  * valueDateTime = "2026-08-02"
* clinicalStatus = $condition-clinical#resolved
* verificationStatus = $condition-ver-status#confirmed
* category[us-core] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = $sct#39065001 "Burn of ear"
  * text = "Burn of left ear"
* bodySite = $sct#49521004 "Left external ear structure"
  * text = "Left Ear"
* subject.reference = "Patient/example"
* encounter.reference = "Encounter/example"
* onsetDateTime = "2026-08-02"
* abatementDateTime = "2026-08-04"
* recordedDate = "2026-08-02"
* stage.summary = $sct#258219007 "stage II"
