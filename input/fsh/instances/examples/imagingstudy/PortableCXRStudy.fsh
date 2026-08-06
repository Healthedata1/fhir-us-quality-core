Instance: portable-cxr-study
InstanceOf: USQualityCoreImagingStudy
Title: "Portable chest X-ray DICOM study example"
Description: "Example of a portable chest X-ray imaging study"
Usage: #example
* status = #available
* subject = Reference(Patient/example) "Example Patient"
* started = "2026-08-05T08:15:00-04:00"
* interpreter = Reference(Practitioner/example) "Example Practitioner"
* procedureCode = $loinc#30746-2 "Portable XR Chest Views"
  * text = "Portable XR Chest Views"
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
  * instance
    * uid = "2.25.12345678901234567890123456789012345678.1.1"
    * sopClass
      * system = "urn:ietf:rfc:3986"
      * code = #urn:oid:1.2.840.10008.5.1.4.1.1.1.1
    * number = 1
    * title = "AP View"
