Extension: PatientReligion314e
Id: patient-religion-314e
Title: "314e Patient Religion"
Description: """
The patient's professed religious affiliations.
"""

Context: Patient

* ^url = "http://314e.com/fhir/StructureDefinition/patient-religion-314e"
* ^status = #active

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1
