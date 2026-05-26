# Observation Tag CodeSystem - 314e FHIR Implementation Guide v1.0.0

## CodeSystem: Observation Tag CodeSystem 

 
Codes used to qualify DiagnosticReport and Observation resources within hierarchical parent-child result/report structures. 

This Code system is referenced in the definition of the following value sets:

* [ObservationTagVS](ValueSet-observation-tag-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "observation-tag",
  "url" : "http://314e.com/fhir/CodeSystem/observation-tag",
  "version" : "1.0.0",
  "name" : "ObservationTagCS",
  "title" : "Observation Tag CodeSystem",
  "status" : "active",
  "date" : "2026-05-26T19:54:55+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Codes used to qualify DiagnosticReport and Observation resources\nwithin hierarchical parent-child result/report structures.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "super-resource",
    "display" : "Top-level resource with no parents of its own",
    "definition" : "Indicates that, within the hierarchy of resources created through\nparent-child relationships, this resource occupies the top level\nand itself has no parent resource."
  },
  {
    "code" : "unresulted",
    "display" : "Unresulted",
    "definition" : "Indicates that neither this resource nor any recursive descendant\nresource bears a result or report."
  }]
}

```
