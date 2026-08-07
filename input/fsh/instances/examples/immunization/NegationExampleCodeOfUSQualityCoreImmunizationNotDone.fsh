Instance: negation-example-code-of-us-quality-core-immunization-not-done
InstanceOf: USQualityCoreImmunizationNotDone
Title: "Immunization negation with code example"
Description: "Example of an immunization that was not administered, with the vaccine identified by code"
Usage: #example
* id = "negation-example-code"
* status = #not-done
* statusReason = $sct#182895007 "Drug declined by patient"
* vaccineCode
  * coding[0] = http://hl7.org/fhir/sid/cvx#160 "Influenza A monovalent (H5N1), adjuvanted, National stockpile 2013"
  * coding[+] = http://hl7.org/fhir/sid/ndc#49281012165
* patient.reference = "Patient/example"
* encounter.reference = "Encounter/example"
* occurrenceDateTime = "2026-08-01"
* recorded = "2026-08-01"
* primarySource = true
