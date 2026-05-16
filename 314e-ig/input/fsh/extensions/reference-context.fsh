Extension: ReferenceContext
Id: reference-context
Title: "Reference Context"
Description: """
Provides additional semantic context describing the role,
capacity, purpose, or functional meaning of a Reference.

This extension is intended for use in situations where the
base FHIR element is broadly defined and the precise meaning
or role of the referenced resource requires further clarification.

For example, the performer element of an Observation may
reference practitioners participating in different capacities
such as technician, phlebotomist, or pathologist.
"""
Context: Reference

* ^url = "http://314e.com/fhir/StructureDefinition/reference-context"

* ^purpose = """
Allows fine-grained semantic qualification of references
where the underlying FHIR element definition is intentionally broad.
"""

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1

* valueCodeableConcept ^short =
    "Role, capacity, purpose, or semantic context of the reference"

* valueCodeableConcept ^definition = """
Describes the semantic role, capacity, purpose,
or contextual meaning associated with the referenced resource.
"""

* valueCodeableConcept ^comment = """
The interpretation of the reference-context extension is dependent
upon the semantics of the containing element.
"""
