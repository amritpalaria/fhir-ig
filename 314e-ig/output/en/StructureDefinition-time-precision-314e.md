# 314e Time Precision - 314e FHIR Implementation Guide v1.0.0

## Extension: 314e Time Precision 

Specifies the meaningful/ usable precision of a time value when the datatype syntactically permits greater precision than is actually known or clinically usable.

This extension is intended to explicitly communicate the usable precision of a time value.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e time](StructureDefinition-time-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/time-precision-314e)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-time-precision-314e.csv), [Excel](../StructureDefinition-time-precision-314e.xlsx), [Schematron](../StructureDefinition-time-precision-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "time-precision-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/time-precision-314e",
  "version" : "1.0.0",
  "name" : "TimePrecision314e",
  "title" : "314e Time Precision",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-26T12:06:33+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Specifies the meaningful/ usable precision of a time value when the \ndatatype syntactically permits greater precision than is actually known or clinically usable.\n\nThis extension is intended to explicitly communicate the usable precision\nof a time value.",
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
    "expression" : "time"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Usable precision of a time value",
      "definition" : "This extension communicates the meaningful and usable precision of a time value\nwhen the datatype syntactically allows more precision than is actually known\nor appropriate to use.\n\nThis extension SHALL NOT alter the actual time value itself,\nbut instead clarifies the degree of precision\nassociated with the recorded value."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/time-precision-314e"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Known/ usable precision of the time value",
      "definition" : "Indicates the precision that is operationally\nor semantically meaningful/ usable for the associated time value.",
      "min" : 1,
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://314e.com/fhir/ValueSet/time-precision-units"
      }
    }]
  }
}

```
