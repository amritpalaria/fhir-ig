# Document Reference Context Report Date Time - 314e FHIR Implementation Guide v1.0.0

## Extension: Document Reference Context Report Date Time 

Applied to the context section of a DocumentReference resource. Stores the date and time when the finalized report was made available or released — separate from dictation, transcription, or document creation time.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e DocumentReference](StructureDefinition-documentreference-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/documentReference-context-reportDateTime)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-documentReference-context-reportDateTime.csv), [Excel](../StructureDefinition-documentReference-context-reportDateTime.xlsx), [Schematron](../StructureDefinition-documentReference-context-reportDateTime.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "documentReference-context-reportDateTime",
  "url" : "http://314e.com/fhir/StructureDefinition/documentReference-context-reportDateTime",
  "version" : "1.0.0",
  "name" : "DocumentReferenceContextReportDateTime",
  "title" : "Document Reference Context Report Date Time",
  "status" : "active",
  "date" : "2026-06-18T16:14:31+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Applied to the context section of a DocumentReference resource. Stores the\ndate and time when the finalized report was made available or released —\nseparate from dictation, transcription, or document creation time.",
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
    "expression" : "DocumentReference.context"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Document Reference Context Report Date Time",
      "definition" : "Applied to the context section of a DocumentReference resource. Stores the\ndate and time when the finalized report was made available or released —\nseparate from dictation, transcription, or document creation time."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/documentReference-context-reportDateTime"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Date and time the finalized report was released",
      "definition" : "The date and time at which the finalized report was made available or\nreleased, distinct from dictation, transcription, or document creation timestamps.",
      "min" : 1,
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    }]
  }
}

```
