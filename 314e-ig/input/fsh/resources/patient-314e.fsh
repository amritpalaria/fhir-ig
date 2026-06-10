Profile: Patient314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-patient
Id: patient-314e
Title: "314e Patient"
Description: """
314e-constrained Patient profile derived from QI-Core Patient.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/patient-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    PatientPreferredGenderPronoun named preferredGenderPronoun 0..1

* extension[preferredGenderPronoun] ^short =
    "Patient's preferred gender pronoun"

* extension contains
    PatientAffiliation named affiliation 0..*

* extension[affiliation] ^short =
    "Patient's institutional or organizational affiliation"

* extension contains
    PatientMothersName named mothersName 0..1

* extension[mothersName] ^short =
    "Mother's name of the patient"

* extension contains
    PatientPharmacies named pharmacies 0..*

* extension[pharmacies] ^short =
    "Preferred pharmacy linked to the patient"

* extension contains
    PatientEmploymentStatus named employmentStatus 0..1

* extension[employmentStatus] ^short =
    "Patient's current employment status"

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* name only HumanName314e
* telecom only ContactPoint314e
* address only Address314e
* maritalStatus only CodeableConcept314e
* communication.language only CodeableConcept314e

* generalPractitioner only Reference314e
* managingOrganization only Reference314e
* link.other only Reference314e
