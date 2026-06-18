# 314e Signature - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Signature 

 
314e profile of the FHIR Signature datatype. 
This profile constrains Coding, instant, and Reference sub-elements to their corresponding 314e datatype profiles. 

**Usages:**

* Use this DataType Profile: [314e Contract](StructureDefinition-contract-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/signature-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-signature-314e.csv), [Excel](../StructureDefinition-signature-314e.xlsx), [Schematron](../StructureDefinition-signature-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "signature-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/signature-314e",
  "version" : "1.0.0",
  "name" : "Signature314e",
  "title" : "314e Signature",
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
  "description" : "314e profile of the FHIR Signature datatype.\n\nThis profile constrains Coding, instant, and Reference sub-elements\nto their corresponding 314e datatype profiles.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Signature",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Signature",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Signature.type",
      "path" : "Signature.type",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/coding-314e"]
      }]
    },
    {
      "id" : "Signature.when",
      "path" : "Signature.when",
      "type" : [{
        "code" : "instant",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/instant-314e"]
      }]
    },
    {
      "id" : "Signature.who",
      "path" : "Signature.who",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "Signature.onBehalfOf",
      "path" : "Signature.onBehalfOf",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    }]
  }
}

```
