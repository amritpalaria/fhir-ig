# 314e Person - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e Person 

 
314e-constrained Person profile derived from FHIR R4 Person. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. No QI Core or US Core Person profile exists; this profile constrains the base FHIR R4 Person resource directly. 

**Usages:**

* Refer to this Profile: [Cosigner](StructureDefinition-cosigner.md), [314e Person](StructureDefinition-person-314e.md) and [Resource Last Edited User](StructureDefinition-resource-lastEditedUser.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/person-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-person-314e.csv), [Excel](../StructureDefinition-person-314e.xlsx), [Schematron](../StructureDefinition-person-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "person-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/person-314e",
  "version" : "1.0.0",
  "name" : "Person314e",
  "title" : "314e Person",
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
  "description" : "314e-constrained Person profile derived from FHIR R4 Person.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable. No QI Core or US Core Person profile exists; this profile\nconstrains the base FHIR R4 Person resource directly.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Person",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Person",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Person",
      "path" : "Person"
    },
    {
      "id" : "Person.meta",
      "path" : "Person.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "Person.extension",
      "path" : "Person.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Person.extension:additionalInfo",
      "path" : "Person.extension",
      "sliceName" : "additionalInfo",
      "short" : "Supplementary information for this resource",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/resource-additionalInfo"]
      }]
    },
    {
      "id" : "Person.identifier",
      "path" : "Person.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Person.name",
      "path" : "Person.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/humanname-314e"]
      }]
    },
    {
      "id" : "Person.telecom",
      "path" : "Person.telecom",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/contactpoint-314e"]
      }]
    },
    {
      "id" : "Person.address",
      "path" : "Person.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/address-314e"]
      }]
    },
    {
      "id" : "Person.photo",
      "path" : "Person.photo",
      "type" : [{
        "code" : "Attachment",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-314e"]
      }]
    },
    {
      "id" : "Person.managingOrganization",
      "path" : "Person.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/organization-314e"]
      }]
    },
    {
      "id" : "Person.link.target",
      "path" : "Person.link.target",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e",
        "http://314e.com/fhir/StructureDefinition/person-314e"]
      }]
    }]
  }
}

```
