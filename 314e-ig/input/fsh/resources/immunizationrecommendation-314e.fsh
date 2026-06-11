Profile: ImmunizationRecommendation314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationrecommendation
Id: immunizationrecommendation-314e
Title: "314e ImmunizationRecommendation"
Description: """
314e-constrained ImmunizationRecommendation profile derived from QI-Core ImmunizationRecommendation.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
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
* date only dateTime314e
* authority only Reference314e
* recommendation.vaccineCode only CodeableConcept314e
* recommendation.targetDisease only CodeableConcept314e
* recommendation.contraindicatedVaccineCode only CodeableConcept314e
* recommendation.forecastStatus only CodeableConcept314e
* recommendation.forecastReason only CodeableConcept314e
* recommendation.dateCriterion.code only CodeableConcept314e
* recommendation.dateCriterion.value only dateTime314e
* recommendation.supportingImmunization only Reference314e
* recommendation.supportingPatientInformation only Reference314e
* meta only Meta314e
