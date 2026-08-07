Instance: example-of-us-quality-core-goal
InstanceOf: USQualityCoreGoal
Title: "Goal example"
Description: "Example of a patient-defined weight-management goal"
Usage: #example
* id = "example"
* identifier.value = "123"
* lifecycleStatus = #on-hold
* category = http://terminology.hl7.org/CodeSystem/goal-category#dietary
* priority = http://terminology.hl7.org/CodeSystem/goal-priority#high-priority "High Priority"
  * text = "high"
* description = $loinc#50064-5 "Ideal body weight"
  * text = "Target body weight is 160 to 180 lbs."
* subject
  * reference = "Patient/example"
  * display = "Example Patient"
* startDate = "2026-01-15"
* target
  * measure = $loinc#3141-9 "Weight Measured"
  * detailRange
    * low = 160 '[lb_av]' "lbs"
    * high = 180 '[lb_av]' "lbs"
  * dueDate = "2026-12-31"
* statusDate = "2026-07-15"
* statusReason = "Patient prefers to pause the goal while discussing a sustainable plan with the care team."
* expressedBy
  * reference = "Patient/example"
  * display = "Example Patient"
* addresses.display = "Condition involving obesity"
* outcomeReference
  * reference = "Observation/example"
  * display = "Body Weight Measured"
