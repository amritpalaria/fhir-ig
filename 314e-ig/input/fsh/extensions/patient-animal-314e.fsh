Extension: PatientAnimal314e
Id: patient-animal-314e
Title: "314e Patient Animal"
Description: """
This patient is known to be an animal.
"""

Context: Patient

* ^url = "http://314e.com/fhir/StructureDefinition/patient-animal-314e"
* ^status = #active

* extension contains
    species 1..1 and
    breed 0..1 and
    genderStatus 0..1

* extension[species] ^short = "The animal species.  E.g. Dog, Cow."
* extension[species] ^definition = "Identifies the high level taxonomic categorization of the kind of animal."
* extension[species].value[x] only CodeableConcept314e
* extension[species].valueCodeableConcept 1..1

* extension[breed] ^short = "The animal breed.  E.g. Poodle, Angus."
* extension[breed] ^definition = "Identifies the detailed categorization of the kind of animal."
* extension[breed].value[x] only CodeableConcept314e
* extension[breed].valueCodeableConcept 1..1

* extension[genderStatus] ^short = "The status of the animal's reproductive parts.  E.g. Neutered, Intact."
* extension[genderStatus] ^definition = "Indicates the current state of the animal's reproductive organs."
* extension[genderStatus].value[x] only CodeableConcept314e
* extension[genderStatus].valueCodeableConcept 1..1
