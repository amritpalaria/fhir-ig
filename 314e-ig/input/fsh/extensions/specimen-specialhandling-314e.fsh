Extension: SpecimenSpecialHandling314e
Id: specimen-specialHandling-314e
Title: "314e Specimen Special Handling"
Description: """
Special handling during the collection, transport, or storage of the specimen.
"""

Context: Specimen.collection

* ^url = "http://314e.com/fhir/StructureDefinition/specimen-specialHandling-314e"
* ^status = #active

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1
