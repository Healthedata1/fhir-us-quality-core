Instance: elective-example
InstanceOf: USQualityCoreServiceRequest
Title: "ServiceRequest elective example"
Description: "Elective procedure ServiceRequest example"
Usage: #example
* status = #completed
* intent = #order
* code = $sct#442338001 "Bypass of stomach (procedure)"
  * text = "Stomach Bypass"
* subject = Reference(Patient/example)
* authoredOn = "2026-07-30"
* requester = Reference(Practitioner/example) "Example Practitioner"
* performer = Reference(Practitioner/example) "Example Practitioner"
