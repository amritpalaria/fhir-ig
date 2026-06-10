Extension: DateTimeAccuracy
Id: datetime-accuracy
Title: "Date/Time Accuracy"
Description: """
Specifies the accuracy or exactness of a dateTime value when only some part of 
the known/ usable precision of dateTime can be verified as accurate or exact and the rest is estimated or approximate.

This extension is intended to explicitly communicate the accuracy
of a dateTime value, such as full timestamp, year-only, year-month, date-only, or
none.

For example:
- A birth year and month may be known exactly but the day might be an estimate
- Only the date may be verifiable as accurate with the time being approximate

Note: All dateTime values in the 314e implementation guide SHALL be stored in UTC.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/datetime-accuracy"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "314e"
* ^context[0].type = #element
* ^context[0].expression = "dateTime"

* value[x] only code
* valueCode 1..1

* valueCode from TimeAccuracyUnitsVS314E (required)

* valueCode ^short = "Precision level of the exact/ accurate part of dateTime value"
* valueCode ^definition = """
Indicates the precision level that is verified as clinically exact or accurate.
Examples include year-only, month-level, date-level,
full timestamp precision or none.
"""

