# 314e Microbiology Observation - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e Microbiology Observation 

 
314e profile for microbiology laboratory observations. 

**Usages:**

* Derived from this Profile: [314e Antimicrobial Susceptibility Observation](StructureDefinition-observation-antimicrobial-susceptibility-314e.md) and [314e Microorganism Observation](StructureDefinition-observation-microorganism-314e.md)
* Refer to this Profile: [314e Microbiology Observation](StructureDefinition-observation-microbiology-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/observation-microbiology-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-observation-microbiology-314e.csv), [Excel](../StructureDefinition-observation-microbiology-314e.xlsx), [Schematron](../StructureDefinition-observation-microbiology-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "observation-microbiology-314e",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-primaryCodePath",
    "valueString" : "code"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-isIncluded",
    "valueBoolean" : true
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-isRetrievable",
    "valueBoolean" : true
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-label",
    "valueString" : "LaboratoryResultObservation"
  }],
  "url" : "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e",
  "version" : "1.0.0",
  "name" : "ObservationMicrobiology314e",
  "title" : "314e Microbiology Observation",
  "status" : "active",
  "date" : "2026-06-10T16:33:40+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile for microbiology laboratory observations.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.category:labSubcategory",
      "path" : "Observation.category",
      "sliceName" : "labSubcategory",
      "short" : "Required microbiology classification",
      "definition" : "Required laboratory microbiology test classification\nfor the observation.",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://314e.com/fhir/CodeSystem/lab-category-subcategory-314e",
          "code" : "MICV"
        }]
      }
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"]
      }]
    },
    {
      "id" : "Observation.hasMember:childObservation",
      "path" : "Observation.hasMember",
      "sliceName" : "childObservation",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"]
      }]
    }]
  }
}

```
