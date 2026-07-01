Extension: PatientCitizenship314e
Id: patient-citizenship-314e
Title: "314e Patient Citizenship"
Description: """
The patient's legal status as citizen of a country.
"""

Context: Patient, RelatedPerson, Person

* ^url = "http://314e.com/fhir/StructureDefinition/patient-citizenship-314e"
* ^status = #active

* extension contains
    code 0..1 and
    period 0..1

* extension[code] ^short = "Nation code of citizenship"
* extension[code] ^definition = "Nation code representing the citizenship of patient."
* extension[code].value[x] only CodeableConcept314e
* extension[code].valueCodeableConcept 1..1

* extension[period] ^short = "Time period of citizenship"
* extension[period] ^definition = "Period when citizenship was effective."
* extension[period].value[x] only Period314e
* extension[period].valuePeriod 1..1
