CodeSystem: ObservationTagCS
Id: observation-tag
Title: "Observation Tag CodeSystem"
Description: """
Codes used to qualify DiagnosticReport and Observation resources
within hierarchical parent-child result/report structures.
"""

* ^url = "http://314e.com/fhir/CodeSystem/observation-tag"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete

* #super-resource
    "Top-level resource with no parents of its own"

* #super-resource ^definition = """
Indicates that, within the hierarchy of resources created through
parent-child relationships, this resource occupies the top level
and itself has no parent resource.
"""

* #unresulted
    "Unresulted"

* #unresulted ^definition = """
Indicates that neither this resource nor any recursive descendant
resource bears a result or report.
"""
