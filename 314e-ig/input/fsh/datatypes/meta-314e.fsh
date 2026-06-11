Profile: Meta314e
Parent: Meta
Id: meta-314e
Title: "314e Meta"
Description: """
314e profile of the FHIR Meta datatype.

This profile constrains the lastUpdated (instant), security (Coding),
and tag (Coding) sub-elements to their corresponding 314e datatype profiles.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/meta-314e"
* ^status = #active

* lastUpdated only instant314e
* security only Coding314e
* tag only Coding314e
