# Quantity Value String - 314e FHIR Implementation Guide v1.0.0

## Extension: Quantity Value String 

A string/ textual representation associated with Quantity.value.

In scenarios where the ‘value’ of Quantity datatype cannot be expressed as a numerical value even though a distinct unit can be represented in the ‘unit’ element, this extension SHALL be used on the value field of Quantity.

The presence of this extension does not alter the numeric semantics of Quantity.value.

Applications performing calculations SHALL use the actual decimal value of Quantity.value rather than the string carried in this extension.

Applications should preserve synchronization between Quantity.value and this extension if either representation is modified.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Quantity](StructureDefinition-quantity-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/quantity-valueString)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-quantity-valueString.csv), [Excel](../StructureDefinition-quantity-valueString.xlsx), [Schematron](../StructureDefinition-quantity-valueString.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "quantity-valueString",
  "url" : "http://314e.com/fhir/StructureDefinition/quantity-valueString",
  "version" : "1.0.0",
  "name" : "QuantityValueString",
  "title" : "Quantity Value String",
  "status" : "draft",
  "date" : "2026-05-13T15:29:14+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A string/ textual representation associated with Quantity.value.\n\nIn scenarios where the ‘value’ of Quantity datatype cannot be expressed as a numerical value \neven though a distinct unit can be represented in the ‘unit’ element, this \nextension SHALL be used on the value field of Quantity.\n\nThe presence of this extension does not alter the numeric semantics\nof Quantity.value. \n\nApplications performing calculations SHALL use the actual decimal\nvalue of Quantity.value rather than the string carried in this extension.\n\nApplications should preserve synchronization between Quantity.value\nand this extension if either representation is modified.",
  "purpose" : "Allows representation of a quantity value as string.\n\nSupports preservation of the original source representation of a quantity value for \ndisplay or audit purposes.",
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
    "expression" : "Quantity.value"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Quantity Value String",
      "definition" : "A string/ textual representation associated with Quantity.value.\n\nIn scenarios where the ‘value’ of Quantity datatype cannot be expressed as a numerical value \neven though a distinct unit can be represented in the ‘unit’ element, this \nextension SHALL be used on the value field of Quantity.\n\nThe presence of this extension does not alter the numeric semantics\nof Quantity.value. \n\nApplications performing calculations SHALL use the actual decimal\nvalue of Quantity.value rather than the string carried in this extension.\n\nApplications should preserve synchronization between Quantity.value\nand this extension if either representation is modified."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/quantity-valueString"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Original textual representation of Quantity.value",
      "definition" : "Carries the original source lexical representation of only the quantity value.",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
