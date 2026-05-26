ValueSet: MicroorganismByMethodVS
Id: microorganism-by-method-vs
Title: "Microorganism by Method"
Description: """
LOINC methods used to identify microorganisms.
"""

* ^status = #active

* include codes from system http://loinc.org where code = #11475-1
* include codes from system http://loinc.org where code = #92253-4
* include codes from system http://loinc.org where code = #76346-6
