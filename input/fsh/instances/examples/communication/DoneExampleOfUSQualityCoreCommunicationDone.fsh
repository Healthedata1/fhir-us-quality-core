Instance: done-example-of-us-quality-core-communication-done
InstanceOf: USQualityCoreCommunicationDone
Title: "CommunicationDone example"
Description: "Example of a notification sent to a patient about an abnormal test result (using the Positive Communication profile)"
Usage: #example
* id = "done-example"
* partOf
  * display = "Serum Potassium Observation"
* status = #on-hold
* statusReason = $communication-not-done-reason#recipient-unavailable
* category = $communication-category#alert
  * text = "Alert"
* medium = $v3-ParticipationMode#WRITTEN "written"
  * text = "written"
* subject.reference = "Patient/example"
* topic.text = "Hyperkalemia"
* encounter.reference = "Encounter/example"
* sent = "2026-08-05T13:01:10-04:00"
* received = "2026-08-05T13:01:11-04:00"
* recipient.reference = "Practitioner/example"
* sender
  * reference = "Organization/example-1"
  * display = "Example Hospital"
* payload[0].contentString = "Example Patient has a very high serum potassium value (7.2 mmol/L on 2026-Aug-05 at 12:55 pm)"
* payload[+].contentReference
  * display = "Serum Potassium Observation"
