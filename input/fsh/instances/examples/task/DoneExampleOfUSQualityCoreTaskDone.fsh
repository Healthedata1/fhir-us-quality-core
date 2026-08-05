Instance: done-example-of-us-quality-core-task-done
InstanceOf: USQualityCoreTaskDone
Title: "Task positive example"
Description: "Task example (using the Positive Profile)"
Usage: #example
* id = "done-example"
* identifier
  * system = "http://www.acme.org/tasks"
  * value = "19009"
* status = #completed
* intent = #order
* priority = #routine
* code = $task-code#fulfill "Fulfill the focal request"
* focus.reference = "ServiceRequest/service-requested-example"
* for.reference = "Patient/example"
* executionPeriod
  * start = "2018-06-11"
  * end = "2018-06-11"
