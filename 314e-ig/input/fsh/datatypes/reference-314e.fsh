Profile: Reference314e
Parent: Reference
Id: reference-314e
Title: "314e Reference"
Description: """
A constrained Reference datatype profile supporting semantic
qualification of references using the reference-context extension.

This profile enables references to carry additional information
about the role, capacity, purpose, or contextual meaning of
the referenced resource.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/reference-314e"

* ^purpose = """
Supports semantically qualified references in scenarios where
FHIR reference elements are intentionally broad or ambiguous.
"""

* extension contains
    ReferenceContext named context 0..*

* extension[context] ^short =
    "Semantic role or contextual meaning of the reference"

* extension[context] ^definition = """
Provides additional semantic qualification for the reference,
including role, capacity, or contextual purpose.
"""
