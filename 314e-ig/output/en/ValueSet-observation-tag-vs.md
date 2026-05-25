# Observation Tag ValueSet - 314e FHIR Implementation Guide v1.0.0

## ValueSet: Observation Tag ValueSet 

 
Semantic tags used in meta.tag to qualify DiagnosticReport and Observation resources participating in hierarchical parent-child resource structures. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "observation-tag-vs",
  "url" : "http://314e.com/fhir/ValueSet/observation-tag",
  "version" : "1.0.0",
  "name" : "ObservationTagVS",
  "title" : "Observation Tag ValueSet",
  "status" : "active",
  "date" : "2026-05-25T16:36:06+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Semantic tags used in meta.tag to qualify DiagnosticReport and\nObservation resources participating in hierarchical parent-child\nresource structures.",
  "compose" : {
    "include" : [{
      "system" : "http://314e.com/fhir/CodeSystem/observation-tag"
    }]
  }
}

```
