# 314e Annotation - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Annotation 

 
A constrained Annotation datatype profile supporting attachment- based annotation content through the annotation-attachment extension. 
This profile enables annotation or note content to be represented using externally stored attachments in addition to standard inline Annotation.text content. 

**Usages:**

* Use this DataType Profile: [314e ServiceRequest](StructureDefinition-servicerequest-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/annotation-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-annotation-314e.csv), [Excel](../StructureDefinition-annotation-314e.xlsx), [Schematron](../StructureDefinition-annotation-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "annotation-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/annotation-314e",
  "version" : "1.0.0",
  "name" : "Annotation314e",
  "title" : "314e Annotation",
  "status" : "draft",
  "date" : "2026-05-25T15:48:57+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A constrained Annotation datatype profile supporting attachment-\nbased annotation content through the annotation-attachment extension.\n\nThis profile enables annotation or note content to be represented\nusing externally stored attachments in addition to standard inline\nAnnotation.text content.",
  "purpose" : "Supports annotation workflows in which note/comment content may\nbe externally stored and referenced through attachments.",
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
  "type" : "Annotation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Annotation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Annotation",
      "path" : "Annotation"
    },
    {
      "id" : "Annotation.extension:attachment",
      "path" : "Annotation.extension",
      "sliceName" : "attachment",
      "short" : "Attachment-based annotation content",
      "definition" : "Provides attachment-backed annotation or note content.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/annotation-attachment"]
      }]
    },
    {
      "id" : "Annotation.author[x]",
      "path" : "Annotation.author[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Annotation.author[x]:authorReference",
      "path" : "Annotation.author[x]",
      "sliceName" : "authorReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "Annotation.time",
      "path" : "Annotation.time",
      "short" : "Annotation time in UTC with precision support",
      "definition" : "Date/time when the annotation was made.\n\nAll timestamps SHALL be represented in UTC.\nPrecision and approximation extensions may be used.",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    }]
  }
}

```
