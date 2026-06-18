# Care Plan Target Date Time - 314e FHIR Implementation Guide v1.0.0

## Extension: Care Plan Target Date Time 

Applied at the root level of the CarePlan resource. Specifies the intended or expected target date-time for completion, review, or achievement of the care plan or care plan objective.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e CarePlan](StructureDefinition-careplan-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/carePlan-targetDateTime)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-carePlan-targetDateTime.csv), [Excel](../StructureDefinition-carePlan-targetDateTime.xlsx), [Schematron](../StructureDefinition-carePlan-targetDateTime.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "carePlan-targetDateTime",
  "url" : "http://314e.com/fhir/StructureDefinition/carePlan-targetDateTime",
  "version" : "1.0.0",
  "name" : "CarePlanTargetDateTime",
  "title" : "Care Plan Target Date Time",
  "status" : "active",
  "date" : "2026-06-18T14:15:04+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Applied at the root level of the CarePlan resource. Specifies the intended\nor expected target date-time for completion, review, or achievement of the\ncare plan or care plan objective.",
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
    "expression" : "CarePlan"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Care Plan Target Date Time",
      "definition" : "Applied at the root level of the CarePlan resource. Specifies the intended\nor expected target date-time for completion, review, or achievement of the\ncare plan or care plan objective."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/carePlan-targetDateTime"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Target date-time for care plan completion or review",
      "definition" : "The intended or expected date and time by which the care plan as a whole,\nor a specific care plan objective, should be completed, reviewed, or achieved.",
      "min" : 1,
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    }]
  }
}

```
