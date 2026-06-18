# 314e Duration - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Duration 

 
314e profile of the FHIR Duration datatype. 
Derived from FHIR Duration and incorporates 314e Quantity datatype behavior including: 
* quantity precision support
* quantity string support
* value string support
 

**Usages:**

* Use this DataType Profile: [314e DataRequirement](StructureDefinition-datarequirement-314e.md), [314e Goal](StructureDefinition-goal-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md), [314e Specimen](StructureDefinition-specimen-314e.md) and [314e Timing](StructureDefinition-timing-314e.md)

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
  "date" : "2026-06-18T14:15:04+05:30",
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
    }]
  }
}

```
