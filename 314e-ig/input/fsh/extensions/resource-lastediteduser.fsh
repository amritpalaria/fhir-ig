Extension: ResourceLastEditedUser
Id: resource-lastEditedUser
Title: "Resource Last Edited User"
Description: """
Applied at the root level of clinical resources. Stores the reference of the
person who last edited or modified the resource.

Standard FHIR resources generally have no "last edited by" field — only
recorder (who first recorded it) and asserter (who asserted it clinically).
This extension captures an audit trail entry for the most recent editor.
"""

Context: DomainResource

* ^url = "http://314e.com/fhir/StructureDefinition/resource-lastEditedUser"
* ^status = #active

* value[x] only Reference314e
* valueReference 1..1
* valueReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* valueReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* valueReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* valueReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/person-314e"
* valueReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"

* valueReference ^short = "Person who last edited the resource"
* valueReference ^definition = """
Reference to the Practitioner, Patient, Person, or RelatedPerson who most
recently edited or modified this resource.
"""
