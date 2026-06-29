# Care Plan Activity Target Date Time - 314e FHIR Implementation Guide v1.0.0

## Extension: Care Plan Activity Target Date Time 

Applied to an individual activity element within a CarePlan resource. Stores the target or goal date-time for completing that specific care plan activity.

Note that the targetDateTime is separate from CarePlan.activity.scheduled[x].

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e CarePlan](StructureDefinition-careplan-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/carePlan-activity-targetDateTime)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-carePlan-activity-targetDateTime.csv), [Excel](../StructureDefinition-carePlan-activity-targetDateTime.xlsx), [Schematron](../StructureDefinition-carePlan-activity-targetDateTime.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "carePlan-activity-targetDateTime",
  "url" : "http://314e.com/fhir/StructureDefinition/carePlan-activity-targetDateTime",
  "version" : "1.0.0",
  "name" : "CarePlanActivityTargetDateTime",
  "title" : "Care Plan Activity Target Date Time",
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
  "description" : "Applied to an individual activity element within a CarePlan resource.\nStores the target or goal date-time for completing that specific care plan\nactivity.\n\nNote that the targetDateTime is separate from CarePlan.activity.scheduled[x].",
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
    "expression" : "CarePlan.activity"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Care Plan Activity Target Date Time",
      "definition" : "Applied to an individual activity element within a CarePlan resource.\nStores the target or goal date-time for completing that specific care plan\nactivity.\n\nNote that the targetDateTime is separate from CarePlan.activity.scheduled[x]."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/carePlan-activity-targetDateTime"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Target date-time for completing the care plan activity",
      "definition" : "The intended or expected date and time by which a specific care plan\nactivity should be completed or achieved.",
      "min" : 1,
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    }]
  }
}

```
