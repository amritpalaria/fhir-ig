Profile: CodeableConcept314e
Parent: CodeableConcept
Id: codeableconcept-314e
Title: "314e CodeableConcept"
Description: """
314e profile of the FHIR CodeableConcept datatype.

This profile supports:
- standard terminology codings
- optional customer-specific internal codings

Internal codings are used to preserve customer, EHR,
workflow, and source-system-native semantic classifications and source system fidelity.

Any coding system intended to represent an internal coding
system SHALL follow the required naming convention:

[customer]-[ehr]-[ResourceType]-[resource-subtype]-[element]-[SourceSpecificString]-InternalCode

Example:
acme-epic-Observation-lab-code-Glucose-InternalCode
"""

* ^status = #active

// ======================================================
// USE 314e CODING
// ======================================================

* coding only Coding314e

// ======================================================
// INTERNAL CODING SLICE
// ======================================================

* coding ^slicing.discriminator.type = #pattern
* coding ^slicing.discriminator.path = "system"
* coding ^slicing.rules = #open

* coding contains internalCode 0..*

* coding[internalCode] only Coding314e
* coding[internalCode] ^short =
"""Customer-specific internal coding with required internal code system format"""

* coding[internalCode] ^definition = """
Optional internal coding used to preserve
source-system-native semantics."""

* coding[internalCode].system ^short =
"""Internal code system identifier with required format"""

* coding[internalCode].system ^definition = """
Internal customer-specific code system identifier.

Any coding intended to represent an internal coding
system SHALL use the following format:

[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalCode

Example:
acme-epic-Observation-lab-code-Glucose-InternalCode
"""

* coding[internalCode].code ^short =
    "Internal source-specific code"

* coding[internalCode].code ^definition = """
Customer-specific or source-system-native code value.
"""

* coding[internalCode].display ^short =
    "Internal source-specific display"

* coding[internalCode].display ^definition = """
Human-readable representation of the internal code.
"""

// ======================================================
// EXAMPLE
// ======================================================

* coding[internalCode].system ^example.label =
    "Internal Coding System"

* coding[internalCode].system ^example.valueUri =
    "acme-epic-Observation-lab-code-Glucose-InternalCode"

// ======================================================
// HL7 DESCRIPTIONS RETAINED
// ======================================================

* text ^short =
    "Plain text representation of the concept"

* text ^definition = """
A human language representation of the concept
as entered or chosen by the user.
"""
