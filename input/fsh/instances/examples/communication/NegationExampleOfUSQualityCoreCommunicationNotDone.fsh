Instance: negation-example-of-us-quality-core-communication-not-done
InstanceOf: USQualityCoreCommunicationNotDone
Title: "Communication negation example"
Description: "Example of a notification that was not sent to a patient and reason why"
Usage: #example
* id = "negation-example"
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/event-recorded"
  * valueDateTime = "2026-08-05T13:01:10-04:00"
* status = #not-done
* statusReason = $sct#107724000 "Patient transfer"
* category = $communication-category#alert
  * text = "Alert"
* medium = $v3-ParticipationMode#WRITTEN "written"
  * text = "written"
* subject.reference = "Patient/example"
* topic = http://terminology.hl7.org/CodeSystem/communication-topic#progress-update "Progress Update"
* encounter.reference = "Encounter/example"
* sent = "2026-08-05T13:01:10-04:00"
* received = "2026-08-05T13:01:11-04:00"
* recipient.reference = "Practitioner/example"
* sender
  * reference = "Organization/example-1"
  * display = "Example Hospital"
* payload.contentString = "Patient example has moved away"
