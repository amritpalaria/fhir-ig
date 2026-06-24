# 314e Time Precision Units - 314e FHIR Implementation Guide v1.0.0

## CodeSystem: 314e Time Precision Units 

 
Time precision units used to indicate the actual precision of a dateTime, time, or instant value. 

This Code system is referenced in the definition of the following value sets:

* [TimeAccuracyUnitsVS314E](ValueSet-time-accuracy-units-vs.md)
* [TimePrecisionUnitsVS314E](ValueSet-time-precision-units-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "time-precision-units-cs",
  "url" : "http://314e.com/fhir/CodeSystem/time-precision-units",
  "version" : "1.0.0",
  "name" : "TimePrecisionUnits314E",
  "title" : "314e Time Precision Units",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-24T16:34:23+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Time precision units used to indicate the actual precision of a dateTime, time, or instant value.",
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "ms",
    "display" : "milliseconds"
  },
  {
    "code" : "s",
    "display" : "seconds"
  },
  {
    "code" : "min",
    "display" : "minutes"
  },
  {
    "code" : "h",
    "display" : "hours"
  },
  {
    "code" : "d",
    "display" : "days"
  },
  {
    "code" : "mo",
    "display" : "months"
  },
  {
    "code" : "a",
    "display" : "years"
  },
  {
    "code" : "none",
    "display" : "none"
  }]
}

```
