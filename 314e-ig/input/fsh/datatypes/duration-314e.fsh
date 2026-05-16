Profile: Duration314e
Parent: Duration
Id: duration-314e
Title: "314e Duration"
Description: """
314e profile of the FHIR Duration datatype.

Derived from FHIR Duration and incorporates
314e Quantity datatype behavior including:

- quantity precision support
- quantity string support
- value string support
"""

* ^status = #active

// ======================================================
// VALUE
// ======================================================

* value only Decimal314e

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

The original textual representation of value may additionally
be preserved using the valueString extension.
"""

* value.extension contains
    QuantityQuantityString named quantityString 0..1

* value.extension[quantityString] ^short =
    "Original textual representation of the quantity value"

* value.extension[quantityString] ^definition = """
Original textual representation of the duration quantity value
as received from the source system.
"""

// ======================================================
// ROOT EXTENSION
// ======================================================

* extension contains
    QuantityValueString named valueString 0..1

* extension[valueString] ^short =
    "Original textual representation of the duration"

* extension[valueString] ^definition = """
Original textual representation of the duration
as received from the source system.
"""

