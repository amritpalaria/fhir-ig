Extension: PatientBirthTime314e
Id: patient-birthTime-314e
Title: "314e Patient Birth Time"
Description: """
The time of day that the Patient/Person/RelatedPerson/Practitioner was born. This includes the date to ensure that the timezone information can be communicated effectively.
"""

Context: Patient.birthDate, Person.birthDate, RelatedPerson.birthDate, Practitioner.birthDate

* ^url = "http://314e.com/fhir/StructureDefinition/patient-birthTime-314e"
* ^status = #active

* value[x] only dateTime314e
* valueDateTime 1..1
