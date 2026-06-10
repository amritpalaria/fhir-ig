Extension: PatientPreferredGenderPronoun
Id: patient-preferredGenderPronoun
Title: "Patient Preferred Gender Pronoun"
Description: """
Applied directly at the root level of the Patient resource to store the
patient's preferred gender pronoun.
"""

Context: Patient

* ^url = "http://314e.com/fhir/StructureDefinition/patient-preferredGenderPronoun"
* ^status = #active

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1

* valueCodeableConcept ^short = "Patient's preferred gender pronoun"
* valueCodeableConcept ^definition = """
The patient's preferred gender pronoun as communicated by the patient
or their representative.
"""
