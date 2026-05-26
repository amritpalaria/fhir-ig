Profile: ObservationMicrobiology314e
Parent: ObservationLabGeneral314e
Id: observation-microbiology-314e
Title: "314e Microbiology Observation"
Description: """
314e profile for microbiology laboratory observations.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"

* ^status = #active

// ======================================================
// CATEGORY SLICE
// ======================================================

* category[labSubcategory] = http://314e.com/fhir/CodeSystem/lab-category-subcategory-314e#MICV

* category[labSubcategory] ^short =
    "Required microbiology classification"

* category[labSubcategory] ^definition = """
Required laboratory microbiology test classification
for the observation.
"""

* category only CodeableConcept314e

// ======================================================
// HAS MEMBER SLICING
// ======================================================

* hasMember only Reference(Observation)
* hasMember ^type.targetProfile =
    "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"

//* hasMember[childObservation] only Reference(Observation)
* hasMember[childObservation] ^type.targetProfile =
    "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
