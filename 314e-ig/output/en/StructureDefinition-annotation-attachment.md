# Annotation Attachment - 314e FHIR Implementation Guide v1.0.0

## Extension: Annotation Attachment 

Provides an attachment-based representation of annotation or note content when the annotation is not represented as inline plain text.

This extension supports scenarios in which annotation content is stored externally as an attachment rather than directly populated within Annotation.text.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Annotation](StructureDefinition-annotation-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/annotation-attachment)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-annotation-attachment.csv), [Excel](../StructureDefinition-annotation-attachment.xlsx), [Schematron](../StructureDefinition-annotation-attachment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "annotation-attachment",
  "url" : "http://314e.com/fhir/StructureDefinition/annotation-attachment",
  "version" : "1.0.0",
  "name" : "AnnotationAttachment",
  "title" : "Annotation Attachment",
  "status" : "draft",
  "date" : "2026-05-26T12:06:33+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Provides an attachment-based representation of annotation or note\ncontent when the annotation is not represented as inline plain text.\n\nThis extension supports scenarios in which annotation content is\nstored externally as an attachment rather than directly populated\nwithin Annotation.text.",
  "purpose" : "Supports attachment-backed annotations and notes whose content\nis externally stored rather than embedded inline as text.",
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
    "expression" : "Annotation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Annotation Attachment",
      "definition" : "Provides an attachment-based representation of annotation or note\ncontent when the annotation is not represented as inline plain text.\n\nThis extension supports scenarios in which annotation content is\nstored externally as an attachment rather than directly populated\nwithin Annotation.text."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/annotation-attachment"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Attachment-based representation of annotation content",
      "definition" : "Attachment carrying externally stored annotation or note content.",
      "comment" : "This extension should be used when annotation content is not\nrepresented inline in Annotation.text.",
      "min" : 1,
      "type" : [{
        "code" : "Attachment",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-314e"]
      }]
    }]
  }
}

```
