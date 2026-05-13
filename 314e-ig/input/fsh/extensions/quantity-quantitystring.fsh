Extension: QuantityQuantityString
Id: quantity-quantityString
Title: "Quantity Quantity String"
Description: """A string representation of Quantity. 

This extension preserves the original lexical representation of a quantity. 
Additionally, in scenarios where FHIR requires Quantity datatype but the source data 
cannot be represented as distinct value and unit, this extension 
SHALL be utilized.

This extension is intended for preservation of textual rendering and does not replace 
the computable Quantity elements.

Applications should preserve synchronization between the computable Quantity content
and this extension if either representation is modified."""
Context: Quantity
* ^url = "http://314e.com/fhir/StructureDefinition/quantity-quantityString"
* ^purpose = """Allows textual representation of a quantity where otherwise not possible to 
represent as a string and the original quantity string cannot be separated into distinct value 
and unit.

Supports preservation of a display-oriented or source-oriented
representation of a quantity."""
* value[x] only string
* valueString 1..1
* valueString ^short = "Original textual quantity representation"
* valueString ^definition = """
Carries the original source lexical representation of the full quantity, incuding value and unit.
"""