Extension: PatientEmploymentStatus
Id: patient-employmentStatus
Title: "Patient Employment Status"
Description: """
Applied at the root level of the Patient resource. Stores the patient's
current employment status or occupation.

This is a custom field added to the Patient record to capture what the
patient does for work or their current employment situation.
"""

Context: Patient

* ^url = "http://314e.com/fhir/StructureDefinition/patient-employmentStatus"
* ^status = #active

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1

* valueCodeableConcept ^short = "Patient's current employment status"
* valueCodeableConcept ^definition = """
Represents the patient's current employment status or occupational
category as recorded in the source system.
"""
