Extension: TimePrecision
Id: time-precision
Title: "Time Precision"
Description: """
Specifies the meaningful/ usable precision of a time value when the 
datatype syntactically permits greater precision than is actually known or clinically usable.

This extension is intended to explicitly communicate the usable precision
of a time value.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/time-precision"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "314e"
* ^context[0].type = #element
* ^context[0].expression = "time"

* value[x] only code
* valueCode 1..1

* valueCode from TimePrecisionUnitsVS314E (required)

* valueCode ^short = "Known/ usable precision of the time value"
* valueCode ^definition = """
Indicates the precision that is operationally
or semantically meaningful/ usable for the associated time value.
"""

* . ^short = "Usable precision of a time value"
* . ^definition = """
This extension communicates the meaningful and usable precision of a time value
when the datatype syntactically allows more precision than is actually known
or appropriate to use.

This extension SHALL NOT alter the actual time value itself,
but instead clarifies the degree of precision
associated with the recorded value.
"""
