# 314e Timing - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Timing 

 
314e profile of the FHIR Timing datatype. 
Uses 314e date/time related datatypes including DateTime314e, Period314e, and Quantity314e. 

**Usages:**

* This DataType Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/timing-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-timing-314e.csv), [Excel](../StructureDefinition-timing-314e.xlsx), [Schematron](../StructureDefinition-timing-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "timing-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/timing-314e",
  "version" : "1.0.0",
  "name" : "Timing314e",
  "title" : "314e Timing",
  "status" : "active",
  "date" : "2026-05-16T16:45:26+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR Timing datatype.\n\nUses 314e date/time related datatypes\nincluding DateTime314e, Period314e, and Quantity314e.",
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
  "type" : "Timing",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Timing",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Timing",
      "path" : "Timing"
    },
    {
      "id" : "Timing.event",
      "path" : "Timing.event",
      "short" : "Scheduled event time in UTC",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "Timing.repeat.bounds[x]",
      "path" : "Timing.repeat.bounds[x]",
      "type" : [{
        "code" : "Duration",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/duration-314e"]
      },
      {
        "code" : "Range",
        "profile" : ["http://314e.com/fhir/StructureDefinition/range-314e"]
      },
      {
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "Timing.repeat.offset",
      "path" : "Timing.repeat.offset",
      "short" : "Minutes from event with standard FHIR semantics"
    }]
  }
}

```
