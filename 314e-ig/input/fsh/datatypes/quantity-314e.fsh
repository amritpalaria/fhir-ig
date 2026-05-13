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

// Allow extensions on Quantity.value primitive
* value.extension contains
    http://hl7.org/fhir/StructureDefinition/quantity-precision named precision 0..1 and
    QuantityValueString named valueString 0..1
