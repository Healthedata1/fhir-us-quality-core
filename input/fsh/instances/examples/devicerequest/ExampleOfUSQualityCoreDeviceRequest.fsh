Instance: example-of-us-quality-core-device-request
InstanceOf: USQualityCoreDeviceRequest
Title: "DeviceRequest general example"
Description: "Request to employ a medical device (using the General Profile)"
Usage: #example
* id = "example"
* modifierExtension[doNotPerform]
  * url = $extension-DeviceRequest.doNotPerform
  * valueBoolean = false
* status = #active
* intent = #order
* codeCodeableConcept = $sct#86184003 "Electrocardiographic monitor and recorder"
  * text = "Electrocardiographic monitor and recorder"
* subject.reference = "Patient/example"
* authoredOn = "2026-07-09"
* requester.reference = "Practitioner/example"
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#R00.2 "Palpitations"
  * text = "Palpitations"
