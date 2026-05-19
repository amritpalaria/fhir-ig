# 314e Time Precision Units ValueSet - 314e FHIR Implementation Guide v1.0.0

## ValueSet: 314e Time Precision Units ValueSet 

 
Allowed precision units for dateTime, time, and instant precision indicators. 

 **References** 

* [314e Date/Time Precision](StructureDefinition-datetime-precision-314e.md)
* [314e Time Precision](StructureDefinition-time-precision-314e.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "time-precision-units-vs",
  "url" : "http://314e.com/fhir/ValueSet/time-precision-units",
  "version" : "1.0.0",
  "name" : "TimePrecisionUnitsVS314E",
  "title" : "314e Time Precision Units ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-19T11:54:54+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Allowed precision units for dateTime, time, and instant precision indicators.",
  "compose" : {
    "include" : [{
      "system" : "http://314e.com/fhir/CodeSystem/time-precision-units"
    }],
    "exclude" : [{
      "system" : "http://314e.com/fhir/CodeSystem/time-precision-units",
      "concept" : [{
        "code" : "none"
      }]
    }]
  }
}

```
