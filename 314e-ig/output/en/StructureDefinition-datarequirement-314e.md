# 314e DataRequirement - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e DataRequirement 

 
314e profile of the FHIR DataRequirement datatype. 
This profile constrains CodeableConcept, Reference, Coding, dateTime, Period, and Duration sub-elements to their corresponding 314e datatype profiles. 

**Usages:**

* This DataType Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/datarequirement-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-datarequirement-314e.csv), [Excel](../StructureDefinition-datarequirement-314e.xlsx), [Schematron](../StructureDefinition-datarequirement-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "datarequirement-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/datarequirement-314e",
  "version" : "1.0.0",
  "name" : "DataRequirement314e",
  "title" : "314e DataRequirement",
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
  "description" : "314e profile of the FHIR DataRequirement datatype.\n\nThis profile constrains CodeableConcept, Reference, Coding, dateTime,\nPeriod, and Duration sub-elements to their corresponding 314e datatype profiles.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "DataRequirement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DataRequirement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DataRequirement",
      "path" : "DataRequirement"
    },
    {
      "id" : "DataRequirement.subject[x]",
      "path" : "DataRequirement.subject[x]",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      },
      {
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Group"]
      }]
    },
    {
      "id" : "DataRequirement.codeFilter.code",
      "path" : "DataRequirement.codeFilter.code",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/coding-314e"]
      }]
    },
    {
      "id" : "DataRequirement.dateFilter.value[x]",
      "path" : "DataRequirement.dateFilter.value[x]",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      },
      {
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      },
      {
        "code" : "Duration",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/duration-314e"]
      }]
    }]
  }
}

```
