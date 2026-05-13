Extension: QuantityValueString
Id: quantity-valueString
Title: "Quantity Value String"
Description: """A string/ textual representation associated with Quantity.value.

In scenarios where the ‘value’ of Quantity datatype cannot be expressed as a numerical value 
even though a distinct unit can be represented in the ‘unit’ element, this 
extension SHALL be used on the value field of Quantity.

The presence of this extension does not alter the numeric semantics
of Quantity.value. 

Applications performing calculations SHALL use the actual decimal
value of Quantity.value rather than the string carried in this extension.

Applications should preserve synchronization between Quantity.value
and this extension if either representation is modified.
"""
Context: Quantity.value
* ^url = "http://314e.com/fhir/StructureDefinition/quantity-valueString"
* ^purpose = """Allows representation of a quantity value as string.

Supports preservation of the original source representation of a quantity value for 
display or audit purposes."""
* value[x] only string
* valueString 1..1
* valueString ^short = "Original textual representation of Quantity.value"
* valueString ^definition = """
Carries the original source lexical representation of only the quantity value.
"""