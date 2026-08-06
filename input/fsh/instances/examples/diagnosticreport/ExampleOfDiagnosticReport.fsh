Instance: example-of-diagnostic-report
InstanceOf: USQualityCoreDiagnosticReportLab
Title: "DiagnosticReportLab example"
Description: "Example of the findings and interpretation of a laboratory diagnostic test"
Usage: #example
* id = "example"
* contained[0] = wbc-count
* contained[+] = rbc-count
* contained[+] = hemoglobin
* contained[+] = hematocrit
* contained[+] = platelets
* contained[+] = whole-blood-specimen
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB "Laboratory"
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
  * text = "CBC panel - Blood by Automated count"
* subject = Reference(Patient/example) "Peter Chalmers"
* effectiveDateTime = "2026-08-05T08:00:00-04:00"
* issued = "2026-08-05T09:15:00-04:00"
* performer = Reference(Organization/example-1)
* result[0]
  * reference = "#wbc-count"
  * display = "WBC Count"
* result[+]
  * reference = "#rbc-count"
  * display = "RBC Count"
* result[+]
  * reference = "#hemoglobin"
  * display = "Hemoglobin"
* result[+]
  * reference = "#hematocrit"
  * display = "Hematocrit"
* result[+]
  * reference = "#platelets"
  * display = "Platelet Count"

Instance: wbc-count
InstanceOf: USQualityCoreObservationLab
Usage: #inline
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
* code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
  * text = "WBC Count"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-08-05T08:00:00-04:00"
* issued = "2026-08-05T09:15:00-04:00"
* performer = Reference(Organization/example-1)
* valueQuantity = 7.2 '10*3/uL' "10*3/uL"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* specimen.reference = "#whole-blood-specimen"
* referenceRange
  * low = 4.5 '10*3/uL' "10*3/uL"
  * high = 11.0 '10*3/uL' "10*3/uL"

Instance: rbc-count
InstanceOf: USQualityCoreObservationLab
Usage: #inline
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
* code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
  * text = "RBC Count"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-08-05T08:00:00-04:00"
* issued = "2026-08-05T09:15:00-04:00"
* performer = Reference(Organization/example-1)
* valueQuantity = 4.65 '10*6/uL' "10*6/uL"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* specimen.reference = "#whole-blood-specimen"
* referenceRange
  * low = 4.2 '10*6/uL' "10*6/uL"
  * high = 5.8 '10*6/uL' "10*6/uL"

Instance: hemoglobin
InstanceOf: USQualityCoreObservationLab
Usage: #inline
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
  * text = "Hemoglobin"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-08-05T08:00:00-04:00"
* issued = "2026-08-05T09:15:00-04:00"
* performer = Reference(Organization/example-1)
* valueQuantity = 14.1 'g/dL' "g/dL"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* specimen.reference = "#whole-blood-specimen"
* referenceRange
  * low = 13.5 'g/dL' "g/dL"
  * high = 17.5 'g/dL' "g/dL"

Instance: hematocrit
InstanceOf: USQualityCoreObservationLab
Usage: #inline
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
* code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
  * text = "Hematocrit"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-08-05T08:00:00-04:00"
* issued = "2026-08-05T09:15:00-04:00"
* performer = Reference(Organization/example-1)
* valueQuantity = 42.3 '%' "%"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* specimen.reference = "#whole-blood-specimen"
* referenceRange
  * low = 38.8 '%' "%"
  * high = 50.0 '%' "%"

Instance: platelets
InstanceOf: USQualityCoreObservationLab
Usage: #inline
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
* code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
  * text = "Platelet Count"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-08-05T08:00:00-04:00"
* issued = "2026-08-05T09:15:00-04:00"
* performer = Reference(Organization/example-1)
* valueQuantity = 240 '10*3/uL' "10*3/uL"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* specimen.reference = "#whole-blood-specimen"
* referenceRange
  * low = 150 '10*3/uL' "10*3/uL"
  * high = 450 '10*3/uL' "10*3/uL"

Instance: whole-blood-specimen
InstanceOf: USCoreSpecimenProfile
Usage: #inline
* type = $sct#258580003 "Whole blood specimen"
* subject = Reference(Patient/example) "Peter Chalmers"
* collection.collectedDateTime = "2026-08-05T08:00:00-04:00"
