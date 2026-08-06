Instance: cxr-finding-lung-fields
InstanceOf: USQualityCoreObservationClinicalResult
Title: "Portable chest X-ray lung fields finding example"
Description: "Example of a narrative radiology finding for a portable chest X-ray"
Usage: #example
* status = #final
* category[us-core] = $observation-category#imaging "Imaging"
* code = $loinc#18782-3 "Radiology Study observation (narrative)"
  * text = "Radiology Finding: Lungs"
* subject = Reference(Patient/example) "Example Patient"
* effectiveDateTime = "2026-08-05T08:15:00-04:00"
* performer = Reference(Practitioner/example) "Example Practitioner"
* valueString = "Single view portable AP chest radiograph demonstrates clear lung fields without focal consolidation, pleural effusion, or pneumothorax. Heart size is within normal limits."
