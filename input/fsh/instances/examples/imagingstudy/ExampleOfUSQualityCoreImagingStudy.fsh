Instance: example-of-us-quality-core-imaging-study
InstanceOf: USQualityCoreImagingStudy
Title: "ImagingStudy example"
Description: "Example of ImagingStudy based on CT imaging study"
Usage: #example
* id = "example"
* status = #available
* subject = Reference(Patient/example) "Peter Chalmers"
* started = "2026-08-05T10:00:00-04:00"
* procedureCode
  * coding[0] = $loinc#79086-5 "CT Chest for screening WO contrast"
  * coding[+] = http://radlex.org#RPID6002 "CT Chest wo IV Contrast Screening"
  * text = "Computed tomography of chest for screening without IV contrast"
* interpreter = Reference(Practitioner/example) "Dr Adam Careful"
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
    * actor = Reference(Practitioner/example) "Dr Adam Careful"
  * instance
    * uid = "2.25.37710966450514622421997837258855027209"
    * sopClass
      * system = "urn:ietf:rfc:3986"
      * code = #urn:oid:1.2.840.10008.5.1.4.1.1.2
    * number = 1
    * title = "CT Axial Slice 1"
