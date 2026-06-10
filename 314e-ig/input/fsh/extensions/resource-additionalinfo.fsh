Extension: ResourceAdditionalInfo
Id: resource-additionalInfo
Title: "Resource Additional Info"
Description: """
Applied at the root level of any resource. Used to capture supplementary
or non-standard information related to a FHIR resource that is not
represented by the core FHIR elements or existing profiles.
"""

Context: DomainResource

* ^url = "http://314e.com/fhir/StructureDefinition/resource-additionalInfo"
* ^status = #active

* value[x] only Reference314e
* valueReference 1..1

* valueReference ^short = "Reference to supplementary information for this resource"
* valueReference ^definition = """
Reference to an Observation resource that carries supplementary or
non-standard information associated with this resource that cannot be
represented through standard FHIR elements or existing profiles.
"""
