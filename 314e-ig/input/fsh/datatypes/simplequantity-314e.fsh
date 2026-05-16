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
* value only decimal314e

* value ^short =
    "Numerical value with explicit precision support"
    
* value ^definition = """
The value of the measured amount.

Whenever precision is needed, precision metadata SHALL 
be explicitly represented using the quantityPrecision extension on the 314e decimal profile. 
The quantityPrecision extension represents the number of significant decimal places intended
for the quantity value, irrespective of how many decimal places
are explicitly present in the decimal representation itself.
The presence of this extension does not alter the underlying
numeric value or computation semantics.

The original textual representation of the full quantity may 
be preserved using the valueString extension.

The original textual representation of just the quantity value may additionally
be preserved using the valueString extension.
"""

* value.extension contains
    QuantityValueString named valueString 0..1

* value.extension[valueString] ^short =
    "Original or display-oriented textual representation of the value"

* value.extension[valueString] ^definition = """
Original textual representation of the quantity value
as received from the source system.
"""

// comparator prohibited by SimpleQuantity semantics
* comparator 0..0
