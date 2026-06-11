Profile: ObservationAntimicrobialSusceptibility314e
Parent: ObservationMicrobiology314e
Id: observation-antimicrobial-susceptibility-314e
Title: "314e Antimicrobial Susceptibility Observation"
Description: """
314e profile for antimicrobial susceptibility observations.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"

* ^status = #active

// ======================================================
// CODE
// ======================================================

* code.coding contains antimicrobialSusceptibilityCode 1..1

* code.coding[antimicrobialSusceptibilityCode].system = "http://snomed.info/sct" (exactly)
* code.coding[antimicrobialSusceptibilityCode].code = #365705006 (exactly)
* code.coding[antimicrobialSusceptibilityCode].display = "Antimicrobial susceptibility - finding" (exactly)

// ======================================================
// METHOD
// ======================================================

* method 1..1

* method.coding 1..*
* method.coding from AntimicrobialSusceptibilityTestingVS (required)
* meta only Meta314e
