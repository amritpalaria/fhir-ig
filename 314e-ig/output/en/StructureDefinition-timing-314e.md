# 314e Timing - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Timing 

 
Describes the occurrence of an event that may occur multiple times. Timing schedules are used for specifying when events are expected or requested to occur and may also be used to represent the summary of a past or ongoing event. For simplicity, the definitions of Timing components are expressed as 'future' events, but such components can also be used to describe historic or ongoing events. 
A Timing schedule can be a list of events and/or criteria for when the event happens, which can be expressed in a structured form and/or as a code. When both event and a repeating specification are provided, the list of events should be understood as an interpretation of the information in the repeat structure. 
Note: The Timing data type allows modifier extensions. 
314e profile of the FHIR Timing datatype uses 314e datatype profiles including DateTime314e, Period314e, CodeableConcept314e and Quantity314e. 

**Usages:**

* Use this DataType Profile: [314e CarePlan](StructureDefinition-careplan-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e Dosage](StructureDefinition-dosage-314e.md), [314e NutritionOrder](StructureDefinition-nutritionorder-314e.md)... Show 4 more, [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md) and [314e ServiceRequest](StructureDefinition-servicerequest-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/timing-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-timing-314e.csv), [Excel](../StructureDefinition-timing-314e.xlsx), [Schematron](../StructureDefinition-timing-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "timing-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/timing-314e",
  "version" : "1.0.0",
  "name" : "Timing314e",
  "title" : "314e Timing",
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
  "description" : "Describes the occurrence of an event that may occur multiple times. Timing schedules are used \nfor specifying when events are expected or requested to occur and may also be used to represent \nthe summary of a past or ongoing event. For simplicity, the definitions of Timing components \nare expressed as 'future' events, but such components can also be used to describe historic or ongoing events.\n\nA Timing schedule can be a list of events and/or criteria for when the event happens, which can \nbe expressed in a structured form and/or as a code. When both event and a repeating specification \nare provided, the list of events should be understood as an interpretation of the information in the repeat structure.\n\nNote: The Timing data type allows modifier extensions.\n\n314e profile of the FHIR Timing datatype uses 314e datatype profiles \nincluding DateTime314e, Period314e, CodeableConcept314e and Quantity314e.",
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
  "type" : "Timing",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Timing",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Timing.event",
      "path" : "Timing.event",
      "short" : "When the event occurs, in UTC",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "Timing.repeat.bounds[x]",
      "path" : "Timing.repeat.bounds[x]",
      "type" : [{
        "code" : "Duration",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/duration-314e"]
      },
      {
        "code" : "Range",
        "profile" : ["http://314e.com/fhir/StructureDefinition/range-314e"]
      },
      {
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "Timing.repeat.duration",
      "path" : "Timing.repeat.duration",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "Timing.repeat.durationMax",
      "path" : "Timing.repeat.durationMax",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "Timing.repeat.period",
      "path" : "Timing.repeat.period",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "Timing.repeat.periodMax",
      "path" : "Timing.repeat.periodMax",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "Timing.repeat.timeOfDay",
      "path" : "Timing.repeat.timeOfDay",
      "type" : [{
        "code" : "time",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/time-314e"]
      }]
    },
    {
      "id" : "Timing.code",
      "path" : "Timing.code",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    }]
  }
}

```
