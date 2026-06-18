# 314e Address - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Address 

 
314e profile of the FHIR Address datatype. 
This profile constrains the period element to use the 314e Period profile. 

**Usages:**

* Use this DataType Profile: [314e Location](StructureDefinition-location-314e.md), [314e Organization](StructureDefinition-organization-314e.md), [314e Patient](StructureDefinition-patient-314e.md), [314e Practitioner](StructureDefinition-practitioner-314e.md) and [314e RelatedPerson](StructureDefinition-relatedperson-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/address-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-address-314e.csv), [Excel](../StructureDefinition-address-314e.xlsx), [Schematron](../StructureDefinition-address-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "address-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/address-314e",
  "version" : "1.0.0",
  "name" : "Address314e",
  "title" : "314e Address",
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
  "description" : "314e profile of the FHIR Address datatype.\n\nThis profile constrains the period element to use the 314e Period profile.",
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
  },
  {
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address"
    },
    {
      "id" : "Address.period",
      "path" : "Address.period",
      "type" : [{
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    }]
  }
}

```
