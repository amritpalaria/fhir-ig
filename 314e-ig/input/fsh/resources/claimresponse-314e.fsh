Profile: ClaimResponse314e
Parent: ClaimResponse
Id: claimresponse-314e
Title: "314e ClaimResponse"
Description: """
314e-constrained ClaimResponse profile derived from FHIR R4 ClaimResponse.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/claimresponse-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* item.adjudication.extension contains
    ClaimResponseReviewAction314e named reviewAction 0..1

* item.adjudication.extension[reviewAction] ^short =
    "Details of the review action necessary for the authorization"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* meta only Meta314e
