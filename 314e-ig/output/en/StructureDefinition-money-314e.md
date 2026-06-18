# 314e Money - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Money 

 
314e profile of the FHIR Money datatype. 
This profile constrains the decimal value sub-element to the 314e decimal profile. 

**Usages:**

* Use this DataType Profile: [314e Contract](StructureDefinition-contract-314e.md) and [314e Coverage](StructureDefinition-coverage-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/money-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-money-314e.csv), [Excel](../StructureDefinition-money-314e.xlsx), [Schematron](../StructureDefinition-money-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "money-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/money-314e",
  "version" : "1.0.0",
  "name" : "Money314e",
  "title" : "314e Money",
  "status" : "active",
  "date" : "2026-06-18T16:14:31+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR Money datatype.\n\nThis profile constrains the decimal value sub-element\nto the 314e decimal profile.",
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
  "type" : "Money",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Money",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Money.value",
      "path" : "Money.value",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    }]
  }
}

```
