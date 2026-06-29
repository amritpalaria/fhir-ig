Profile: DataRequirement314e
Parent: DataRequirement
Id: datarequirement-314e
Title: "314e DataRequirement"
Description: """
314e profile of the FHIR DataRequirement datatype.

This profile constrains CodeableConcept, Reference, Coding, dateTime,
Period, and Duration sub-elements to their corresponding 314e datatype profiles.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/datarequirement-314e"
* ^status = #active

* subject[x] only CodeableConcept314e or Reference314e
* subjectReference ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/group-314e"
* codeFilter.code only Coding314e
* dateFilter.value[x] only dateTime314e or Period314e or Duration314e
