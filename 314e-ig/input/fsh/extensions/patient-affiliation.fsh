Extension: PatientAffiliation
Id: patient-affiliation
Title: "Patient Affiliation"
Description: """
Applied at the root level of the Patient resource. Stores the patient's
institutional or organizational affiliation (e.g., hospital network,
physician group) using an internal code.

Standard FHIR Patient has no affiliation field.
"""

Context: Patient

* ^url = "http://314e.com/fhir/StructureDefinition/patient-affiliation"
* ^status = #active

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1

* valueCodeableConcept ^short = "Patient's institutional or organizational affiliation"
* valueCodeableConcept ^definition = """
Represents the patient's institutional or organizational affiliation
such as a hospital network or physician group.
"""
