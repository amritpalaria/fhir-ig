# 314e Period - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Period 

 
314e profile of the FHIR Period datatype. 
All dateTime values within the Period SHALL conform to the 314e DateTime profile requirements, including UTC normalization and precision handling. 

**Usages:**

* Use this DataType Profile: [314e Identifier](StructureDefinition-identifier-314e.md) and [314e Timing](StructureDefinition-timing-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/period-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-period-314e.csv), [Excel](../StructureDefinition-period-314e.xlsx), [Schematron](../StructureDefinition-period-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "period-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/period-314e",
  "version" : "1.0.0",
  "name" : "Period314e",
  "title" : "314e Period",
  "status" : "active",
  "date" : "2026-05-17T00:25:02+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR Period datatype.\n\nAll dateTime values within the Period SHALL conform\nto the 314e DateTime profile requirements,\nincluding UTC normalization and precision handling.",
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
  "type" : "Period",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Period",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Period.start",
      "path" : "Period.start",
      "short" : "Starting time with UTC normalization, precision support and inclusive boundary",
      "definition" : "The start of the period. The boundary is inclusive.\n\nAll timestamps SHALL be represented in UTC.\nAdditional extensions may be used to indicate\nusable precision or approximate values.",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "Period.end",
      "path" : "Period.end",
      "short" : "Ending time with UTC normalization, precision support and inclusive boundary",
      "definition" : "The end of the period.  The boundary is inclusive. If the end of the period is missing, it \nmeans no end was known or planned at the time the instance was created. The start may be in \nthe past, and the end date in the future, which means that period is expected/planned to end at that time.\n\nAll timestamps SHALL be represented in UTC.\nAdditional extensions may be used to indicate\nusable precision or approximate values.",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    }]
  }
}

```
