# 314e decimal - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e decimal 

 
314e profile of the FHIR decimal primitive datatype. 
Supports explicit precision representation using: 
http://hl7.org/fhir/StructureDefinition/quantity-precision 
This extension specifies the intended or known precision of the decimal value independently of the actual lexical form. 

**Usages:**

* Use this Primitive Type Profile: [314e Duration](StructureDefinition-duration-314e.md), [314e Quantity](StructureDefinition-quantity-314e.md), [314e SampledData](StructureDefinition-sampleddata-314e.md), [314e SimpleQuantity](StructureDefinition-simplequantity-314e.md) and [314e Timing](StructureDefinition-timing-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/decimal-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-decimal-314e.csv), [Excel](../StructureDefinition-decimal-314e.xlsx), [Schematron](../StructureDefinition-decimal-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "decimal-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/decimal-314e",
  "version" : "1.0.0",
  "name" : "decimal314e",
  "title" : "314e decimal",
  "status" : "active",
  "date" : "2026-05-25T14:41:34+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR decimal primitive datatype.\n\nSupports explicit precision representation using:\n\nhttp://hl7.org/fhir/StructureDefinition/quantity-precision\n\nThis extension specifies the intended or known precision\nof the decimal value independently of the actual lexical form.",
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "decimal",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/decimal",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "decimal",
      "path" : "decimal"
    },
    {
      "id" : "decimal.extension",
      "path" : "decimal.extension",
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
      "id" : "decimal.extension:quantityPrecision",
      "path" : "decimal.extension",
      "sliceName" : "quantityPrecision",
      "short" : "Explicit precision of the decimal value",
      "definition" : "Explicit precision of the number.\n\nThis represents the intended or known number\nof significant decimal places irrespective\nof how many are explicitly represented\nin the decimal value itself.",
      "comment" : "Applications performing calculations SHALL ensure\nthat this extension is updated appropriately\nif the numeric value changes.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/quantity-precision"]
      }]
    }]
  }
}

```
