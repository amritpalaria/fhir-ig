# Attachment Inline Data Saved As File - 314e FHIR Implementation Guide v1.0.0

## Extension: Attachment Inline Data Saved As File 

Indicates that the Attachment content was originally available as inline data/blob content but has been externalized and saved as a file in object storage, with the Attachment.url carrying the storage location.

If this extension is absent, the content SHALL be assumed to have originated as an external file rather than inline data.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Attachment](StructureDefinition-attachment-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/attachment-inlineDataSavedAsFile)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-attachment-inlineDataSavedAsFile.csv), [Excel](../StructureDefinition-attachment-inlineDataSavedAsFile.xlsx), [Schematron](../StructureDefinition-attachment-inlineDataSavedAsFile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "attachment-inlineDataSavedAsFile",
  "url" : "http://314e.com/fhir/StructureDefinition/attachment-inlineDataSavedAsFile",
  "version" : "1.0.0",
  "name" : "AttachmentInlineDataSavedAsFile",
  "title" : "Attachment Inline Data Saved As File",
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
  "description" : "Indicates that the Attachment content was originally available\nas inline data/blob content but has been externalized and saved\nas a file in object storage, with the Attachment.url carrying\nthe storage location.\n\nIf this extension is absent, the content SHALL be assumed to\nhave originated as an external file rather than inline data.",
  "purpose" : "Supports workflows in which inline binary content is externalized\ninto object storage and referenced through Attachment.url.",
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
      "short" : "Attachment Inline Data Saved As File",
      "definition" : "Indicates that the Attachment content was originally available\nas inline data/blob content but has been externalized and saved\nas a file in object storage, with the Attachment.url carrying\nthe storage location.\n\nIf this extension is absent, the content SHALL be assumed to\nhave originated as an external file rather than inline data."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/attachment-inlineDataSavedAsFile"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Whether inline content was externalized to object storage",
      "definition" : "True indicates that the content was originally available as\ninline data/blob content and was saved as a file in object storage.",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
