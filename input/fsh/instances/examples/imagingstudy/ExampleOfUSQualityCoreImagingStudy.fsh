Instance: example-of-us-quality-core-imaging-study
InstanceOf: USQualityCoreImagingStudy
Title: "ImagingStudy example"
Description: "Example of ImagingStudy based on CT imaging study"
Usage: #example
* id = "example"
* status = #available
* subject = Reference(Patient/example) "Example Patient"
* started = "2026-08-05T10:00:00-04:00"
* interpreter = Reference(Practitioner/example) "Example Practitioner"
* numberOfSeries = 1
* numberOfInstances = 450
* series
  * uid = "2.25.60829827569917451655468613747200260615"
  * number = 1
  * modality = http://dicom.nema.org/resources/ontology/DCM#CT "Computed Tomography"
  * description = "Chest Axials 1.25mm WO Contrast"
  * numberOfInstances = 450
  * bodySite = $sct#51185008 "Thoracic structure (body structure)"
  * performer
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF "performer"
    * actor = Reference(Practitioner/example) "Example Practitioner"
