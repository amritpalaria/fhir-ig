# 314e dateTime - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e dateTime 

 
314e profile of the FHIR dateTime primitive datatype. 
All dateTime values SHALL be stored in UTC. 
If only a smaller degree of precision is usable (for example, only the date portion is known), the following extension SHALL be used: 
http://314e.com/fhir/StructureDefinition/datetime-precision-314e 
If all or part of the usable date/time value is approximate rather than exact, the following extension SHALL be used: 
https://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator 

**Usages:**

* Use this Primitive Type Profile: [314e Annotation](StructureDefinition-annotation-314e.md), [314e Attachment](StructureDefinition-attachment-314e.md), [314e Non-Microbiology Laboratory Observation](StructureDefinition-observation-lab-nonmicro-314e.md), [314e Period](StructureDefinition-period-314e.md)... Show 2 more, [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Timing](StructureDefinition-timing-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/datetime-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-datetime-314e.csv), [Excel](../StructureDefinition-datetime-314e.xlsx), [Schematron](../StructureDefinition-datetime-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "datetime-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/datetime-314e",
  "version" : "1.0.0",
  "name" : "dateTime314e",
  "title" : "314e dateTime",
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
  "description" : "314e profile of the FHIR dateTime primitive datatype.\n\nAll dateTime values SHALL be stored in UTC.\n\nIf only a smaller degree of precision is usable\n(for example, only the date portion is known),\nthe following extension SHALL be used:\n\nhttp://314e.com/fhir/StructureDefinition/datetime-precision-314e\n\nIf all or part of the usable date/time value is approximate rather than exact,\nthe following extension SHALL be used:\n\nhttps://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "dateTime",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/dateTime",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "dateTime",
      "path" : "dateTime",
      "constraint" : [{
        "key" : "datetime314e-utc",
        "severity" : "error",
        "human" : "If a timezone is present in the dateTime value,\nit SHALL be UTC ('Z').",
        "expression" : "matches('^([0-9]{4}(-[0-9]{2}(-[0-9]{2}(T[0-9]{2}:[0-9]{2}:[0-9]{2}(\\\\.[0-9]+)?Z)?)?)?)$')",
        "source" : "http://314e.com/fhir/ig/StructureDefinition/datetime-314e"
      }]
    },
    {
      "id" : "dateTime.extension",
      "path" : "dateTime.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "dateTime.extension:timePrecision",
      "path" : "dateTime.extension",
      "sliceName" : "timePrecision",
      "short" : "Usable precision of the dateTime value",
      "definition" : "Specifies the degree of precision that is meaningful, usable\nor reliable for the dateTime value.\n\nExample:\n- year\n- month\n- date\n- minute\n- second",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/datetime-precision-314e"]
      }]
    },
    {
      "id" : "dateTime.extension:accuracyIndicator",
      "path" : "dateTime.extension",
      "sliceName" : "accuracyIndicator",
      "short" : "Indicates the precision that is verified as clinically exact or accurate",
      "definition" : "Specifies the accuracy or exactness of a dateTime value when only some part of \nthe known/ usable precision of dateTime can be verified as accurate or exact and the rest is estimated or approximate. \nExamples include year-only, month-level, date-level, full timestamp precision or none.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/datetime-accuracy-314e"]
      }]
    }]
  }
}

```
