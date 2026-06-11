Profile: CarePlan314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-careplan
Id: careplan-314e
Title: "314e CarePlan"
Description: """
314e-constrained CarePlan profile derived from QI-Core CarePlan.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS — ROOT
// ======================================================

* extension contains
    CarePlanTargetDateTime named targetDateTime 0..1

* extension[targetDateTime] ^short =
    "Target date-time for care plan completion or review"

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e EXTENSIONS — ACTIVITY
// ======================================================

* activity.extension contains
    CarePlanActivityTargetDateTime named activityTargetDateTime 0..1

* activity.extension[activityTargetDateTime] ^short =
    "Target date-time for completing this care plan activity"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* basedOn only Reference314e
* replaces only Reference314e
* partOf only Reference314e
* category only CodeableConcept314e
* subject only Reference314e
* encounter only Reference314e
* period only Period314e
* author only Reference314e
* contributor only Reference314e
* careTeam only Reference314e
* addresses only Reference314e
* supportingInfo only Reference314e
* goal only Reference314e
* activity.outcomeCodeableConcept only CodeableConcept314e
* activity.outcomeReference only Reference314e
* activity.progress only Annotation314e
* activity.reference only Reference314e
* activity.detail.kind only code
* activity.detail.instantiatesCanonical only canonical
* activity.detail.code only CodeableConcept314e
* activity.detail.reasonCode only CodeableConcept314e
* activity.detail.reasonReference only Reference314e
* activity.detail.goal only Reference314e
* activity.detail.statusReason only CodeableConcept314e
* activity.detail.location only Reference314e
* activity.detail.performer only Reference314e
* activity.detail.product[x] only CodeableConcept314e or Reference314e
* activity.detail.dailyAmount only SimpleQuantity314e
* activity.detail.quantity only SimpleQuantity314e
* activity.detail.scheduled[x] only Timing314e or Period314e or string
* note only Annotation314e
* meta only Meta314e
