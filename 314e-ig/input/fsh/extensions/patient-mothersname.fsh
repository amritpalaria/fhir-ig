Extension: PatientMothersName
Id: patient-mothersName
Title: "Patient Mother's Name"
Description: """
Applied directly at the root level of the Patient resource to store
the mother's name of the patient.
"""

Context: Patient

* ^url = "http://314e.com/fhir/StructureDefinition/patient-mothersName"
* ^status = #active

* value[x] only HumanName314e
* valueHumanName 1..1

* valueHumanName ^short = "Mother's name of the patient"
* valueHumanName ^definition = """
The name of the patient's mother as recorded in the source system.
"""
