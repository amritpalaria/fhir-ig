# 314e Quantity - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Quantity 

 
An extended Quantity datatype supporting precision metadata and alternate textual representations. 
This profile SHALL be used so that the data can be faithfully represented in the following scenarios:
 
1. The quantity value, such as a vital sign reading or a lab result value, is limited to a defined number of digits after the decimal in the source and this precision needs to be recorded with the value.

1. The display-oriented or source-oriented textual representation of a quantity needs to be recorded, either in addition to the computable elements or because the original representation cannot be separated into distinct value and unit.

1. The original source representation of a quantity value needs to be preserved, either because the original representation of value cannot be converted to numeric or for display or audit purposes.
 

**Usages:**

* Use this DataType Profile: [314e Ratio](StructureDefinition-ratio-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/quantity-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-quantity-314e.csv), [Excel](../StructureDefinition-quantity-314e.xlsx), [Schematron](../StructureDefinition-quantity-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "quantity-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/quantity-314e",
  "version" : "1.0.0",
  "name" : "Quantity314e",
  "title" : "314e Quantity",
  "status" : "draft",
  "date" : "2026-05-16T12:58:39+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "An extended Quantity datatype supporting precision metadata and alternate textual representations.\n\nThis profile SHALL be used so that the data can be faithfully represented in the following scenarios:<br/>\n1. The quantity value, such as a vital sign reading or a lab result value, is limited to a defined number of digits \nafter the decimal in the source and this precision needs to be recorded with the value.<br/>\n2. The display-oriented or source-oriented textual representation of a quantity needs to be recorded, either in addition \nto the computable elements or because the original representation cannot be separated into distinct value and unit.<br/>\n3. The original source representation of a quantity value needs to be preserved, either because the original \nrepresentation of value cannot be converted to numeric or for display or audit purposes.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Quantity",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Quantity",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Quantity",
      "path" : "Quantity"
    },
    {
      "id" : "Quantity.extension:quantityString",
      "path" : "Quantity.extension",
      "sliceName" : "quantityString",
      "short" : "Original or display-oriented textual representation of the full quantity",
      "definition" : "Provides the original, source-oriented, or display-oriented textual\nrepresentation of the complete quantity, including value and unit.\n\nThis extension is intended for situations in which:\n- the original quantity representation cannot be cleanly decomposed\n  into computable Quantity elements,\n- the original source representation must be preserved for audit,\n  fidelity, or display purposes,\n- or the display representation differs from the computable form.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/quantity-quantityString"]
      }]
    },
    {
      "id" : "Quantity.value.extension",
      "path" : "Quantity.value.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Quantity.value.extension:precision",
      "path" : "Quantity.value.extension",
      "sliceName" : "precision",
      "short" : "Explicit precision of the numeric quantity value",
      "definition" : "Explicit precision of the numeric quantity value.\n\nThis represents the number of significant decimal places intended\nfor the quantity value, irrespective of how many decimal places\nare explicitly present in the decimal representation itself.\n\nThe presence of this extension does not alter the underlying\nnumeric value or computation semantics.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/quantity-precision"]
      }]
    },
    {
      "id" : "Quantity.value.extension:valueString",
      "path" : "Quantity.value.extension",
      "sliceName" : "valueString",
      "short" : "Original or display-oriented textual representation of the numeric value",
      "definition" : "Provides the original, source-oriented, or display-oriented textual\nrepresentation of the numeric quantity value component.\n\nThis extension may be used when:\n- the original formatting of the numeric value must be preserved,\n- the numeric representation contains significant formatting,\n- the value cannot be faithfully represented as a computable decimal,\n- or the original source representation is needed for display,\n  audit, or traceability purposes.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/quantity-valueString"]
      }]
    }]
  }
}

```
