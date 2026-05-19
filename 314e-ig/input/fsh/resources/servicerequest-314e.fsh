Profile: ServiceRequest314e
Parent: QICoreServiceRequest
Id: servicerequest-314e
Title: "314e ServiceRequest"
Description: """
A 314e-constrained ServiceRequest profile derived from
QI-Core ServiceRequest.

This profile requires classification of the requested service
using standardized high-level service categories and uses
314e datatype profiles where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"

* ^purpose = """
Provides a standardized and semantically categorized ServiceRequest
profile for clinical workflows.
"""

// ======================================================
// INTERNAL IDENTIFIER SLICE
// ======================================================
* identifier 0..*

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open

* identifier contains internalIdentifier 0..*
* identifier[internalIdentifier] only Identifier314e

* identifier[internalIdentifier] ^short =
    "Customer-specific internal identifier whose system SHALL follow the mandated 314e naming convention"

* identifier[internalIdentifier] ^definition = """
Customer-specific or internally defined identifier
used within local workflows, source systems,
or operational environments.

Identifier.system SHALL follow the naming convention:

[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier

Example of Identifier.system for internal identifier:
acme-cerner-ServiceRequest-imaging-identifier-AccessionNumber-InternalIdentifier
"""

* identifier[internalIdentifier].system ^example[0].label =
    "Internal ServiceRequest accession identifier system"

* identifier[internalIdentifier].system ^example[0].valueUri =
    "acme-cerner-ServiceRequest-imaging-identifier-AccessionNumber-InternalIdentifier"

* identifier only Identifier314e

// ======================================================
// CATEGORY
// ======================================================

// One required broad operational category
* category 1..*

* category ^short =
    "Operational procedure/service categories"

* category ^definition = """
Broad and optional subcategory classifications used
for workflow, routing, analytics, and operational
grouping of ServiceRequest resources.
"""

// Broad category slice
* category contains broadCategory 1..1
* category[broadCategory] from ProcedureCategoryBroad314eVS (required)

* category[broadCategory] ^short =
    "Required broad procedure/service category"

* category[broadCategory] ^definition = """
Top-level operational classification of the requested
service or procedure.
"""

// Optional subcategory slice
* category contains subCategory 0..1
* category[subCategory] from ProcedureCategorySubcategory314eVS (required)

* category[subCategory] ^short =
    "Optional detailed subcategory"

* category[subCategory] ^definition = """
More granular operational sub-classification of the
requested service or procedure.
"""

* category only CodeableConcept314e

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

// References
* subject only Reference314e
* encounter only Reference314e
* requester only Reference314e
* performer only Reference314e
* insurance only Reference314e
* specimen only Reference314e
* supportingInfo only Reference314e
* basedOn only Reference314e
* replaces only Reference314e
* reasonReference only Reference314e

// Identifiers
* identifier only Identifier314e
* requisition only Identifier314e

// CodeableConcepts
* code only CodeableConcept314e
* orderDetail only CodeableConcept314e
* reasonCode only CodeableConcept314e
* bodySite only CodeableConcept314e
* performerType only CodeableConcept314e
* asNeeded[x] only 
    boolean or
    CodeableConcept314e

// dateTime
* authoredOn only dateTime314e

* occurrence[x] only 
    dateTime314e or
    Period314e or
    Timing314e

// Quantity / Range / Ratio
* quantity[x] only 
    Quantity314e or
    Range314e or
    Ratio314e

// Annotation
* note only Annotation314e



