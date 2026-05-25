# 314e Time Exactness Units ValueSet - 314e FHIR Implementation Guide v1.0.0

## ValueSet: 314e Time Exactness Units ValueSet 

 
Allowed exactness/ accurate precision units for dateTime, time, and instant precision indicators. 

 **References** 

* [314e Date/Time Accuracy](StructureDefinition-datetime-accuracy-314e.md)
* [314e Time Accuracy](StructureDefinition-time-accuracy-314e.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "time-accuracy-units-vs",
  "url" : "http://314e.com/fhir/ValueSet/time-accuracy-units",
  "version" : "1.0.0",
  "name" : "TimeAccuracyUnitsVS314E",
  "title" : "314e Time Exactness Units ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T14:14:21+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Allowed exactness/ accurate precision units for dateTime, time, and instant precision indicators.",
  "compose" : {
    "include" : [{
      "system" : "http://314e.com/fhir/CodeSystem/time-precision-units"
    }]
  }
}

```
