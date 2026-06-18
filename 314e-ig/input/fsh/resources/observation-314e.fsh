Profile: Observation314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-simple-observation
Id: observation-314e
Title: "314e Observation"
Description: """
314e-constrained Observation profile derived from QI-Core Simple Observation.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/observation-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// CATEGORY
// ======================================================

* category 1..*

* category ^short =
    "Operational procedure/service categories"

* category ^definition = """
Broad and optional subcategory classifications used
for workflow, routing, analytics, and operational
grouping of Observation resources.
"""

* category contains broadCategory 1..1
* category[broadCategory] from ProcedureCategoryBroad314eVS (required)

* category[broadCategory] ^short =
    "Required broad procedure/service category"

* category[broadCategory] ^definition = """
Top-level operational classification of the
observation.
"""

* category contains subCategory 0..1
* category[subCategory] from ProcedureCategorySubcategory314eVS (required)

* category[subCategory] ^short =
    "Optional detailed subcategory"

* category[subCategory] ^definition = """
More granular operational sub-classification of the
observation.
"""

* category only CodeableConcept314e

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* basedOn only Reference314e
* partOf only Reference314e
* code only CodeableConcept314e
* subject only Reference314e
* focus only Reference314e
* encounter only Reference314e
* effective[x] only dateTime314e or Period314e or Timing314e or instant314e
* issued only instant314e
* performer only Reference314e
* dataAbsentReason only CodeableConcept314e
* interpretation only CodeableConcept314e
* note only Annotation314e
* bodySite only CodeableConcept314e
* method only CodeableConcept314e
* specimen only Reference314e
* device only Reference314e
* referenceRange.low only SimpleQuantity314e
* referenceRange.high only SimpleQuantity314e
* referenceRange.type only CodeableConcept314e
* referenceRange.appliesTo only CodeableConcept314e
* referenceRange.age only Range314e
* hasMember only Reference314e
* derivedFrom only Reference314e
* component.code only CodeableConcept314e
* component.dataAbsentReason only CodeableConcept314e
* component.interpretation only CodeableConcept314e
* component.referenceRange.low only SimpleQuantity314e
* component.referenceRange.high only SimpleQuantity314e
* component.referenceRange.type only CodeableConcept314e
* component.referenceRange.appliesTo only CodeableConcept314e
* component.referenceRange.age only Range314e
* meta only Meta314e
