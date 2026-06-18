# Quantity Quantity String - 314e FHIR Implementation Guide v1.0.0

## Extension: Quantity Quantity String 

A string representation of Quantity.

This extension preserves the original lexical representation of a quantity. Additionally, in scenarios where FHIR requires Quantity datatype but the source data cannot be represented as distinct value and unit, this extension SHALL be utilized.

This extension is intended for preservation of textual rendering and does not replace the computable Quantity elements.

Applications should preserve synchronization between the computable Quantity content and this extension if either representation is modified.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Quantity](StructureDefinition-quantity-314e.md) and [314e SimpleQuantity](StructureDefinition-simplequantity-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/quantity-quantityString)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-quantity-quantityString.csv), [Excel](../StructureDefinition-quantity-quantityString.xlsx), [Schematron](../StructureDefinition-quantity-quantityString.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "quantity-quantityString",
  "url" : "http://314e.com/fhir/StructureDefinition/quantity-quantityString",
  "version" : "1.0.0",
  "name" : "QuantityQuantityString",
  "title" : "Quantity Quantity String",
  "status" : "draft",
  "date" : "2026-06-18T16:14:31+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A string representation of Quantity. \n\nThis extension preserves the original lexical representation of a quantity. \nAdditionally, in scenarios where FHIR requires Quantity datatype but the source data \ncannot be represented as distinct value and unit, this extension \nSHALL be utilized.\n\nThis extension is intended for preservation of textual rendering and does not replace \nthe computable Quantity elements.\n\nApplications should preserve synchronization between the computable Quantity content\nand this extension if either representation is modified.",
  "purpose" : "Allows textual representation of a quantity where otherwise not possible to \nrepresent as a string and the original quantity string cannot be separated into distinct value \nand unit.\n\nSupports preservation of a display-oriented or source-oriented\nrepresentation of a quantity.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Quantity"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Quantity Quantity String",
      "definition" : "A string representation of Quantity. \n\nThis extension preserves the original lexical representation of a quantity. \nAdditionally, in scenarios where FHIR requires Quantity datatype but the source data \ncannot be represented as distinct value and unit, this extension \nSHALL be utilized.\n\nThis extension is intended for preservation of textual rendering and does not replace \nthe computable Quantity elements.\n\nApplications should preserve synchronization between the computable Quantity content\nand this extension if either representation is modified."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/quantity-quantityString"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Original textual quantity representation",
      "definition" : "Carries the original source lexical representation of the full quantity, incuding value and unit.",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
