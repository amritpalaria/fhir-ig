Profile: SimpleQuantity314e
Parent: SimpleQuantity
Id: simplequantity-314e
Title: "314e SimpleQuantity"
Description: """
A 314e-constrained SimpleQuantity datatype supporting
precision metadata and alternate textual representations.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/simplequantity-314e"

// Root-level extension
* extension contains QuantityQuantityString named quantityString 0..1

* extension[quantityString] ^short =
    "Original or display-oriented textual representation of the full quantity"

* extension[quantityString] ^definition = """
Provides the original, source-oriented, or display-oriented textual
representation of the complete quantity, including value and unit.
"""

// Primitive decimal extensions
* value.extension contains
    http://hl7.org/fhir/StructureDefinition/quantity-precision named precision 0..1 and
    QuantityValueString named valueString 0..1

* value.extension[precision] ^short =
    "Explicit precision of the numeric quantity value"

* value.extension[valueString] ^short =
    "Original or display-oriented textual representation of the numeric value"

// comparator prohibited by SimpleQuantity semantics
* comparator 0..0
