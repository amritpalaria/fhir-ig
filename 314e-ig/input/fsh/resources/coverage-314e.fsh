Profile: Coverage314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-coverage
Id: coverage-314e
Title: "314e Coverage"
Description: """
314e-constrained Coverage profile derived from QI-Core Coverage.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/coverage-314e"
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
* type only CodeableConcept314e
* policyHolder only Reference314e
* subscriber only Reference314e
* beneficiary only Reference314e
* relationship only CodeableConcept314e
* period only Period314e
* payor only Reference314e
* class.type only CodeableConcept314e
* costToBeneficiary.type only CodeableConcept314e
* costToBeneficiary.value[x] only Money314e or SimpleQuantity314e
* costToBeneficiary.exception.type only CodeableConcept314e
* costToBeneficiary.exception.period only Period314e
* contract only Reference314e
* meta only Meta314e
