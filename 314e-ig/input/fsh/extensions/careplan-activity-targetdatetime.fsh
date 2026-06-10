Extension: CarePlanActivityTargetDateTime
Id: carePlan-activity-targetDateTime
Title: "Care Plan Activity Target Date Time"
Description: """
Applied to an individual activity element within a CarePlan resource.
Stores the target or goal date-time for completing that specific care plan
activity.

Standard FHIR CarePlan.activity has no dedicated target date field separate
from scheduledTiming or scheduledPeriod.
"""

Context: CarePlan.activity

* ^url = "http://314e.com/fhir/StructureDefinition/carePlan-activity-targetDateTime"
* ^status = #active

* value[x] only dateTime314e
* valueDateTime 1..1

* valueDateTime ^short = "Target date-time for completing the care plan activity"
* valueDateTime ^definition = """
The intended or expected date and time by which a specific care plan
activity should be completed or achieved.
"""
