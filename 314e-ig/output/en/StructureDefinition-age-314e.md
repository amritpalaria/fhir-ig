# 314e Age - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Age 

 
314e profile of the FHIR Age datatype. 
Age is a constrained Quantity used to express a duration of elapsed time, typically of a human being as read from a clinical record. 

**Usages:**

* Use this DataType Profile: [314e AllergyIntolerance](StructureDefinition-allergyintolerance-314e.md), [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md)... Show 2 more, [314e Procedure](StructureDefinition-procedure-314e.md) and [314e RequestGroup](StructureDefinition-requestgroup-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/age-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-age-314e.csv), [Excel](../StructureDefinition-age-314e.xlsx), [Schematron](../StructureDefinition-age-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "age-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/age-314e",
  "version" : "1.0.0",
  "name" : "Age314e",
  "title" : "314e Age",
  "status" : "active",
  "date" : "2026-06-29T17:18:47+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR Age datatype.\n\nAge is a constrained Quantity used to express a duration of elapsed time,\ntypically of a human being as read from a clinical record.",
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
  "type" : "Age",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Age",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Age",
      "path" : "Age"
    }]
  }
}

```
