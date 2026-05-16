// ======================================================
// INVARIANTS
// ======================================================

Invariant: identifier314e-1
Description: """
If Identifier.value is populated, Identifier.system SHALL also be populated.
"""
Expression: "value.exists() implies system.exists()"
Severity: #error

Invariant: identifier314e-2
Description: """
If Identifier.system represents an internal identifier system,
it SHALL follow the required naming convention:

[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier
"""
Expression: """
system.exists()
  and system.endsWith('-InternalIdentifier')
  implies
  system.matches('^[^-]+-[^-]+-[^-]+-[^-]+-[^-]+-[^-]+-InternalIdentifier$')
"""
Severity: #error


Profile: Identifier314e
Parent: Identifier
Id: identifier-314e
Title: "314e Identifier"
Description: """
314e profile of the FHIR Identifier datatype.

This profile requires Identifier.system whenever
Identifier.value is populated.

For customer-specific or internally defined identifiers,
Identifier.system SHALL follow the naming convention:

[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier

Example:
acme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier
"""

* ^status = #active

* obeys identifier314e-1
* obeys identifier314e-2

// ======================================================
// SYSTEM
// ======================================================

* system ^short =
    "Identifier namespace URI or constrained-format internal identifier-system name"

* system ^definition = """
Establishes the namespace, issuer, or context in which the identifier value is unique.

Standard identifiers SHOULD use canonical URIs whenever available.

For customer-specific or internally defined identifier systems,
the following naming convention SHALL be used:

[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier
"""

* system ^example[0].label =
    "Internal Identifier System for Observation-lab"

* system ^example[0].valueUri =
    "acme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier"

* system ^example[1].label =
    "Internal Identifier System for Patient"

* system ^example[1].valueUri =
    "acme-epic-Patient--identifier-MRN-InternalIdentifier"

// ======================================================
// VALUE
// ======================================================

* value ^short =
    "The identifier value"

* value ^definition = """
The portion of the identifier typically relevant to the user
and which is unique within the context of the system.
"""

* value ^comment = """
If Identifier.value is populated,
Identifier.system SHALL also be populated.
"""

* type only CodeableConcept314e

* period only Period314e
