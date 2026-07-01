Extension: IndividualGenderIdentity314e
Id: individual-genderIdentity-314e
Title: "314e Individual Gender Identity"
Description: """
An individual's personal sense of being a man, woman, boy, girl, nonbinary, or something else. This represents an individual's identity, ascertained by asking them what that identity is.
 In the case where the gender identity is communicated by a third party, for example, if a spouse indicates the gender identity of their partner on an intake form, a Provenance resource can be used with a Provenance.target referring to the Patient, with a targetElement extension identifying the gender identity extension as the target element within the Patient resource.  When exchanging this concept, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
"""

Context: Patient, RelatedPerson, Person, Practitioner, PractitionerRole

* ^url = "http://314e.com/fhir/StructureDefinition/individual-genderIdentity-314e"
* ^status = #active

* extension contains
    value 1..1 and
    period 0..1 and
    comment 0..1

* extension[value] ^short = "The individual's gender identity"
* extension[value] ^definition = "An individual's personal sense of being a man, woman, boy, girl, nonbinary, or something else."
* extension[value].value[x] only CodeableConcept314e
* extension[value].valueCodeableConcept 1..1

* extension[period] ^short = "The time period during which the gender identity applies to the individual"
* extension[period] ^definition = "The time period during which the gender identity applies to the individual"
* extension[period].value[x] only Period314e
* extension[period].valuePeriod 1..1

* extension[comment] ^short = "Text to further explain the use of the specified gender identity"
* extension[comment] ^definition = "Text to further explain the use of the specified gender identity"
* extension[comment].value[x] only string
* extension[comment].valueString 1..1
