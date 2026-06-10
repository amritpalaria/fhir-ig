Extension: Cosigner
Id: cosigner
Title: "Cosigner"
Description: """
Identifies an individual who reviewed, verified, or co-signed the associated
clinical document, note, order, or healthcare record.
"""

Context: DomainResource

* ^url = "http://314e.com/fhir/StructureDefinition/cosigner"
* ^status = #active

* value[x] only Reference314e
* valueReference 1..1

* valueReference ^short = "Individual who co-signed the record"
* valueReference ^definition = """
Reference to the practitioner who reviewed, verified, or co-signed
the associated clinical document, note, order, or healthcare record.
"""
