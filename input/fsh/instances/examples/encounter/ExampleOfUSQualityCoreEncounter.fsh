Instance: example-of-us-quality-core-encounter
InstanceOf: USQualityCoreEncounter
Title: "Encounter example"
Description: "Example of an Encounter"
Usage: #example
* id = "example"
* identifier
  * use = #official
  * system = "http://hospital.example.org/encounter-ids"
  * value = "ENC-2026-987654"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* type
  * coding[0] = $sct#32485007 "Hospital admission"
  * coding[+] = $cpt#99223 "Initial hospital inpatient or observation care, per day, for the evaluation and management of a patient, which requires a medically appropriate history and/or examination and high level of medical decision making. When using total time on the date of the encounter for code selection, 75 minutes must be met or exceeded."
  * text = "Inpatient Hospital Admission"
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#UR "urgent"
* subject = Reference(Patient/example) "Peter James Chalmers"
* period
  * start = "2026-08-01T10:30:00-04:00"
  * end = "2026-08-05T14:00:00-04:00"
* diagnosis
  * extension[diagnosisPresentOnAdmission].valueCodeableConcept = PresentOnAdmission#Y
    * text = "Yes"
  * condition = Reference(Condition/appendicitis-example) "Appendicitis"
  * use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"
  * rank = 1
* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#home "Home"
  * text = "Discharged to Home"
* location
  * location = Reference(Location/example) "South Wing, second floor"
  * status = #completed
  * period
    * start = "2026-08-01T11:00:00-04:00"
    * end = "2026-08-05T14:00:00-04:00"
