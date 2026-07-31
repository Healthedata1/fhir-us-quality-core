Instance: negation-example-code-of-us-quality-core-service-prohibited
InstanceOf: USQualityCoreServiceProhibited
Title: "ServiceProhibited with code example"
Description: "Example of request not to provide a service using a code"
Usage: #example
* id = "negation-example-code"
* status = #completed
* intent = #order
* category = $sct#387713003 "Surgical Procedure"
* priority = #urgent
* doNotPerform = true
* code = $sct#229511001 "Application of graduated compression garment"
* subject.reference = "Patient/example"
* encounter.reference = "Encounter/example"
* occurrenceDateTime = "2013-04-05"
* authoredOn = "2013-04-04"
* reasonCode = $sct#713247000 "Procedure discontinued by patient"