// --------------------------------------------------
// Constraints
// --------------------------------------------------

Invariant: coding314e-1
Description: "If display is populated, code must also be populated"
Expression: "display.exists() implies code.exists()"
Severity: #error

Invariant: coding314e-2
Description: "If code or display is populated, system must also be populated"
Expression: "(code.exists() or display.exists()) implies system.exists()"
Severity: #error

Invariant: coding314e-3
Description: """
Internal coding systems SHALL follow the format:

[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalCode

Example:
acme-epic-Observation-lab-code-Glucose-InternalCode
"""

Expression: """
coding.where(system.exists())
  .where(system.endsWith('-InternalCode'))
  .all(system.matches('^[^-]+-[^-]+-[^-]+-[^-]+-[^-]+-[^-]+-InternalCode$'))
"""

Severity: #error

// --------------------------------------------------
// Profile
// --------------------------------------------------

Profile: Coding314e
Parent: Coding
Id: coding-314e
Title: "314e Coding"
Description: """
314e profile of the FHIR Coding datatype.

This profile strengthens semantic interoperability expectations
around population of system, code, and display.

When display is populated, code SHALL also be populated.

If source data lacks a formal coded value but provides textual
display content, implementers SHOULD generate a surrogate code
using the display text transformed as follows:
- convert all letters to lower case
- replace spaces with hyphens

Example:
Display: "Blood Culture"
Generated code: "blood-culture"

Whenever either code or display is populated, system SHALL
also be populated.
"""

* ^status = #active

* obeys coding314e-1
* obeys coding314e-2

* system obeys coding314e-3

* version ^short = "Version of the system"
* version ^definition = """
The version of the code system which was used when choosing
this code.

The interpretation of version is defined by the code system.
"""

* code ^short = "Symbol in syntax defined by the system"
* code ^definition = """
A symbol in syntax defined by the system.

314e constraint:
code SHALL be populated whenever display is populated.

If no formal coded value exists in source data but textual
display content exists, implementers SHOULD generate a
surrogate code from the display by:
- converting all letters to lower case
- replacing spaces with hyphens
"""

* display ^short = "Representation defined by the system"
* display ^definition = """
A representation of the meaning of the code in the system,
following the rules of the system.

314e constraint:
display SHALL NOT be populated unless code is also populated.
"""

* userSelected ^short = "If this coding was chosen directly by the user"
* userSelected ^definition = """
Indicates that this coding was chosen by a user directly
rather than generated automatically.
"""

