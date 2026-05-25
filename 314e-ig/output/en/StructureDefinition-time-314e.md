# 314e time - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e time 

 
314e profile of the FHIR time primitive datatype - a time during the day, in the format hh:mm:ss. There is no date specified. Seconds must be provided due to schema type constraints but may be zero-filled and may be ignored at receiver discretion. The time "24:00" SHALL NOT be used. A time zone SHALL NOT be present. Times can be converted to a Duration since midnight. 
If only a smaller degree of precision than syntactically recorded is usable (for example, only hour and minute are known), the following extension SHALL be used: 
http://314e.com/fhir/StructureDefinition/time-precision-314e 
If all or part of the usable time value is approximate rather than exact, the following extension SHALL be used: 
http://314e.com/fhir/StructureDefinition/time-accuracy-indicator-314e 

**Usages:**

* Use this Primitive Type Profile: [314e Non-Microbiology Laboratory Observation](StructureDefinition-observation-lab-nonmicro-314e.md) and [314e Timing](StructureDefinition-timing-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/time-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-time-314e.csv), [Excel](../StructureDefinition-time-314e.xlsx), [Schematron](../StructureDefinition-time-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "time-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/time-314e",
  "version" : "1.0.0",
  "name" : "time314e",
  "title" : "314e time",
  "status" : "active",
  "date" : "2026-05-25T12:07:44+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR time primitive datatype - a time during the day, \nin the format hh:mm:ss. There is no date specified. \nSeconds must be provided due to schema type constraints but may be zero-filled \nand may be ignored at receiver discretion. The time \"24:00\" SHALL NOT be used. \nA time zone SHALL NOT be present. Times can be converted to a Duration since midnight.\n\nIf only a smaller degree of precision than syntactically recorded is usable\n(for example, only hour and minute are known),\nthe following extension SHALL be used:\n\nhttp://314e.com/fhir/StructureDefinition/time-precision-314e\n\nIf all or part of the usable time value is approximate rather than exact,\nthe following extension SHALL be used:\n\nhttp://314e.com/fhir/StructureDefinition/time-accuracy-indicator-314e",
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "time",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/time",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "time.extension",
      "path" : "time.extension",
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
      "id" : "time.extension:timePrecision",
      "path" : "time.extension",
      "sliceName" : "timePrecision",
      "short" : "Usable precision of the time value",
      "definition" : "Specifies the degree of precision that is meaningful, usable\nor reliable for the time value.\n\nExample:\n- hour\n- minute\n- second\n- millisecond",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/time-precision-314e"]
      }]
    },
    {
      "id" : "time.extension:accuracyIndicator",
      "path" : "time.extension",
      "sliceName" : "accuracyIndicator",
      "short" : "Indicates the precision that is verified as clinically exact or accurate",
      "definition" : "Specifies the accuracy or exactness of a time value when only some part of \nthe known/usable precision of time can be verified as accurate or exact and the rest is estimated or approximate.\n\nExamples include:\n- hour precision\n- minute precision\n- second precision\n- millisecond precision\n- none",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/time-accuracy-314e"]
      }]
    }]
  }
}

```
