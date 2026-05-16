Profile: decimal314e
Parent: decimal
Id: decimal-314e
Title: "314e decimal"
Description: """
314e profile of the FHIR decimal primitive datatype.

Supports explicit precision representation using:

http://hl7.org/fhir/StructureDefinition/quantity-precision

This extension specifies the intended or known precision
of the decimal value independently of the actual lexical form.
"""

* ^status = #active

// ======================================================
// PRECISION EXTENSION
// ======================================================

* extension contains
    http://hl7.org/fhir/StructureDefinition/quantity-precision named quantityPrecision 0..1

* extension[quantityPrecision] ^short =
    "Explicit precision of the decimal value"

* extension[quantityPrecision] ^definition = """
Explicit precision of the number.

This represents the intended or known number
of significant decimal places irrespective
of how many are explicitly represented
in the decimal value itself.
"""

* extension[quantityPrecision] ^comment = """
Applications performing calculations SHALL ensure
that this extension is updated appropriately
if the numeric value changes.
"""

