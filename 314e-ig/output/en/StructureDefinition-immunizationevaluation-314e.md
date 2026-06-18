# 314e ImmunizationEvaluation - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e ImmunizationEvaluation 

 
314e-constrained ImmunizationEvaluation profile derived from FHIR R4 ImmunizationEvaluation. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/immunizationevaluation-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-immunizationevaluation-314e.csv), [Excel](../StructureDefinition-immunizationevaluation-314e.xlsx), [Schematron](../StructureDefinition-immunizationevaluation-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immunizationevaluation-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e",
  "version" : "1.0.0",
  "name" : "ImmunizationEvaluation314e",
  "title" : "314e ImmunizationEvaluation",
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
  "description" : "314e-constrained ImmunizationEvaluation profile derived from FHIR R4 ImmunizationEvaluation.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImmunizationEvaluation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ImmunizationEvaluation",
      "path" : "ImmunizationEvaluation"
    },
    {
      "id" : "ImmunizationEvaluation.meta",
      "path" : "ImmunizationEvaluation.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "ImmunizationEvaluation.extension",
      "path" : "ImmunizationEvaluation.extension",
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
      "id" : "ImmunizationEvaluation.extension:additionalInfo",
      "path" : "ImmunizationEvaluation.extension",
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
      "id" : "ImmunizationEvaluation.identifier",
      "path" : "ImmunizationEvaluation.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "ImmunizationEvaluation.patient",
      "path" : "ImmunizationEvaluation.patient",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "ImmunizationEvaluation.date",
      "path" : "ImmunizationEvaluation.date",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "ImmunizationEvaluation.authority",
      "path" : "ImmunizationEvaluation.authority",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "ImmunizationEvaluation.targetDisease",
      "path" : "ImmunizationEvaluation.targetDisease",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ImmunizationEvaluation.immunizationEvent",
      "path" : "ImmunizationEvaluation.immunizationEvent",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"]
      }]
    },
    {
      "id" : "ImmunizationEvaluation.doseStatus",
      "path" : "ImmunizationEvaluation.doseStatus",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ImmunizationEvaluation.doseStatusReason",
      "path" : "ImmunizationEvaluation.doseStatusReason",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    }]
  }
}

```
