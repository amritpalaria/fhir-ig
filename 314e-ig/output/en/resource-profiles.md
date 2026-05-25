# Resource Profiles - 314e FHIR Implementation Guide v1.0.0

## Resource Profiles

# Resource Profiles

* Name: [314e Non-Microbiology Laboratory Observation](StructureDefinition-observation-lab-nonmicro-314e.md)
  * Description: 314e profile for non-microbiology laboratory observations.This profile derives from the QI Core Laboratory Result Observation profileand constrains datatypes to corresponding 314e datatype profiles where applicable.A required category slice SHALL identify the laboratory subcategoryusing a code from LabCategorySubcategory314eVS.This profile also supports the ValueAttachment314e extensionfor scenarios where the laboratory result cannot be representedusing structured Observation.value[x] datatypes or plain text.
* Name: [314e ServiceRequest](StructureDefinition-servicerequest-314e.md)
  * Description: A 314e-constrained ServiceRequest profile derived fromQI-Core ServiceRequest.This profile requires classification of the requested serviceusing standardized high-level service categories and uses314e datatype profiles where applicable.

