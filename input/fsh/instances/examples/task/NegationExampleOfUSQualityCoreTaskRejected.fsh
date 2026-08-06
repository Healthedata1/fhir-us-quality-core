Instance: negation-example-of-us-quality-core-task-rejected
InstanceOf: USQualityCoreTaskRejected
Title: "Task Rejected example rejecting a proposal using a value set"
Description: "Example of a task rejecting a proposal that identifies the requested activity with a value set"
Usage: #example
* id = "negation-example"
* identifier
  * system = "http://www.acme.org/tasks"
  * value = "19009"
* status = #rejected
* statusReason = $sct#1296859006 "Procedure declined (situation)"
* intent = #proposal
* code = $task-code#fulfill "Fulfill the focal request"
* focus.reference = "ServiceRequest/proposal-example"
* for.reference = "Patient/example"
* executionPeriod
  * start = "2026-07-31"
  * end = "2026-07-31"
