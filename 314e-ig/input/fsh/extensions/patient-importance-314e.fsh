Extension: PatientImportance314e
Id: patient-importance-314e
Title: "314e Patient Importance"
Description: """
The importance of the patient (e.g. VIP). When considering using this extension you should also consider if using any or all of the following is also appropriate:

* `Encounter.specialCourtesy` which provides a simple flag indicating additional `benefits` that the patient might be entitled to during a visit *(e.g. special room types)*.
* `Resource.meta.security` with codes such as `VIP`. These might be used by actual data level security controls within the system, potentially requiring specific user permissions to access the data.
"""

Context: Patient

* ^url = "http://314e.com/fhir/StructureDefinition/patient-importance-314e"
* ^status = #active

* value[x] only CodeableConcept314e
* valueCodeableConcept 1..1
