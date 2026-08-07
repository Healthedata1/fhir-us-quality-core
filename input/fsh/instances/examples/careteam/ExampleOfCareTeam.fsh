Instance: example-of-care-team
InstanceOf: USQualityCoreCareTeam
Title: "CareTeam example"
Description: "Example of a CareTeam involved in the delivery of care for a pregnancy"
Usage: #example
* id = "example"
* status = #active
* subject = Reference(Patient/reproductive-health-example) "Example Reproductive Health Patient"
* participant
  * role = http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction#MDWF "midwife"
  * member.display = "Example Midwife"
