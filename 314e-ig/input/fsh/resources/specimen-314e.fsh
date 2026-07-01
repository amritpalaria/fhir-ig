Profile: Specimen314e
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-specimen
Id: specimen-314e
Title: "314e Specimen"
Description: """
314e-constrained Specimen profile derived from US Core Specimen.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

* collection.extension contains
    SpecimenCollectionPriority314e named collectionPriority 0..1

* collection.extension[collectionPriority] ^short =
    "The urgency of sample collection"

* collection.extension contains
    SpecimenSpecialHandling314e named specialHandling 0..*

* collection.extension[specialHandling] ^short =
    "Special handling during the collection, transport, or storage of the specimen"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* accessionIdentifier only Identifier314e
* type only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subject ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/device-314e"
* subject ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/group-314e"
* subject ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/location-314e"
* subject ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* parent only Reference314e
* parent ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* request only Reference314e
* request ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* collection.collector only Reference314e
* collection.collector ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* collection.collector ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* collection.collected[x] only dateTime314e or Period314e
* collection.duration only Duration314e
* collection.quantity only SimpleQuantity314e
* collection.method only CodeableConcept314e
* collection.bodySite only CodeableConcept314e
* collection.fastingStatus[x] only CodeableConcept314e or Duration314e
* processing.procedure only CodeableConcept314e
* processing.additive only Reference314e
* processing.additive ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/substance-314e"
* processing.time[x] only dateTime314e or Period314e
* container.identifier only Identifier314e
* container.type only CodeableConcept314e
* container.capacity only SimpleQuantity314e
* container.specimenQuantity only SimpleQuantity314e
* container.additive[x] only CodeableConcept314e or Reference314e
* condition only CodeableConcept314e
* note only Annotation314e
* meta only Meta314e
