# Attachment Helper File - 314e FHIR Implementation Guide v1.0.0

## Extension: Attachment Helper File 

Provides the path or filename of a helper/supporting file associated with an Attachment.

This extension is intended for scenarios in which the consumer of the attachment requires an auxiliary/helper file in order to correctly interpret, process, transform, or render the attachment content.

Examples include:

* XSLT files associated with XML documents
* Schema files
* Rendering templates
* Transformation scripts
* Supporting metadata files

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Attachment](StructureDefinition-attachment-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/attachment-helperFile)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-attachment-helperFile.csv), [Excel](../StructureDefinition-attachment-helperFile.xlsx), [Schematron](../StructureDefinition-attachment-helperFile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "attachment-helperFile",
  "url" : "http://314e.com/fhir/StructureDefinition/attachment-helperFile",
  "version" : "1.0.0",
  "name" : "AttachmentHelperFile",
  "title" : "Attachment Helper File",
  "status" : "draft",
  "date" : "2026-06-24T16:34:23+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Provides the path or filename of a helper/supporting file associated\nwith an Attachment.\n\nThis extension is intended for scenarios in which the consumer of\nthe attachment requires an auxiliary/helper file in order to correctly\ninterpret, process, transform, or render the attachment content.\n\nExamples include:\n- XSLT files associated with XML documents\n- Schema files\n- Rendering templates\n- Transformation scripts\n- Supporting metadata files",
  "purpose" : "Supports association of auxiliary/helper files required for proper\ninterpretation or processing of an attachment.",
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
      "short" : "Attachment Helper File",
      "definition" : "Provides the path or filename of a helper/supporting file associated\nwith an Attachment.\n\nThis extension is intended for scenarios in which the consumer of\nthe attachment requires an auxiliary/helper file in order to correctly\ninterpret, process, transform, or render the attachment content.\n\nExamples include:\n- XSLT files associated with XML documents\n- Schema files\n- Rendering templates\n- Transformation scripts\n- Supporting metadata files"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/attachment-helperFile"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Path, locator or filename of associated helper/supporting file",
      "definition" : "Specifies the path, locator, storage reference,\nor URL of a helper/supporting file associated\nwith the attachment.",
      "comment" : "The interpretation and usage of the helper file is dependent upon\nthe attachment content type and consuming application.",
      "min" : 1,
      "type" : [{
        "code" : "url"
      }]
    }]
  }
}

```
