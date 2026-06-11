Profile: Signature314e
Parent: Signature
Id: signature-314e
Title: "314e Signature"
Description: """
314e profile of the FHIR Signature datatype.

This profile constrains Coding, instant, and Reference sub-elements
to their corresponding 314e datatype profiles.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/signature-314e"
* ^status = #active

* type only Coding314e
* when only instant314e
* who only Reference314e
* onBehalfOf only Reference314e
