Profile: MolecularSequence314e
Parent: MolecularSequence
Id: molecularsequence-314e
Title: "314e MolecularSequence"
Description: """
314e-constrained MolecularSequence profile derived from FHIR R4 MolecularSequence.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* patient only Reference314e
* patient ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* specimen only Reference314e
* specimen ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* device only Reference314e
* device ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/device-314e"
* performer only Reference314e
* performer ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* quantity only Quantity314e
* pointer only Reference314e
* pointer ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* referenceSeq.chromosome only CodeableConcept314e
* referenceSeq.referenceSeqId only CodeableConcept314e
* quality.standardSequence only CodeableConcept314e
* quality.method only CodeableConcept314e
* quality.score only Quantity314e
* quality.truthTP only decimal314e
* quality.queryTP only decimal314e
* quality.queryFP only decimal314e
* quality.truthFN only decimal314e
* quality.precision only decimal314e
* quality.recall only decimal314e
* quality.fScore only decimal314e
* structureVariant.variantType only CodeableConcept314e
* meta only Meta314e
