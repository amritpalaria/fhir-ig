ValueSet: AntimicrobialSusceptibilityTestingVS
Id: antimicrobial-susceptibility-testing-vs
Title: "Antimicrobial Susceptibility Testing"
Description: """
Observation methods for antimicrobial susceptibility testing.
Includes HL7 v3 ObservationMethod code 0280 and all descendant codes.
"""

* ^status = #active

* include codes from system http://terminology.hl7.org/CodeSystem/v3-ObservationMethod where concept is-a #0280
