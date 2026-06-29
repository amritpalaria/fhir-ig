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
* who ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* who ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* who ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* who ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* who ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/device-314e"
* who ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* onBehalfOf only Reference314e
* onBehalfOf ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* onBehalfOf ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* onBehalfOf ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* onBehalfOf ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* onBehalfOf ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/device-314e"
* onBehalfOf ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/organization-314e"
