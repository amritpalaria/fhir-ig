# 314e SimpleQuantity - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e SimpleQuantity 

 
A 314e-constrained SimpleQuantity datatype supporting precision metadata and alternate textual representations. 

**Usages:**

* Use this DataType Profile: [314e Range](StructureDefinition-range-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/simplequantity-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-simplequantity-314e.csv), [Excel](../StructureDefinition-simplequantity-314e.xlsx), [Schematron](../StructureDefinition-simplequantity-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "simplequantity-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/simplequantity-314e",
  "version" : "1.0.0",
  "name" : "SimpleQuantity314e",
  "title" : "314e SimpleQuantity",
  "status" : "draft",
  "date" : "2026-05-16T16:45:26+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A 314e-constrained SimpleQuantity datatype supporting\nprecision metadata and alternate textual representations.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/SimpleQuantity",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Quantity.extension:quantityString",
      "path" : "Quantity.extension",
      "sliceName" : "quantityString",
      "short" : "Original or display-oriented textual representation of the full quantity",
      "definition" : "Provides the original, source-oriented, or display-oriented textual\nrepresentation of the complete quantity, including value and unit.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/quantity-quantityString"]
      }]
    },
    {
      "id" : "Quantity.value",
      "path" : "Quantity.value",
      "short" : "Numerical value with explicit precision support",
      "definition" : "The value of the measured amount.\n\nWhenever precision is needed, precision metadata SHALL \nbe explicitly represented using the quantityPrecision extension on the 314e decimal profile. \nThe quantityPrecision extension represents the number of significant decimal places intended\nfor the quantity value, irrespective of how many decimal places\nare explicitly present in the decimal representation itself.\nThe presence of this extension does not alter the underlying\nnumeric value or computation semantics.\n\nThe original textual representation of value may additionally\nbe preserved using the valueString extension.",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "Quantity.value.extension:valueString",
      "path" : "Quantity.value.extension",
      "sliceName" : "valueString",
      "short" : "Original or display-oriented textual representation of the numeric value",
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
