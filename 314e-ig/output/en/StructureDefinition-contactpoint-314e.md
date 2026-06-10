# 314e ContactPoint - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e ContactPoint 

 
314e profile of the FHIR ContactPoint datatype. 
This profile constrains the period element to use the 314e Period profile. 

**Usages:**

* Use this DataType Profile: [314e Patient](StructureDefinition-patient-314e.md), [314e Practitioner](StructureDefinition-practitioner-314e.md) and [314e RelatedPerson](StructureDefinition-relatedperson-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/contactpoint-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-contactpoint-314e.csv), [Excel](../StructureDefinition-contactpoint-314e.xlsx), [Schematron](../StructureDefinition-contactpoint-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "contactpoint-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/contactpoint-314e",
  "version" : "1.0.0",
  "name" : "ContactPoint314e",
  "title" : "314e ContactPoint",
  "status" : "active",
  "date" : "2026-06-10T16:33:40+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR ContactPoint datatype.\n\nThis profile constrains the period element to use the 314e Period profile.",
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
  "type" : "ContactPoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ContactPoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ContactPoint",
      "path" : "ContactPoint"
    },
    {
      "id" : "ContactPoint.period",
      "path" : "ContactPoint.period",
      "type" : [{
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    }]
  }
}

```
