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

* extension contains
    CoverageNote314e named note 0..*

* extension[note] ^short =
    "Additional notes that apply to this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* type only CodeableConcept314e
* policyHolder only Reference314e
* policyHolder ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* policyHolder ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* policyHolder ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* subscriber only Reference314e
* subscriber ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subscriber ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* beneficiary only Reference314e
* beneficiary ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* relationship only CodeableConcept314e
* period only Period314e
* payor only Reference314e
* payor ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* payor ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* payor ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* class.type only CodeableConcept314e
* costToBeneficiary.type only CodeableConcept314e
* costToBeneficiary.value[x] only Money314e or SimpleQuantity314e
* costToBeneficiary.exception.type only CodeableConcept314e
* costToBeneficiary.exception.period only Period314e
* contract only Reference314e
* contract ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/contract-314e"
* meta only Meta314e
