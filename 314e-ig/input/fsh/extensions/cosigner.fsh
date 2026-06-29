Extension: Cosigner
Id: cosigner
Title: "Cosigner"
Description: """
Identifies an individual who reviewed, verified, or co-signed the associated
clinical document, note, order, or healthcare record.
"""

Context: DomainResource

* ^url = "http://314e.com/fhir/StructureDefinition/cosigner"
* ^status = #active

* value[x] only Reference314e
* valueReference 1..1
* valueReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* valueReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* valueReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* valueReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/person-314e"
* valueReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* valueReference ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/organization-314e"

* valueReference ^short = "Individual who co-signed the record"
* valueReference ^definition = """
Reference to the practitioner who reviewed, verified, or co-signed
the associated clinical document, note, order, or healthcare record.
"""
