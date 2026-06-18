# 314e instant - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e instant 

 
314e profile of the FHIR instant primitive datatype. 
All instant values SHALL be stored in UTC. 
An instant represents an exact point in time and therefore does not support approximate or estimated accuracy semantics. 
If only a smaller degree of precision is usable (for example, only minute precision is meaningful), the following extension SHALL be used: 
http://314e.com/fhir/StructureDefinition/datetime-precision 

**Usages:**

* Use this Primitive Type Profile: [314e Appointment](StructureDefinition-appointment-314e.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md)... Show 7 more, [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e Media](StructureDefinition-media-314e.md), [314e Meta](StructureDefinition-meta-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Signature](StructureDefinition-signature-314e.md) and [314e Slot](StructureDefinition-slot-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/instant-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-instant-314e.csv), [Excel](../StructureDefinition-instant-314e.xlsx), [Schematron](../StructureDefinition-instant-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "instant-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/instant-314e",
  "version" : "1.0.0",
  "name" : "instant314e",
  "title" : "314e instant",
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
  "description" : "314e profile of the FHIR instant primitive datatype.\n\nAll instant values SHALL be stored in UTC.\n\nAn instant represents an exact point in time and therefore\ndoes not support approximate or estimated accuracy semantics.\n\nIf only a smaller degree of precision is usable\n(for example, only minute precision is meaningful),\nthe following extension SHALL be used:\n\nhttp://314e.com/fhir/StructureDefinition/datetime-precision",
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "instant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/instant",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "instant",
      "path" : "instant",
      "constraint" : [{
        "key" : "instant314e-utc",
        "severity" : "error",
        "human" : "instant values SHALL always be expressed in UTC ('Z').",
        "expression" : "matches('^([0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\\\\.[0-9]+)?Z)$')",
        "source" : "http://314e.com/fhir/ig/StructureDefinition/instant-314e"
      }]
    },
    {
      "id" : "instant.extension",
      "path" : "instant.extension",
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
      "id" : "instant.extension:timePrecision",
      "path" : "instant.extension",
      "sliceName" : "timePrecision",
      "short" : "Usable precision of the instant value",
      "definition" : "Specifies the degree of precision that is meaningful,\nusable or reliable for the instant value.\n\nExamples include:\n- minute\n- second\n- millisecond",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/datetime-precision"]
      }]
    }]
  }
}

```
