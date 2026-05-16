Profile: Timing314e
Parent: Timing
Id: timing-314e
Title: "314e Timing"
Description: """
Describes the occurrence of an event that may occur multiple times. Timing schedules are used 
for specifying when events are expected or requested to occur and may also be used to represent 
the summary of a past or ongoing event. For simplicity, the definitions of Timing components 
are expressed as 'future' events, but such components can also be used to describe historic or ongoing events.

A Timing schedule can be a list of events and/or criteria for when the event happens, which can 
be expressed in a structured form and/or as a code. When both event and a repeating specification 
are provided, the list of events should be understood as an interpretation of the information in the repeat structure.

Note: The Timing data type allows modifier extensions.

314e profile of the FHIR Timing datatype uses 314e datatype profiles 
including DateTime314e, Period314e, CodeableConcept314e and Quantity314e.
"""

* ^status = #active

* event only dateTime314e

* event ^short =
    "When the event occurs, in UTC"

* repeat.bounds[x] only Duration314e or Range314e or Period314e

* repeat.duration only decimal314e

* repeat.durationMax only decimal314e

* repeat.period only decimal314e

* repeat.periodMax only decimal314e

* repeat.timeOfDay only time314e

* code only CodeableConcept314e

