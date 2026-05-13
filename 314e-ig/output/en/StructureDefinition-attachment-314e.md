# 314e Attachment - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Attachment 

 
A constrained Attachment datatype profile in which Attachment.data SHALL never be populated. 
All attachment content SHALL be externalized into object storage and referenced using Attachment.url. 
If content originated as inline data/blob content and was later saved externally, the extension attachment-inlineDataSavedAsFile SHALL be used to indicate this. 

**Usages:**

* Use this DataType Profile: [Annotation Attachment](StructureDefinition-annotation-attachment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/attachment-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-attachment-314e.csv), [Excel](../StructureDefinition-attachment-314e.xlsx), [Schematron](../StructureDefinition-attachment-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "attachment-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/attachment-314e",
  "version" : "1.0.0",
  "name" : "Attachment314e",
  "title" : "314e Attachment",
  "status" : "draft",
  "date" : "2026-05-13T15:29:14+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A constrained Attachment datatype profile in which Attachment.data\nSHALL never be populated.\n\nAll attachment content SHALL be externalized into object storage\nand referenced using Attachment.url.\n\nIf content originated as inline data/blob content and was later\nsaved externally, the extension\nattachment-inlineDataSavedAsFile SHALL be used to indicate this.",
  "purpose" : "Provides a consistent attachment handling strategy in which\nbinary payloads are always externally stored and referenced.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Attachment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Attachment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Attachment.extension:inlineDataSavedAsFile",
      "path" : "Attachment.extension",
      "sliceName" : "inlineDataSavedAsFile",
      "short" : "Indicates originally-inline content externalized into object storage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-inlineDataSavedAsFile"]
      }]
    },
    {
      "id" : "Attachment.extension:tag",
      "path" : "Attachment.extension",
      "sliceName" : "tag",
      "short" : "Semantic categorization tag associated with the attachment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-tag"]
      }]
    },
    {
      "id" : "Attachment.extension:helperFile",
      "path" : "Attachment.extension",
      "sliceName" : "helperFile",
      "short" : "Helper file associated with the attachment",
      "definition" : "Provides the path or filename of an auxiliary/helper file required\nfor interpretation, transformation, rendering, or processing of\nthe attachment content.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-helperFile"]
      }]
    },
    {
      "id" : "Attachment.data",
      "path" : "Attachment.data",
      "short" : "Inline attachment data is prohibited",
      "definition" : "Inline binary data SHALL NOT be populated.\n\nAttachment content SHALL instead be persisted externally\nand referenced using Attachment.url.",
      "max" : "0"
    },
    {
      "id" : "Attachment.url",
      "path" : "Attachment.url",
      "short" : "Object storage path or external attachment location",
      "definition" : "Reference/path to the externally stored attachment content.",
      "min" : 1
    }]
  }
}

```
