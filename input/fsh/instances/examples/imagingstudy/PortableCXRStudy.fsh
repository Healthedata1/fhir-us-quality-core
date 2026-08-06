Instance: portable-cxr-study
InstanceOf: USQualityCoreImagingStudy
Title: "Portable chest X-ray DICOM study example"
Description: "Example of a portable chest X-ray imaging study"
Usage: #example
* status = #available
* subject = Reference(Patient/example) "Example Patient"
* started = "2026-08-05T08:15:00-04:00"
* interpreter = Reference(Practitioner/example) "Example Practitioner"
* numberOfSeries = 1
* numberOfInstances = 1
* series
  * uid = "2.25.12345678901234567890123456789012345678.1"
  * number = 1
  * modality = http://dicom.nema.org/resources/ontology/DCM#DX "Digital Radiography"
  * description = "Chest AP Portable"
  * numberOfInstances = 1
  * bodySite = $sct#51185008 "Thoracic structure (body structure)"
  * performer.actor = Reference(Practitioner/example) "Example Practitioner"
