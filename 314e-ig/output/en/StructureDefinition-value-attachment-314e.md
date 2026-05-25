# 314e Observation Value Attachment - 314e FHIR Implementation Guide v1.0.0

## Extension: 314e Observation Value Attachment 

Extension used when an Observation result cannot be represented using one of the standard structured Observation.value[x] datatypes or as plain text.

Typical use cases include:

* PDF laboratory reports
* proprietary binary result payloads
* waveform files
* image-based interpretations
* externally generated rendered documents
* rich formatted diagnostic content

The attachment represents the clinically relevant result payload.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Non-Microbiology Laboratory Observation](StructureDefinition-observation-lab-nonmicro-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/value-attachment-314e)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-value-attachment-314e.csv), [Excel](../StructureDefinition-value-attachment-314e.xlsx), [Schematron](../StructureDefinition-value-attachment-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "value-attachment-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/value-attachment-314e",
  "version" : "1.0.0",
  "name" : "ValueAttachment314e",
  "title" : "314e Observation Value Attachment",
  "status" : "active",
  "date" : "2026-05-25T14:14:21+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Extension used when an Observation result cannot be represented\nusing one of the standard structured Observation.value[x]\ndatatypes or as plain text.\n\nTypical use cases include:\n- PDF laboratory reports\n- proprietary binary result payloads\n- waveform files\n- image-based interpretations\n- externally generated rendered documents\n- rich formatted diagnostic content\n\nThe attachment represents the clinically relevant result payload.",
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
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "314e Observation Value Attachment",
      "definition" : "Extension used when an Observation result cannot be represented\nusing one of the standard structured Observation.value[x]\ndatatypes or as plain text.\n\nTypical use cases include:\n- PDF laboratory reports\n- proprietary binary result payloads\n- waveform files\n- image-based interpretations\n- externally generated rendered documents\n- rich formatted diagnostic content\n\nThe attachment represents the clinically relevant result payload."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/ig/StructureDefinition/value-attachment-314e"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Attachment payload representing the observation result",
      "definition" : "Attachment containing the clinically relevant result content\nwhen the observation result cannot reasonably be represented\nusing structured Observation.value[x] datatypes or plain text.",
      "min" : 1,
      "type" : [{
        "code" : "Attachment",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-314e"]
      }]
    }]
  }
}

```
