# 314e CodeableConcept - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e CodeableConcept 

 
314e profile of the FHIR CodeableConcept datatype. 
This profile supports: 
* standard terminology codings
* optional customer-specific internal codings
 
Internal codings are used to preserve customer, EHR, workflow, and source-system-native semantic classifications and source system fidelity. 
Any coding system intended to represent an internal coding system SHALL follow the required naming convention: 
[customer]-[ehr]-[ResourceType]-[resource-subtype]-[element]-[SourceSpecificString]-InternalCode 
Example: acme-epic-Observation-lab-code-Glucose-InternalCode 

**Usages:**

* Use this DataType Profile: [Attachment Tag](StructureDefinition-attachment-tag.md), [314e Identifier](StructureDefinition-identifier-314e.md), [314e Non-Microbiology Laboratory Observation](StructureDefinition-observation-lab-nonmicro-314e.md), [Reference Context](StructureDefinition-reference-context.md)... Show 2 more, [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Timing](StructureDefinition-timing-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/codeableconcept-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-codeableconcept-314e.csv), [Excel](../StructureDefinition-codeableconcept-314e.xlsx), [Schematron](../StructureDefinition-codeableconcept-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "codeableconcept-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e",
  "version" : "1.0.0",
  "name" : "CodeableConcept314e",
  "title" : "314e CodeableConcept",
  "status" : "active",
  "date" : "2026-05-25T15:12:42+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR CodeableConcept datatype.\n\nThis profile supports:\n- standard terminology codings\n- optional customer-specific internal codings\n\nInternal codings are used to preserve customer, EHR,\nworkflow, and source-system-native semantic classifications and source system fidelity.\n\nAny coding system intended to represent an internal coding\nsystem SHALL follow the required naming convention:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[element]-[SourceSpecificString]-InternalCode\n\nExample:\nacme-epic-Observation-lab-code-Glucose-InternalCode",
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
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "CodeableConcept",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CodeableConcept",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CodeableConcept.coding",
      "path" : "CodeableConcept.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/coding-314e"]
      }]
    },
    {
      "id" : "CodeableConcept.coding:internalCode",
      "path" : "CodeableConcept.coding",
      "sliceName" : "internalCode",
      "short" : "Customer-specific internal coding with required internal code system format",
      "definition" : "Optional internal coding used to preserve\nsource-system-native semantics.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/coding-314e"]
      }]
    },
    {
      "id" : "CodeableConcept.coding:internalCode.system",
      "path" : "CodeableConcept.coding.system",
      "short" : "Internal code system identifier with required format",
      "definition" : "Internal customer-specific code system identifier.\n\nAny coding intended to represent an internal coding\nsystem SHALL use the following format:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalCode\n\nExample:\nacme-epic-Observation-lab-code-Glucose-InternalCode",
      "example" : [{
        "label" : "Internal Coding System",
        "valueUri" : "acme-epic-Observation-lab-code-Glucose-InternalCode"
      }]
    },
    {
      "id" : "CodeableConcept.coding:internalCode.code",
      "path" : "CodeableConcept.coding.code",
      "short" : "Internal source-specific code",
      "definition" : "Customer-specific or source-system-native code value."
    },
    {
      "id" : "CodeableConcept.coding:internalCode.display",
      "path" : "CodeableConcept.coding.display",
      "short" : "Internal source-specific display",
      "definition" : "Human-readable representation of the internal code."
    },
    {
      "id" : "CodeableConcept.text",
      "path" : "CodeableConcept.text",
      "definition" : "A human language representation of the concept\nas entered or chosen by the user."
    }]
  }
}

```
