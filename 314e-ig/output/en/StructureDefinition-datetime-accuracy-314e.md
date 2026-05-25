# 314e Date/Time Accuracy - 314e FHIR Implementation Guide v1.0.0

## Extension: 314e Date/Time Accuracy 

Specifies the accuracy or exactness of a dateTime value when only some part of the known/ usable precision of dateTime can be verified as accurate or exact and the rest is estimated or approximate.

This extension is intended to explicitly communicate the accuracy of a dateTime value, such as full timestamp, year-only, year-month, date-only, or none.

For example:

* A birth year and month may be known exactly but the day might be an estimate
* Only the date may be verifiable as accurate with the time being approximate

Note: All dateTime values in the 314e implementation guide SHALL be stored in UTC.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e dateTime](StructureDefinition-datetime-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/datetime-accuracy-314e)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-datetime-accuracy-314e.csv), [Excel](../StructureDefinition-datetime-accuracy-314e.xlsx), [Schematron](../StructureDefinition-datetime-accuracy-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "datetime-accuracy-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/datetime-accuracy-314e",
  "version" : "1.0.0",
  "name" : "DateTimeAccuracy314e",
  "title" : "314e Date/Time Accuracy",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T15:48:57+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Specifies the accuracy or exactness of a dateTime value when only some part of \nthe known/ usable precision of dateTime can be verified as accurate or exact and the rest is estimated or approximate.\n\nThis extension is intended to explicitly communicate the accuracy\nof a dateTime value, such as full timestamp, year-only, year-month, date-only, or\nnone.\n\nFor example:\n- A birth year and month may be known exactly but the day might be an estimate\n- Only the date may be verifiable as accurate with the time being approximate\n\nNote: All dateTime values in the 314e implementation guide SHALL be stored in UTC.",
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
    "expression" : "dateTime"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "314e Date/Time Accuracy",
      "definition" : "Specifies the accuracy or exactness of a dateTime value when only some part of \nthe known/ usable precision of dateTime can be verified as accurate or exact and the rest is estimated or approximate.\n\nThis extension is intended to explicitly communicate the accuracy\nof a dateTime value, such as full timestamp, year-only, year-month, date-only, or\nnone.\n\nFor example:\n- A birth year and month may be known exactly but the day might be an estimate\n- Only the date may be verifiable as accurate with the time being approximate\n\nNote: All dateTime values in the 314e implementation guide SHALL be stored in UTC."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/datetime-accuracy-314e"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Precision level of the exact/ accurate part of dateTime value",
      "definition" : "Indicates the precision level that is verified as clinically exact or accurate.\nExamples include year-only, month-level, date-level,\nfull timestamp precision or none.",
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
