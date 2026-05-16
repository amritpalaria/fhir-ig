# Attachment Tag - 314e FHIR Implementation Guide v1.0.0

## Extension: Attachment Tag 

A categorization or semantic tag associated with an Attachment.

This extension allows multiple tags to be associated with an Attachment for workflow, classification, indexing, retrieval, processing, or application behavior purposes.

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
  "date" : "2026-05-16T10:04:42+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A categorization or semantic tag associated with an Attachment.\n\nThis extension allows multiple tags to be associated with an\nAttachment for workflow, classification, indexing, retrieval,\nprocessing, or application behavior purposes.",
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
      "definition" : "A categorization or semantic tag associated with an Attachment.\n\nThis extension allows multiple tags to be associated with an\nAttachment for workflow, classification, indexing, retrieval,\nprocessing, or application behavior purposes."
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
      "short" : "Semantic categorization tag for the attachment",
      "definition" : "Represents a semantic classification, workflow label,\nbehavioral indicator, or categorization tag associated\nwith the attachment.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://314e.com/fhir/ValueSet/attachment-tag"
      }
    }]
  }
}

```
