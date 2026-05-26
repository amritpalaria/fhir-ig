Profile: ObservationMicroorganism314e
Parent: ObservationMicrobiology314e
Id: observation-microorganism-314e
Title: "314e Microorganism Observation"
Description: """
314e profile for microorganism observations.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"

* ^status = #active

// ======================================================
// CODE
// ======================================================

* code.coding contains microorganismCode 1..1

* code.coding[microorganismCode].system = "http://loinc.org" (exactly)
* code.coding[microorganismCode].code = #41852-5 (exactly)
* code.coding[microorganismCode].display = "Microorganism or agent identified in Specimen" (exactly)

// ======================================================
// HAS MEMBER
// ======================================================

* hasMember contains antimicrobialSusceptibilityObservation 0..*

* hasMember[antimicrobialSusceptibilityObservation] ^type.targetProfile[0] =
    "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
    
* hasMember only Reference314e

// ======================================================
// METHOD
// ======================================================

* method 0..1

* method.coding 1..1
* method.coding from MicroorganismByMethodVS (required)
