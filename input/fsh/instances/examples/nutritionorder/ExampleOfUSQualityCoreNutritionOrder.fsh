Instance: example-of-us-quality-core-nutrition-order
InstanceOf: USQualityCoreNutritionOrder
Title: "NutritionOrder example"
Description: "Example of a NutritionOrder for a consistent carbohydrate diet"
Usage: #example
* id = "example"
* identifier
  * system = "http://example.org/nutrition-requests"
  * value = "123"
* status = #active
* intent = #order
* patient
  * reference = "Patient/example"
  * display = "Example Patient"
* encounter
  * reference = "Encounter/example"
  * display = "Inpatient"
* dateTime = "2026-08-01"
* orderer
  * reference = "Practitioner/example"
  * display = "Example Practitioner"
* allergyIntolerance
  * reference = "AllergyIntolerance/example"
  * display = "Cashew Nuts"
* foodPreferenceModifier = http://terminology.hl7.org/CodeSystem/diet#dairy-free
* oralDiet
  * type = $sct#435651000124106 "Consistent carbohydrate diet"
    * text = "Consistent carbohydrate diet"
  * schedule
    * repeat
      * boundsPeriod.start = "2026-08-01"
      * frequency = 3
      * period = 1
      * periodUnit = #d
  * nutrient
    * modifier = $sct#2331003 "Carbohydrate"
    * amount = 75 'g' "grams"
