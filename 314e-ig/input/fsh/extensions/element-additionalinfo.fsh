Extension: ElementAdditionalInfo
Id: element-additionalInfo
Title: "Element Additional Info"
Description: """
Applied to any FHIR element. Carries additional information associated
with a specific FHIR element that is not represented by the standard
element definition.
"""

Context: Element

* ^url = "http://314e.com/fhir/StructureDefinition/element-additionalInfo"
* ^status = #active

* value[x] only Reference314e
* valueReference 1..1

* valueReference ^short = "Reference to additional information for this element"
* valueReference ^definition = """
Reference to an Observation resource that carries additional or non-standard
information associated with a specific FHIR element beyond what the standard
element definition supports.
"""
