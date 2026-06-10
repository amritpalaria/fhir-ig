Extension: CarePlanTargetDateTime
Id: carePlan-targetDateTime
Title: "Care Plan Target Date Time"
Description: """
Applied at the root level of the CarePlan resource. Specifies the intended
or expected target date-time for completion, review, or achievement of the
care plan or care plan objective.
"""

Context: CarePlan

* ^url = "http://314e.com/fhir/StructureDefinition/carePlan-targetDateTime"
* ^status = #active

* value[x] only dateTime314e
* valueDateTime 1..1

* valueDateTime ^short = "Target date-time for care plan completion or review"
* valueDateTime ^definition = """
The intended or expected date and time by which the care plan as a whole,
or a specific care plan objective, should be completed, reviewed, or achieved.
"""
