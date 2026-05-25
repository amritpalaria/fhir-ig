# 314e Duration - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Duration 

 
314e profile of the FHIR Duration datatype. 
Derived from FHIR Duration and incorporates 314e Quantity datatype behavior including: 
* quantity precision support
* quantity string support
* value string support
 

**Usages:**

* Use this DataType Profile: [314e Timing](StructureDefinition-timing-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/duration-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-duration-314e.csv), [Excel](../StructureDefinition-duration-314e.xlsx), [Schematron](../StructureDefinition-duration-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "duration-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/duration-314e",
  "version" : "1.0.0",
  "name" : "Duration314e",
  "title" : "314e Duration",
  "status" : "active",
  "date" : "2026-05-25T12:34:12+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR Duration datatype.\n\nDerived from FHIR Duration and incorporates\n314e Quantity datatype behavior including:\n\n- quantity precision support\n- quantity string support\n- value string support",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Duration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Duration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Duration",
      "path" : "Duration"
    },
    {
      "id" : "Duration.extension:quantityString",
      "path" : "Duration.extension",
      "sliceName" : "quantityString",
      "short" : "Original textual representation of the duration",
      "definition" : "Original textual representation of the duration\nas received from the source system.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/quantity-quantityString"]
      }]
    },
    {
      "id" : "Duration.value",
      "path" : "Duration.value",
      "short" : "Numerical value with explicit precision support",
      "definition" : "The value of the measured amount.\n\nWhenever precision is needed, precision metadata SHALL \nbe explicitly represented using the quantityPrecision extension on the 314e decimal profile. \nThe quantityPrecision extension represents the number of significant decimal places intended\nfor the duration value, irrespective of how many decimal places\nare explicitly present in the decimal representation itself.\nThe presence of this extension does not alter the underlying\nnumeric value or computation semantics.\n\nThe original textual representation of the full duration quantity may \nbe preserved using the valueString extension.\n\nThe original textual representation of just the duration value may additionally\nbe preserved using the valueString extension.",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "Duration.value.extension:valueString",
      "path" : "Duration.value.extension",
      "sliceName" : "valueString",
      "short" : "Original textual representation of the duration value",
      "definition" : "Original textual representation of the duration value\nas received from the source system.",
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
