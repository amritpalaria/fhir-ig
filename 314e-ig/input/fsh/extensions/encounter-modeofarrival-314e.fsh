Extension: EncounterModeOfArrival314e
Id: encounter-modeOfArrival-314e
Title: "314e Encounter Mode Of Arrival"
Description: """
Identifies how the patient arrives at the reporting facility, for example via an ambulance or other mode of transport.
"""

Context: Encounter

* ^url = "http://314e.com/fhir/StructureDefinition/encounter-modeOfArrival-314e"
* ^status = #active

* value[x] only Coding314e
* valueCoding 1..1
