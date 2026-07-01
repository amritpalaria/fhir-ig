Extension: AnnotationType314e
Id: annotationType-314e
Title: "314e Annotation Type"
Description: """
The type of annotation.  This extension can be used to map the v2 NTE-4 comment type field.
"""

Context: Annotation

* ^url = "http://314e.com/fhir/StructureDefinition/annotationType-314e"
* ^status = #active

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1
