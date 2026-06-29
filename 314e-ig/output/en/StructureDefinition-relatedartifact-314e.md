# 314e RelatedArtifact - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e RelatedArtifact 

 
314e profile of the FHIR RelatedArtifact datatype. 
This profile constrains the document (Attachment) sub-element to the 314e Attachment profile. 

**Usages:**

* Use this DataType Profile: [314e RequestGroup](StructureDefinition-requestgroup-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/relatedartifact-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-relatedartifact-314e.csv), [Excel](../StructureDefinition-relatedartifact-314e.xlsx), [Schematron](../StructureDefinition-relatedartifact-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "relatedartifact-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/relatedartifact-314e",
  "version" : "1.0.0",
  "name" : "RelatedArtifact314e",
  "title" : "314e RelatedArtifact",
  "status" : "active",
  "date" : "2026-06-29T17:18:47+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR RelatedArtifact datatype.\n\nThis profile constrains the document (Attachment) sub-element\nto the 314e Attachment profile.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "RelatedArtifact",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedArtifact",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedArtifact",
      "path" : "RelatedArtifact"
    },
    {
      "id" : "RelatedArtifact.document",
      "path" : "RelatedArtifact.document",
      "type" : [{
        "code" : "Attachment",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-314e"]
      }]
    }]
  }
}

```
