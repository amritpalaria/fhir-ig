Extension: TimeAccuracy314e
Id: time-accuracy-314e
Title: "314e Time Accuracy"
Description: """
Specifies the accuracy or exactness of a time value when only some part of 
the known/ usable precision of time can be verified as accurate or exact and the rest is estimated or approximate.

This extension is intended to explicitly communicate the accuracy
of a time value.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/time-accuracy-314e"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "314e"
* ^context[0].type = #element
* ^context[0].expression = "time"

* value[x] only code
* valueCode 1..1

* valueCode from TimeAccuracyUnitsVS314E (required)

* valueCode ^short = "Precision level of the exact/ accurate part of time value"
* valueCode ^definition = """
Indicates the precision level that is verified as clinically exact or accurate.
"""

