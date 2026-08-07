Instance: example-of-diagnostic-report
InstanceOf: USQualityCoreDiagnosticReportLab
Title: "DiagnosticReportLab example"
Description: "Example of a final blood glucose laboratory report"
Usage: #example
* id = "example"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB "Laboratory"
* code = $loinc#2339-0 "Glucose Bld-mCnc"
  * text = "Blood glucose"
* subject = Reference(Patient/example) "Example Patient"
* effectiveDateTime = "2026-08-05T08:00:00-04:00"
* issued = "2026-08-05T09:15:00-04:00"
* performer = Reference(Organization/example-1)
* result = Reference(laboratory-result-observation-example-blood-glucose) "Glucose Laboratory Result Observation"
