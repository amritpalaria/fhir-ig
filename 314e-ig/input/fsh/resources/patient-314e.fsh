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

* extension contains
    PatientDisability314e named disability 0..1

* extension[disability] ^short =
    "Physical or mental condition(s) that limit the patient's movements, senses, or activities"

* extension contains
    PatientCitizenship314e named citizenship 0..*

* extension[citizenship] ^short =
    "The patient's legal status as citizen of a country"

* extension contains
    PatientAdoptionInfo314e named adoptionInfo 0..1

* extension[adoptionInfo] ^short =
    "Code indicating the adoption status of the patient"

* extension contains
    PatientReligion314e named religion 0..1

* extension[religion] ^short =
    "The patient's professed religious affiliation"

* extension contains
    PatientImportance314e named importance 0..1

* extension[importance] ^short =
    "The importance of the patient (e.g. VIP)"

* extension contains
    PatientAnimal314e named animal 0..1

* extension[animal] ^short =
    "Indicates this patient is known to be an animal"

* extension contains
    IndividualGenderIdentity314e named individualGenderIdentity 0..1

* extension[individualGenderIdentity] ^short =
    "The individual's gender identity"

* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName named mothersMaidenName 0..1

* extension[mothersMaidenName] ^short =
    "Mother's maiden (unmarried) name"

* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-cadavericDonor named cadavericDonor 0..1

* extension[cadavericDonor] ^short =
    "Flag indicating whether the patient authorized the donation of body parts after death"

* birthDate.extension contains
    PatientBirthTime314e named birthTime 0..1

* birthDate.extension[birthTime] ^short =
    "The time of day that the patient was born"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* name only HumanName314e
* telecom only ContactPoint314e
* address only Address314e
* maritalStatus only CodeableConcept314e
* communication.language only CodeableConcept314e

* photo only Attachment314e
* generalPractitioner only Reference314e
* generalPractitioner ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* generalPractitioner ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* generalPractitioner ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* managingOrganization only Reference314e
* managingOrganization ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* link.other only Reference314e
* link.other ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* meta only Meta314e
