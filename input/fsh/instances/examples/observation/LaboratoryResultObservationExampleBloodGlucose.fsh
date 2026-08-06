Instance: laboratory-result-observation-example-blood-glucose
InstanceOf: USQualityCoreObservationLab
Title: "Glucose Laboratory Result Observation Example"
Description: "Example of a glucose laboratory result observation"
Usage: #example
* meta
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/instance-name"
    * valueString = "Blood Glucose Example"
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/instance-description"
    * valueMarkdown = "This is a blood glucose example for the *US Quality Core Observation Lab Profile*."
  * versionId = "1165"
  * lastUpdated = "2026-08-05T09:15:00-04:00"
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
  * text = "Laboratory"
* code = $loinc#2339-0 "Glucose Bld-mCnc"
  * text = "Glucose Bld-mCnc"
* subject
  * reference = "Patient/example"
  * display = "Example Patient"
* effectiveDateTime = "2026-08-05T08:00:00-04:00"
* issued = "2026-08-05T09:15:00-04:00"
* performer
  * reference = "Organization/example-1"
  * display = "Example Hospital"
* valueQuantity
  * value = 76.0
  * system = "http://unitsofmeasure.org"
  * unit = "mg/dL"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* specimen = Reference(whole-blood-specimen) "Whole blood specimen"
* referenceRange
  * low = 40.0 'mg/dL' "mg/dL"
  * high = 109.0 'mg/dL' "mg/dL"
  * type = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal "Normal Range"
    * text = "Normal Range"

Instance: whole-blood-specimen
InstanceOf: USCoreSpecimenProfile
Title: "Whole Blood Specimen Example"
Description: "Example of a whole blood specimen collected for a laboratory result"
Usage: #example
* type = $sct#258580003 "Whole blood specimen"
* subject = Reference(Patient/example) "Example Patient"
* collection.collectedDateTime = "2026-08-05T08:00:00-04:00"
