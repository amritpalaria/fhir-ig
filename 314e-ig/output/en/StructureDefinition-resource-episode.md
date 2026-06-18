# Resource Episode - 314e FHIR Implementation Guide v1.0.0

## Extension: Resource Episode 

Applied directly at the root level of clinical resources to store an EpisodeOfCare reference.

This extension links a resource to its associated episode of care when that association is not otherwise expressible through standard FHIR elements.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e AllergyIntolerance](StructureDefinition-allergyintolerance-314e.md), [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md) and [314e Immunization](StructureDefinition-immunization-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/resource-episode)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-resource-episode.csv), [Excel](../StructureDefinition-resource-episode.xlsx), [Schematron](../StructureDefinition-resource-episode.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "resource-episode",
  "url" : "http://314ecorp.com/fhir/StructureDefinition/resource-episode",
  "version" : "1.0.0",
  "name" : "ResourceEpisode",
  "title" : "Resource Episode",
  "status" : "active",
  "date" : "2026-06-18T16:14:31+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Applied directly at the root level of clinical resources to store an\nEpisodeOfCare reference.\n\nThis extension links a resource to its associated episode of care when\nthat association is not otherwise expressible through standard FHIR elements.",
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
    "expression" : "DomainResource"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Resource Episode",
      "definition" : "Applied directly at the root level of clinical resources to store an\nEpisodeOfCare reference.\n\nThis extension links a resource to its associated episode of care when\nthat association is not otherwise expressible through standard FHIR elements."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314ecorp.com/fhir/StructureDefinition/resource-episode"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Associated episode of care",
      "definition" : "Reference to the EpisodeOfCare resource with which this resource is associated.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"]
      }]
    }]
  }
}

```
