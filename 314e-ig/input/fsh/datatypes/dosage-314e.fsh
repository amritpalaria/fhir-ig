Profile: Dosage314e
Parent: Dosage
Id: dosage-314e
Title: "314e Dosage"
Description: """
314e profile of the FHIR Dosage datatype.

This profile constrains CodeableConcept, Timing, and quantity-related
sub-elements to their corresponding 314e datatype profiles.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/dosage-314e"
* ^status = #active

* additionalInstruction only CodeableConcept314e
* timing only Timing314e
* asNeededCodeableConcept only CodeableConcept314e
* site only CodeableConcept314e
* route only CodeableConcept314e
* method only CodeableConcept314e
* doseAndRate.type only CodeableConcept314e
* doseAndRate.doseRange only Range314e
* doseAndRate.doseQuantity only SimpleQuantity314e
* doseAndRate.rateRatio only Ratio314e
* doseAndRate.rateRange only Range314e
* doseAndRate.rateQuantity only SimpleQuantity314e
* maxDosePerPeriod only Ratio314e
* maxDosePerAdministration only SimpleQuantity314e
* maxDosePerLifetime only SimpleQuantity314e
