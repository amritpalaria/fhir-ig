Extension: PatientDisability314e
Id: patient-disability-314e
Title: "314e Patient Disability"
Description: """
Value(s) identifying physical or mental condition(s) that limits a person's movements, senses, or activities. Deprecated: Use the [[[Flag]]] resource to represent disability information intended for administrative use, and to use [[[Condition]]] for clinical diagnoses that correspond to disabilities
"""

Context: Patient, RelatedPerson, Practitioner, Person

* ^url = "http://314e.com/fhir/StructureDefinition/patient-disability-314e"
* ^status = #active

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1
