# 314e Identifier - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Identifier 

 
314e profile of the FHIR Identifier datatype. 
This profile requires Identifier.system whenever Identifier.value is populated. 
For customer-specific or internally defined identifiers, Identifier.system SHALL follow the naming convention: 
[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier 
Example: acme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier 

**Usages:**

* Use this DataType Profile: [314e Non-Microbiology Laboratory Observation](StructureDefinition-observation-lab-nonmicro-314e.md), [314e Reference](StructureDefinition-reference-314e.md) and [314e ServiceRequest](StructureDefinition-servicerequest-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/identifier-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-identifier-314e.csv), [Excel](../StructureDefinition-identifier-314e.xlsx), [Schematron](../StructureDefinition-identifier-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "identifier-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/identifier-314e",
  "version" : "1.0.0",
  "name" : "Identifier314e",
  "title" : "314e Identifier",
  "status" : "active",
  "date" : "2026-05-25T14:41:34+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR Identifier datatype.\n\nThis profile requires Identifier.system whenever\nIdentifier.value is populated.\n\nFor customer-specific or internally defined identifiers,\nIdentifier.system SHALL follow the naming convention:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier\n\nExample:\nacme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier",
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
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "constraint" : [{
        "key" : "identifier314e-1",
        "severity" : "error",
        "human" : "If Identifier.value is populated, Identifier.system SHALL also be populated.",
        "expression" : "value.exists() implies system.exists()",
        "source" : "http://314e.com/fhir/ig/StructureDefinition/identifier-314e"
      },
      {
        "key" : "identifier314e-2",
        "severity" : "error",
        "human" : "If Identifier.system represents an internal identifier system,\nit SHALL follow the required naming convention:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier",
        "expression" : "system.exists()\n  and system.endsWith('-InternalIdentifier')\n  implies\n  system.matches('^[^-]+-[^-]+-[^-]+-[^-]+-[^-]+-[^-]+-InternalIdentifier$')",
        "source" : "http://314e.com/fhir/ig/StructureDefinition/identifier-314e"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "Identifier namespace URI or constrained-format internal identifier-system name",
      "definition" : "Establishes the namespace, issuer, or context in which the identifier value is unique.\n\nStandard identifiers SHOULD use canonical URIs whenever available.\n\nFor customer-specific or internally defined identifier systems,\nthe following naming convention SHALL be used:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier",
      "example" : [{
        "label" : "Internal Identifier System for Observation-lab",
        "valueUri" : "acme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier"
      },
      {
        "label" : "Internal Identifier System for Patient",
        "valueUri" : "acme-epic-Patient--identifier-MRN-InternalIdentifier"
      }]
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "The identifier value",
      "definition" : "The portion of the identifier typically relevant to the user\nand which is unique within the context of the system.",
      "comment" : "If Identifier.value is populated,\nIdentifier.system SHALL also be populated."
    },
    {
      "id" : "Identifier.period",
      "path" : "Identifier.period",
      "type" : [{
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    }]
  }
}

```
