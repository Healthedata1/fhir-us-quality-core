Instance: phq-9-example
InstanceOf: USQualityCoreQuestionnaireResponse
Title: "PHQ-9 QuestionnaireResponse Example"
Description: "Example of a PHQ-9 Questionnaire Response"
Usage: #example
* questionnaire = "http://hl7.org/fhir/us/core/Questionnaire/phq-9-example"
* status = #completed
* subject.reference = "Patient/example"
* authored = "2026-08-05T10:14:07-04:00"
* author.reference = "Practitioner/example"
* item[0]
  * linkId = "/44250-9"
  * text = "Little interest or pleasure in doing things?"
  * answer.valueCoding = $loinc#LA6568-5 "Not at all"
* item[+]
  * linkId = "/44255-8"
  * text = "Feeling down, depressed, or hopeless?"
  * answer.valueCoding = $loinc#LA6568-5 "Not at all"
* item[+]
  * linkId = "/44259-0"
  * text = "Trouble falling or staying asleep, or sleeping too much in last 2 weeks [Reported.PHQ]"
  * answer.valueCoding = $loinc#LA6568-5 "Not at all"
* item[+]
  * linkId = "/44254-1"
  * text = "Feeling tired or having little energy in last 2 weeks [Reported.PHQ]"
  * answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+]
  * linkId = "/44251-7"
  * text = "Poor appetite or overeating in last 2 weeks [Reported.PHQ]"
  * answer.valueCoding = $loinc#LA6570-1 "More than half the days"
* item[+]
  * linkId = "/44258-2"
  * text = "Feeling bad about yourself - or that you are a failure or have let yourself or your family down in last 2 weeks [Reported.PHQ]"
  * answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+]
  * linkId = "/44252-5"
  * text = "Trouble concentrating on things, such as reading the newspaper or watching television in last 2 weeks [Reported.PHQ]"
  * answer.valueCoding = $loinc#LA6571-9 "Nearly every day"
* item[+]
  * linkId = "/44253-3"
  * text = "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual in last 2 weeks [Reported.PHQ]"
  * answer.valueCoding = $loinc#LA6570-1 "More than half the days"
* item[+]
  * linkId = "/44260-8"
  * text = "Thoughts that you would be better off dead, or of hurting yourself in some way in last 2 weeks [Reported.PHQ]"
  * answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+]
  * linkId = "/44261-6"
  * text = "Patient health questionnaire 9 item total score"
  * answer.valueDecimal = 10
