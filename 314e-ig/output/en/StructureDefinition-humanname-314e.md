# 314e HumanName - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e HumanName 

 
314e profile of the FHIR HumanName datatype. 
This profile constrains the period element to use the 314e Period profile. 

**Usages:**

* Use this DataType Profile: [314e Organization](StructureDefinition-organization-314e.md), [314e Patient](StructureDefinition-patient-314e.md), [Patient Mother's Name](StructureDefinition-patient-mothersName.md), [314e Practitioner](StructureDefinition-practitioner-314e.md) and [314e RelatedPerson](StructureDefinition-relatedperson-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/humanname-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-humanname-314e.csv), [Excel](../StructureDefinition-humanname-314e.xlsx), [Schematron](../StructureDefinition-humanname-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "humanname-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/humanname-314e",
  "version" : "1.0.0",
  "name" : "HumanName314e",
  "title" : "314e HumanName",
  "status" : "active",
  "date" : "2026-06-18T13:36:33+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR HumanName datatype.\n\nThis profile constrains the period element to use the 314e Period profile.",
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
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "HumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HumanName",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HumanName",
      "path" : "HumanName"
    },
    {
      "id" : "HumanName.period",
      "path" : "HumanName.period",
      "type" : [{
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    }]
  }
}

```
