Instance: note-example
InstanceOf: USQualityCoreDiagnosticReportNote
Title: "DiagnosticReportNote example"
Description: "Example of a DiagnosticReport Note"
Usage: #example
* status = #final
* category[us-core]
  * coding[0] = $v2-0074#RAD "Radiology"
  * coding[+] = $loinc#LP29684-5 "Radiology"
  * text = "Radiology"
* code = $loinc#30746-2 "Portable XR Chest Views"
  * text = "Portable XR Chest Views"
* subject = Reference(Patient/example) "Example Patient"
* effectiveDateTime = "2026-08-05T08:15:00-04:00"
* issued = "2026-08-05T09:00:00-04:00"
* performer = Reference(Practitioner/example) "Example Practitioner"
* resultsInterpreter = Reference(Practitioner/example) "Example Practitioner"
* result = Reference(cxr-finding-lung-fields) "Radiology Finding: Lungs"
* imagingStudy = Reference(portable-cxr-study) "Portable Chest X-Ray DICOM Study"
* conclusion = "Single view portable AP chest radiograph demonstrates clear lung fields without focal consolidation, pleural effusion, or pneumothorax. Heart size is within normal limits."
* conclusionCode.text = "No acute cardiopulmonary process"
* presentedForm
  * contentType = #application/xhtml+xml
  * data = "PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiIHhtbDpsYW5nPSJlbiIgbGFuZz0iZW4iPjxoZWFkPjx0aXRsZT5Qb3J0YWJsZSBYUiBDaGVzdCBWaWV3czwvdGl0bGU+PC9oZWFkPjxib2R5PjxoMT5Qb3J0YWJsZSBYUiBDaGVzdCBWaWV3czwvaDE+PHA+PHN0cm9uZz5QYXRpZW50Ojwvc3Ryb25nPiBFeGFtcGxlIFBhdGllbnQ8L3A+PHA+PHN0cm9uZz5TdHVkeSBkYXRlOjwvc3Ryb25nPiAyMDI2LTA4LTA1VDA4OjE1OjAwLTA0OjAwPC9wPjxwPjxzdHJvbmc+RmluZGluZ3M6PC9zdHJvbmc+IFNpbmdsZSB2aWV3IHBvcnRhYmxlIEFQIGNoZXN0IHJhZGlvZ3JhcGggZGVtb25zdHJhdGVzIGNsZWFyIGx1bmcgZmllbGRzIHdpdGhvdXQgZm9jYWwgY29uc29saWRhdGlvbiwgcGxldXJhbCBlZmZ1c2lvbiwgb3IgcG5ldW1vdGhvcmF4LiBIZWFydCBzaXplIGlzIHdpdGhpbiBub3JtYWwgbGltaXRzLjwvcD48cD48c3Ryb25nPkltcHJlc3Npb246PC9zdHJvbmc+IE5vIGFjdXRlIGNhcmRpb3B1bG1vbmFyeSBwcm9jZXNzLjwvcD48cD48c3Ryb25nPkludGVycHJldGVkIGJ5Ojwvc3Ryb25nPiBFeGFtcGxlIFByYWN0aXRpb25lcjwvcD48cD48c3Ryb25nPklzc3VlZDo8L3N0cm9uZz4gMjAyNi0wOC0wNVQwOTowMDowMC0wNDowMDwvcD48L2JvZHk+PC9odG1sPg=="
