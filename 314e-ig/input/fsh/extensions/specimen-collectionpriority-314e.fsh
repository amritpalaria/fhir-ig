Extension: SpecimenCollectionPriority314e
Id: specimen-collectionPriority-314e
Title: "314e Specimen Collection Priority"
Description: """
The urgency of sample collection, such as STAT, ASAP, ASAP-ED, ROUTINE, ROUTINE-AM, etc.…
"""

Context: Specimen.collection

* ^url = "http://314e.com/fhir/StructureDefinition/specimen-collectionPriority-314e"
* ^status = #active

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1
