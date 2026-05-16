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

// Require category
* category 1..*

* category from ServiceRequestCategory314eVS (required)

* category ^short =
    "High-level category classification for the requested service"

* category ^definition = """
Categorizes the requested service into a standardized
high-level clinical service domain.
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
