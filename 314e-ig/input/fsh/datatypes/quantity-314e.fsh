Profile: Quantity314e
Parent: Quantity
Id: quantity-314e
Title: "314e Quantity"
Description: """An extended Quantity datatype supporting precision metadata and alternate textual representations.

This profile SHALL be used so that the data can be faithfully represented in the following scenarios:<br/>
1. The quantity value, such as a vital sign reading or a lab result value, is limited to a defined number of digits 
after the decimal in the source and this precision needs to be recorded with the value.<br/>
2. The display-oriented or source-oriented textual representation of a quantity needs to be recorded, either in addition 
to the computable elements or because the original representation cannot be separated into distinct value and unit.<br/>
3. The original source representation of a quantity value needs to be preserved, either because the original 
representation of value cannot be converted to numeric or for display or audit purposes.
"""

// Allow extension on root Quantity
* extension contains QuantityQuantityString named quantityString 0..1

* extension[quantityString] ^short =
    "Original or display-oriented textual representation of the full quantity"

* extension[quantityString] ^definition = """
Provides the original, source-oriented, or display-oriented textual
representation of the complete quantity, including value and unit.

This extension is intended for situations in which:
- the original quantity representation cannot be cleanly decomposed
  into computable Quantity elements,
- the original source representation must be preserved for audit,
  fidelity, or display purposes,
- or the display representation differs from the computable form.
"""

// Allow extensions on Quantity.value primitive
* value.extension contains
    http://hl7.org/fhir/StructureDefinition/quantity-precision named precision 0..1 and
    QuantityValueString named valueString 0..1

* value.extension[precision] ^short =
    "Explicit precision of the numeric quantity value"

* value.extension[precision] ^definition = """
Explicit precision of the numeric quantity value.

This represents the number of significant decimal places intended
for the quantity value, irrespective of how many decimal places
are explicitly present in the decimal representation itself.

The presence of this extension does not alter the underlying
numeric value or computation semantics.
"""

* value.extension[valueString] ^short =
    "Original or display-oriented textual representation of the numeric value"

* value.extension[valueString] ^definition = """
Provides the original, source-oriented, or display-oriented textual
representation of the numeric quantity value component.

This extension may be used when:
- the original formatting of the numeric value must be preserved,
- the numeric representation contains significant formatting,
- the value cannot be faithfully represented as a computable decimal,
- or the original source representation is needed for display,
  audit, or traceability purposes.
"""
