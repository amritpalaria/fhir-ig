Extension: DateTimePrecision314e
Id: datetime-precision-314e
Title: "314e Date/Time Precision"
Description: """
Specifies the meaningful/ usable precision of a dateTime value when the 
datatype syntactically permits greater precision than is actually known or clinically usable.

This extension is intended to explicitly communicate the usable precision
of a dateTime value, such as year-only, year-month, date-only, or
full timestamp precision.

All dateTime values in the 314e implementation guide SHALL be stored in UTC.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/datetime-precision-314e"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "314e"
* ^context[0].type = #element
* ^context[0].expression = "dateTime"

* value[x] only code
* valueCode 1..1

* valueCode from TimePrecisionUnitsVS314E (required)

* valueCode ^short = "Known/ usable precision of the dateTime value"
* valueCode ^definition = """
Indicates the precision that is operationally
or semantically meaningful/ usable for the associated dateTime value.
Examples include year-only, month-level, date-level,
or full timestamp precision.
"""

* . ^short = "Usable precision of a dateTime value"
* . ^definition = """
This extension communicates the meaningful and usable precision of a dateTime value
when the datatype syntactically allows more precision than is actually known
or appropriate to use.

For example:
- A birth year may be known without exact date
- Only the date may be verified without time
- Only month/year may be clinically relevant

This extension SHALL NOT alter the actual dateTime value itself,
but instead clarifies the degree of precision
associated with the recorded value.
"""
