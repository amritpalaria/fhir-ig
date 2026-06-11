# Document Reference Author Dictation Date Time - 314e FHIR Implementation Guide v1.0.0

## Extension: Document Reference Author Dictation Date Time 

Applied to the author element of a DocumentReference resource. Captures the exact date and time when the author dictated the document.

This information is not available in the standard FHIR DocumentReference resource.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e DocumentReference](StructureDefinition-documentreference-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/documentReference-author-dictationDateTime)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-documentReference-author-dictationDateTime.csv), [Excel](../StructureDefinition-documentReference-author-dictationDateTime.xlsx), [Schematron](../StructureDefinition-documentReference-author-dictationDateTime.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "documentReference-author-dictationDateTime",
  "url" : "http://314e.com/fhir/StructureDefinition/documentReference-author-dictationDateTime",
  "version" : "1.0.0",
  "name" : "DocumentReferenceAuthorDictationDateTime",
  "title" : "Document Reference Author Dictation Date Time",
  "status" : "active",
  "date" : "2026-06-11T14:17:09+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Applied to the author element of a DocumentReference resource. Captures\nthe exact date and time when the author dictated the document.\n\nThis information is not available in the standard FHIR DocumentReference\nresource.",
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
    "expression" : "DocumentReference.author"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Document Reference Author Dictation Date Time",
      "definition" : "Applied to the author element of a DocumentReference resource. Captures\nthe exact date and time when the author dictated the document.\n\nThis information is not available in the standard FHIR DocumentReference\nresource."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/documentReference-author-dictationDateTime"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Date and time the author dictated the document",
      "definition" : "The exact date and time at which the document author dictated the content\nof this document.",
      "min" : 1,
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    }]
  }
}

```
