Extension: ConditionAssertedDate314e
Id: condition-assertedDate-314e
Title: "314e Condition Asserted Date"
Description: """
When the asserter identified the allergy, intolerance, condition, problem, or diagnosis or other event, situation, issue, or clinical concept that may have risen to a level of or remains a concern.  For example, when the patient experiences chest pain, the asserted date represents when the clinician began following the chest pain - not when the patient experienced the chest pain.  Asserted date supports the recognition that information is not always entered in a system immediately.  Assertion and recording are different acts, so asserted date and recorded date are semantically different. However, they may be the same date and close in time.  If this difference is significant for your use case, assertion date may be useful.
"""

Context: Condition

* ^url = "http://314e.com/fhir/StructureDefinition/condition-assertedDate-314e"
* ^status = #active

* value[x] only dateTime314e
* valueDateTime 1..1
