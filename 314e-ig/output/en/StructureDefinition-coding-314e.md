# 314e Coding - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Coding 

 
314e profile of the FHIR Coding datatype. 
This profile strengthens semantic interoperability expectations around population of system, code, and display. 
When display is populated, code SHALL also be populated. 
If source data lacks a formal coded value but provides textual display content, implementers SHOULD generate a surrogate code using the display text transformed as follows: 
* convert all letters to lower case
* replace spaces with hyphens
 
Example: Display: "Blood Culture" Generated code: "blood-culture" 
Whenever either code or display is populated, system SHALL also be populated. 
This data type supports: 
* standard terminology codings
* optional customer-specific internal codings Internal codings are used to preserve customer, EHR, workflow, and source-system-native semantic classifications and source system fidelity.
 
Any coding system intended to represent an internal coding system SHALL follow the required naming convention: 
[customer]-[ehr]-[ResourceType]-[resource-subtype]-[element]-[SourceSpecificString]-InternalCode 
Example: acme-epic-Observation-lab-code-Glucose-InternalCode 

**Usages:**

* Use this DataType Profile: [314e CodeableConcept](StructureDefinition-codeableconcept-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/coding-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-coding-314e.csv), [Excel](../StructureDefinition-coding-314e.xlsx), [Schematron](../StructureDefinition-coding-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "coding-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/coding-314e",
  "version" : "1.0.0",
  "name" : "Coding314e",
  "title" : "314e Coding",
  "status" : "active",
  "date" : "2026-05-26T08:48:22+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR Coding datatype.\n\nThis profile strengthens semantic interoperability expectations\naround population of system, code, and display.\n\nWhen display is populated, code SHALL also be populated.\n\nIf source data lacks a formal coded value but provides textual\ndisplay content, implementers SHOULD generate a surrogate code\nusing the display text transformed as follows:\n- convert all letters to lower case\n- replace spaces with hyphens\n\nExample:\nDisplay: \"Blood Culture\"\nGenerated code: \"blood-culture\"\n\nWhenever either code or display is populated, system SHALL\nalso be populated.\n\nThis data type supports:\n- standard terminology codings\n- optional customer-specific internal codings\nInternal codings are used to preserve customer, EHR,\nworkflow, and source-system-native semantic classifications and source system fidelity.\n\nAny coding system intended to represent an internal coding\nsystem SHALL follow the required naming convention:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[element]-[SourceSpecificString]-InternalCode\n\nExample:\nacme-epic-Observation-lab-code-Glucose-InternalCode",
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
  "type" : "Coding",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coding",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Coding",
      "path" : "Coding",
      "constraint" : [{
        "key" : "coding314e-1",
        "severity" : "error",
        "human" : "If display is populated, code must also be populated",
        "expression" : "display.exists() implies code.exists()",
        "source" : "http://314e.com/fhir/ig/StructureDefinition/coding-314e"
      },
      {
        "key" : "coding314e-2",
        "severity" : "error",
        "human" : "If code or display is populated, system must also be populated",
        "expression" : "(code.exists() or display.exists()) implies system.exists()",
        "source" : "http://314e.com/fhir/ig/StructureDefinition/coding-314e"
      }]
    },
    {
      "id" : "Coding.system",
      "path" : "Coding.system",
      "short" : "Terminology system URI or constrained-format internal code-system identifier",
      "definition" : "The identification of the code system that defines the meaning of the symbol in the code. \n\nSupports:\n- standard terminology codings\n- optional customer-specific internal codings\nInternal codings are used to preserve customer, EHR,\nworkflow, and source-system-native semantic classifications and source system fidelity.\n\nAny coding system intended to represent an internal coding\nsystem SHALL follow the required naming convention:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[element]-[SourceSpecificString]-InternalCode\n\nExample:\nacme-epic-Observation-lab-code-Glucose-InternalCode",
      "example" : [{
        "label" : "Internal Coding System",
        "valueUri" : "acme-epic-Observation-lab-code-Glucose-InternalCode"
      }],
      "constraint" : [{
        "key" : "coding314e-3",
        "severity" : "error",
        "human" : "Internal coding systems SHALL follow the format:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalCode\n\nExample:\nacme-epic-Observation-lab-code-Glucose-InternalCode",
        "expression" : "coding.where(system.exists())\n  .where(system.endsWith('-InternalCode'))\n  .all(system.matches('^[^-]+-[^-]+-[^-]+-[^-]+-[^-]+-[^-]+-InternalCode$'))",
        "source" : "http://314e.com/fhir/ig/StructureDefinition/coding-314e"
      }]
    },
    {
      "id" : "Coding.version",
      "path" : "Coding.version",
      "short" : "Version of the system",
      "definition" : "The version of the code system which was used when choosing\nthis code.\n\nThe interpretation of version is defined by the code system."
    },
    {
      "id" : "Coding.code",
      "path" : "Coding.code",
      "definition" : "A symbol in syntax defined by the system.\n\n314e constraint:\ncode SHALL be populated whenever display is populated.\n\nIf no formal coded value exists in source data but textual\ndisplay content exists, implementers SHOULD generate a\nsurrogate code from the display by:\n- converting all letters to lower case\n- replacing spaces with hyphens"
    },
    {
      "id" : "Coding.display",
      "path" : "Coding.display",
      "definition" : "A representation of the meaning of the code in the system,\nfollowing the rules of the system.\n\n314e constraint:\ndisplay SHALL NOT be populated unless code is also populated."
    },
    {
      "id" : "Coding.userSelected",
      "path" : "Coding.userSelected",
      "definition" : "Indicates that this coding was chosen by a user directly\nrather than generated automatically."
    }]
  }
}

```
