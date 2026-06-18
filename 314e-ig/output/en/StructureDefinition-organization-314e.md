# 314e Organization - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e Organization 

 
314e-constrained Organization profile derived from US Core Organization. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/organization-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-organization-314e.csv), [Excel](../StructureDefinition-organization-314e.xlsx), [Schematron](../StructureDefinition-organization-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "organization-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/organization-314e",
  "version" : "1.0.0",
  "name" : "Organization314e",
  "title" : "314e Organization",
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
  "description" : "314e-constrained Organization profile derived from US Core Organization.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.meta",
      "path" : "Organization.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "Organization.extension",
      "path" : "Organization.extension",
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
      "id" : "Organization.extension:additionalInfo",
      "path" : "Organization.extension",
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
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Organization.identifier:NPI",
      "path" : "Organization.identifier",
      "sliceName" : "NPI",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Organization.identifier:CLIA",
      "path" : "Organization.identifier",
      "sliceName" : "CLIA",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Organization.identifier:NAIC",
      "path" : "Organization.identifier",
      "sliceName" : "NAIC",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/contactpoint-314e"]
      }]
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/address-314e"]
      }]
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "Organization.contact.purpose",
      "path" : "Organization.contact.purpose",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Organization.contact.name",
      "path" : "Organization.contact.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/humanname-314e"]
      }]
    },
    {
      "id" : "Organization.contact.telecom",
      "path" : "Organization.contact.telecom",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/contactpoint-314e"]
      }]
    },
    {
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/address-314e"]
      }]
    },
    {
      "id" : "Organization.endpoint",
      "path" : "Organization.endpoint",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Endpoint"]
      }]
    }]
  }
}

```
