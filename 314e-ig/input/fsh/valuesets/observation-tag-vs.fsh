ValueSet: ObservationTagVS
Id: observation-tag-vs
Title: "Observation Tag ValueSet"
Description: """
Semantic tags used in meta.tag to qualify DiagnosticReport and
Observation resources participating in hierarchical parent-child
resource structures.
"""

* ^url = "http://314e.com/fhir/ValueSet/observation-tag"
* ^status = #active

* include codes from system ObservationTagCS
