Instance: done-example-of-us-quality-core-medication-administration
InstanceOf: USQualityCoreMedicationAdministrationDone
Title: "MedicationAdministration positive example"
Description: "Intravenous example of MedicationAdministration (using the Positive Profile)"
Usage: #example
* id = "done-example"
* status = #completed
* medicationReference.reference = "Medication/example"
* subject
  * reference = "Patient/example"
  * display = "Example Patient"
* context.reference = "Encounter/example"
* supportingInformation.reference = "Condition/example"
* effectivePeriod
  * start = "2026-08-02T14:30:00-04:00"
  * end = "2026-08-02T14:45:00-04:00"
* request.reference = "MedicationRequest/example"
* dosage
  * route = $sct#47625008 "Intravenous route (qualifier value)"
  * dose = 3 'mg' "mg"
