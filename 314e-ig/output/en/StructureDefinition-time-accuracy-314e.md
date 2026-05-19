# 314e Time Accuracy - 314e FHIR Implementation Guide v1.0.0

## Extension: 314e Time Accuracy 

Specifies the accuracy or exactness of a time value when only some part of the known/ usable precision of time can be verified as accurate or exact and the rest is estimated or approximate.

This extension is intended to explicitly communicate the accuracy of a time value.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e time](StructureDefinition-time-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/time-accuracy-314e)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-time-accuracy-314e.csv), [Excel](../StructureDefinition-time-accuracy-314e.xlsx), [Schematron](../StructureDefinition-time-accuracy-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "time-accuracy-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/time-accuracy-314e",
  "version" : "1.0.0",
  "name" : "TimeAccuracy314e",
  "title" : "314e Time Accuracy",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-19T06:46:39+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Specifies the accuracy or exactness of a time value when only some part of \nthe known/ usable precision of time can be verified as accurate or exact and the rest is estimated or approximate.\n\nThis extension is intended to explicitly communicate the accuracy\nof a time value.",
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
      "short" : "314e Time Accuracy",
      "definition" : "Specifies the accuracy or exactness of a time value when only some part of \nthe known/ usable precision of time can be verified as accurate or exact and the rest is estimated or approximate.\n\nThis extension is intended to explicitly communicate the accuracy\nof a time value."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/time-accuracy-314e"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Precision level of the exact/ accurate part of time value",
      "definition" : "Indicates the precision level that is verified as clinically exact or accurate.",
      "min" : 1,
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://314e.com/fhir/ValueSet/time-accuracy-units"
      }
    }]
  }
}

```
