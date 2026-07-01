Extension: PatientAdoptionInfo314e
Id: patient-adoptionInfo-314e
Title: "314e Patient Adoption Info"
Description: """
Code indication the adoption status of the patient.
"""

Context: Patient

* ^url = "http://314e.com/fhir/StructureDefinition/patient-adoptionInfo-314e"
* ^status = #active

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1
