Extension: ClaimResponseReviewAction314e
Id: claimresponse-reviewAction-314e
Title: "314e ClaimResponse Review Action"
Description: """
The details of the review action that is necessary for the authorization.
"""

Context: ClaimResponse.item.adjudication

* ^url = "http://314e.com/fhir/StructureDefinition/claimresponse-reviewAction-314e"
* ^status = #active

* extension contains
    code 0..1 and
    number 0..1 and
    reasonCode 0..* and
    secondSurgicalOpinionFlag 0..1

* extension[code] ^short = "Healthcare Services Outcome"
* extension[code] ^definition = "The code describing the result of the review."
* extension[code].value[x] only CodeableConcept314e
* extension[code].valueCodeableConcept 1..1

* extension[number] ^short = "Item Level Review Number"
* extension[number].value[x] only string
* extension[number].valueString 0..1

* extension[reasonCode] ^short = "Explanation of the review denial or partial approval"
* extension[reasonCode].value[x] only CodeableConcept314e
* extension[reasonCode].valueCodeableConcept 0..1

* extension[secondSurgicalOpinionFlag] ^short = "Whether a second surgical opinion is need for approval"
* extension[secondSurgicalOpinionFlag].value[x] only boolean
* extension[secondSurgicalOpinionFlag].valueBoolean 0..1
