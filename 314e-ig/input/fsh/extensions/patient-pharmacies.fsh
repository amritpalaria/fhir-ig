Extension: PatientPharmacies
Id: patient-pharmacies
Title: "Patient Pharmacies"
Description: """
Applied at the root level of the Patient resource. Stores one or more
preferred pharmacies linked to the patient as references to Organization
resources.

A patient can have multiple pharmacies — each gets its own extension
instance. Standard FHIR Patient has no pharmacy preference field.
"""

Context: Patient

* ^url = "http://314e.com/fhir/StructureDefinition/patient-pharmacies"
* ^status = #active

* value[x] only Reference314e
* valueReference 1..1

* valueReference ^short = "Preferred pharmacy linked to the patient"
* valueReference ^definition = """
Reference to an Organization resource representing a preferred pharmacy
for the patient. Multiple preferred pharmacies are represented using
multiple instances of this extension.
"""
