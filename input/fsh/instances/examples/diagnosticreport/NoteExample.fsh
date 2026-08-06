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
  * data = "PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiIHhtbDpsYW5nPSJlbiIgbGFuZz0iZW4iPjxoZWFkPjx0aXRsZT5Qb3J0YWJsZSBYUiBDaGVzdCBWaWV3czwvdGl0bGU+PC9oZWFkPjxib2R5PjxoMT5Qb3J0YWJsZSBYUiBDaGVzdCBWaWV3czwvaDE+PHA+PHN0cm9uZz5QYXRpZW50Ojwvc3Ryb25nPiBQZXRlciBDaGFsbWVyczwvcD48cD48c3Ryb25nPlN0dWR5IGRhdGU6PC9zdHJvbmc+IDIwMjYtMDgtMDVUMDg6MTU6MDAtMDQ6MDA8L3A+PHA+PHN0cm9uZz5GaW5kaW5nczo8L3N0cm9uZz4gU2luZ2xlIHZpZXcgcG9ydGFibGUgQVAgY2hlc3QgcmFkaW9ncmFwaCBkZW1vbnN0cmF0ZXMgY2xlYXIgbHVuZyBmaWVsZHMgd2l0aG91dCBmb2NhbCBjb25zb2xpZGF0aW9uLCBwbGV1cmFsIGVmZnVzaW9uLCBvciBwbmV1bW90aG9yYXguIEhlYXJ0IHNpemUgaXMgd2l0aGluIG5vcm1hbCBsaW1pdHMuPC9wPjxwPjxzdHJvbmc+SW1wcmVzc2lvbjo8L3N0cm9uZz4gTm8gYWN1dGUgY2FyZGlvcHVsbW9uYXJ5IHByb2Nlc3MuPC9wPjxwPjxzdHJvbmc+SW50ZXJwcmV0ZWQgYnk6PC9zdHJvbmc+IERyIEFkYW0gQ2FyZWZ1bDwvcD48cD48c3Ryb25nPklzc3VlZDo8L3N0cm9uZz4gMjAyNi0wOC0wNVQwOTowMDowMC0wNDowMDwvcD48L2JvZHk+PC9odG1sPg=="
