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

// Use 314e Reference profile where applicable
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

// Use 314e Annotation profile
* note only Annotation314e
