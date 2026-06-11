Profile: NutritionOrder314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-nutritionorder
Id: nutritionorder-314e
Title: "314e NutritionOrder"
Description: """
314e-constrained NutritionOrder profile derived from QI-Core NutritionOrder.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* patient only Reference314e
* encounter only Reference314e
* dateTime only dateTime314e
* orderer only Reference314e
* allergyIntolerance only Reference314e
* foodPreferenceModifier only CodeableConcept314e
* excludeFoodModifier only CodeableConcept314e
* oralDiet.type only CodeableConcept314e
* oralDiet.schedule only Timing314e
* oralDiet.nutrient.modifier only CodeableConcept314e
* oralDiet.nutrient.amount only SimpleQuantity314e
* oralDiet.texture.modifier only CodeableConcept314e
* oralDiet.texture.foodType only CodeableConcept314e
* oralDiet.fluidConsistencyType only CodeableConcept314e
* supplement.type only CodeableConcept314e
* supplement.schedule only Timing314e
* supplement.quantity only SimpleQuantity314e
* enteralFormula.baseFormulaType only CodeableConcept314e
* enteralFormula.additiveType only CodeableConcept314e
* enteralFormula.caloricDensity only SimpleQuantity314e
* enteralFormula.routeofAdministration only CodeableConcept314e
* enteralFormula.administration.schedule only Timing314e
* enteralFormula.administration.quantity only SimpleQuantity314e
* enteralFormula.maxVolumeToDeliver only SimpleQuantity314e
* note only Annotation314e
* meta only Meta314e
