# Date/Time Precision - 314e FHIR Implementation Guide v1.0.0

## Extension: Date/Time Precision 

Specifies the meaningful/ usable precision of a dateTime value when the datatype syntactically permits greater precision than is actually known or clinically usable.

This extension is intended to explicitly communicate the usable precision of a dateTime value, such as year-only, year-month, date-only, or full timestamp precision.

All dateTime values in the 314e implementation guide SHALL be stored in UTC.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e dateTime](StructureDefinition-datetime-314e.md) and [314e instant](StructureDefinition-instant-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/datetime-precision)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-datetime-precision.csv), [Excel](../StructureDefinition-datetime-precision.xlsx), [Schematron](../StructureDefinition-datetime-precision.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "datetime-precision",
  "url" : "http://314e.com/fhir/StructureDefinition/datetime-precision",
  "version" : "1.0.0",
  "name" : "DateTimePrecision",
  "title" : "Date/Time Precision",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T14:15:04+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Specifies the meaningful/ usable precision of a dateTime value when the \ndatatype syntactically permits greater precision than is actually known or clinically usable.\n\nThis extension is intended to explicitly communicate the usable precision\nof a dateTime value, such as year-only, year-month, date-only, or\nfull timestamp precision.\n\nAll dateTime values in the 314e implementation guide SHALL be stored in UTC.",
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
    "expression" : "dateTime"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Usable precision of a dateTime value",
      "definition" : "This extension communicates the meaningful and usable precision of a dateTime value\nwhen the datatype syntactically allows more precision than is actually known\nor appropriate to use.\n\nFor example:\n- A birth year may be known without exact date\n- Only the date may be verified without time\n- Only month/year may be clinically relevant\n\nThis extension SHALL NOT alter the actual dateTime value itself,\nbut instead clarifies the degree of precision\nassociated with the recorded value."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/datetime-precision"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Known/ usable precision of the dateTime value",
      "definition" : "Indicates the precision that is operationally\nor semantically meaningful/ usable for the associated dateTime value.\nExamples include year-only, month-level, date-level,\nor full timestamp precision.",
      "min" : 1,
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://314e.com/fhir/ValueSet/time-precision-units"
      }
    }]
  }
}

```
