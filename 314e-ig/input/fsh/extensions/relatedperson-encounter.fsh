Extension: RelatedPersonEncounter
Id: relatedPerson-encounter
Title: "Related Person Encounter"
Description: """
Applied at the root level of the RelatedPerson resource. References the
encounter with which a related person is associated.
"""

Context: RelatedPerson

* ^url = "http://314e.com/fhir/StructureDefinition/relatedPerson-encounter"
* ^status = #active

* value[x] only Reference314e
* valueReference 1..1

* valueReference ^short = "Encounter associated with the related person"
* valueReference ^definition = """
Reference to the Encounter resource with which this related person is associated.
"""
