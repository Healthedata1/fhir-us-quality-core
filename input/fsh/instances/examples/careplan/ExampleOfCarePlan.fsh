Instance: example-of-care-plan
InstanceOf: USQualityCoreCarePlan
Title: "CarePlan example"
Description: "Example of an assessment and care plan for a pregnancy"
Usage: #example
* id = "example"
* instantiatesCanonical = "http://example.org/guides/who/anc-cds/PlanDefinition/anc-contact-schedule"
* status = #active
* intent = #plan
* subject = Reference(Patient/reproductive-health-example) "Example Reproductive Health Patient"
* period
  * start = "2026-05-08"
  * end = "2026-12-04"
* careTeam = Reference(CareTeam/example)
* addresses.display = "pregnancy"
* goal.display = "pregnancy goal"
* activity[0]
  * outcomeReference.display = "First contact, occurred at about 12 weeks based on gestational age from LMP of 2026-02-13"
  * detail
    * kind = #ServiceRequest
    * instantiatesCanonical = "http://example.org/guides/who/anc-cds/PlanDefinition/anc-contact"
    * code = $sct#424525001 "Antenatal care (regime/therapy)"
      * text = "Antenatal care"
    * status = #completed
    * performer.display = "Example Midwife"
    * description = "First antenatal care contact"
* activity[+]
  * detail
    * kind = #ServiceRequest
    * instantiatesCanonical = "http://example.org/guides/who/anc-cds/PlanDefinition/anc-contact"
    * code = $sct#424525001 "Antenatal care (regime/therapy)"
      * text = "Antenatal care"
    * status = #completed
    * scheduledPeriod
      * start = "2026-07-03"
    * performer.display = "Example Midwife"
    * description = "Second contact occurred at 20 weeks of gestational age"
* activity[+]
  * detail
    * kind = #ServiceRequest
    * instantiatesCanonical = "http://example.org/guides/who/anc-cds/PlanDefinition/anc-contact"
    * code = $sct#424525001 "Antenatal care (regime/therapy)"
      * text = "Antenatal care"
    * status = #scheduled
    * scheduledPeriod
      * start = "2026-08-14"
    * performer.display = "Example Midwife"
    * description = "Third contact to occur at 26 weeks of gestational age"
* activity[+]
  * detail
    * kind = #ServiceRequest
    * instantiatesCanonical = "http://example.org/guides/who/anc-cds/PlanDefinition/anc-contact"
    * code = $sct#424525001 "Antenatal care (regime/therapy)"
      * text = "Antenatal care"
    * status = #not-started
    * scheduledPeriod
      * start = "2026-09-11"
    * performer.display = "Example Midwife"
    * description = "Fourth contact to occur at 30 weeks of gestational age"
* activity[+]
  * detail
    * kind = #ServiceRequest
    * instantiatesCanonical = "http://example.org/guides/who/anc-cds/PlanDefinition/anc-contact"
    * code = $sct#424525001 "Antenatal care (regime/therapy)"
      * text = "Antenatal care"
    * status = #not-started
    * scheduledPeriod
      * start = "2026-10-09"
    * performer.display = "Example Midwife"
    * description = "Fifth contact to occur at 34 weeks of gestational age"
* activity[+]
  * detail
    * kind = #ServiceRequest
    * instantiatesCanonical = "http://example.org/guides/who/anc-cds/PlanDefinition/anc-contact"
    * code = $sct#424525001 "Antenatal care (regime/therapy)"
      * text = "Antenatal care"
    * status = #not-started
    * scheduledPeriod
      * start = "2026-10-23"
    * performer.display = "Example Midwife"
    * description = "Sixth contact to occur at 36 weeks of gestational age"
* activity[+]
  * detail
    * kind = #ServiceRequest
    * instantiatesCanonical = "http://example.org/guides/who/anc-cds/PlanDefinition/anc-contact"
    * code = $sct#424525001 "Antenatal care (regime/therapy)"
      * text = "Antenatal care"
    * status = #not-started
    * scheduledPeriod
      * start = "2026-11-06"
    * performer.display = "Example Midwife"
    * description = "Seventh contact to occur at 38 weeks of gestational age"
* activity[+]
  * detail
    * kind = #ServiceRequest
    * instantiatesCanonical = "http://example.org/guides/who/anc-cds/PlanDefinition/anc-contact"
    * code = $sct#424525001 "Antenatal care (regime/therapy)"
      * text = "Antenatal care"
    * status = #not-started
    * scheduledPeriod
      * start = "2026-11-20"
    * performer.display = "Example Midwife"
    * description = "Eighth contact to occur at 40 weeks of gestational age"
* activity[+].detail
  * kind = #ServiceRequest
  * code = $sct#236973005 "Delivery procedure (procedure)"
    * text = "Delivery procedure"
  * status = #not-started
  * scheduledPeriod
    * start = "2026-11-20"
    * end = "2026-12-04"
  * performer
    * display = "Example Midwife"
  * description = "Delivery"
