# Attachment Tag - 314e FHIR Implementation Guide v1.0.0

## Extension: Attachment Tag 

A categorization or tagging label associated with an Attachment.

This extension allows multiple tags to be associated with an Attachment for workflow, classification, indexing, or retrieval purposes.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Attachment](StructureDefinition-attachment-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/attachment-tag)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-attachment-tag.csv), [Excel](../StructureDefinition-attachment-tag.xlsx), [Schematron](../StructureDefinition-attachment-tag.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "attachment-tag",
  "url" : "http://314e.com/fhir/StructureDefinition/attachment-tag",
  "version" : "1.0.0",
  "name" : "AttachmentTag",
  "title" : "Attachment Tag",
  "status" : "draft",
  "date" : "2026-05-13T11:15:06+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A categorization or tagging label associated with an Attachment.\n\nThis extension allows multiple tags to be associated with an\nAttachment for workflow, classification, indexing, or retrieval\npurposes.",
  "purpose" : "Supports semantic tagging and categorization of attachments.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Attachment"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Attachment Tag",
      "definition" : "A categorization or tagging label associated with an Attachment.\n\nThis extension allows multiple tags to be associated with an\nAttachment for workflow, classification, indexing, or retrieval\npurposes."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/attachment-tag"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Categorization tag for the attachment",
      "definition" : "Represents a semantic classification, workflow label,\nor categorization tag associated with the attachment.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
