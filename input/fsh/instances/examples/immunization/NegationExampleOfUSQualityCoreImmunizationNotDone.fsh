Instance: negation-example-of-us-quality-core-immunization-not-done
InstanceOf: USQualityCoreImmunizationNotDone
Title: "Immunization negation with value set example"
Description: "Example of an immunization that was not administered, with the vaccine identified by value set"
Usage: #example
* id = "negation-example"
* status = #not-done
* statusReason = $sct#182895007 "Drug declined by patient"
* vaccineCode
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/codeOptions"
    * valueCanonical = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.196.11.1212"
  * text = "Value Set: DTaP Vaccine"
* patient.reference = "Patient/example"
* encounter.reference = "Encounter/example"
* occurrenceDateTime = "2026-08-01"
* recorded = "2026-08-01"
* primarySource = true
