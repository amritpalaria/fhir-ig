# 314e Antimicrobial Susceptibility Observation - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e Antimicrobial Susceptibility Observation 

 
314e profile for antimicrobial susceptibility observations. 

**Usages:**

* Refer to this Profile: [314e Microorganism Observation](StructureDefinition-observation-microorganism-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/observation-antimicrobial-susceptibility-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-observation-antimicrobial-susceptibility-314e.csv), [Excel](../StructureDefinition-observation-antimicrobial-susceptibility-314e.xlsx), [Schematron](../StructureDefinition-observation-antimicrobial-susceptibility-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "observation-antimicrobial-susceptibility-314e",
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
  "url" : "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e",
  "version" : "1.0.0",
  "name" : "ObservationAntimicrobialSusceptibility314e",
  "title" : "314e Antimicrobial Susceptibility Observation",
  "status" : "active",
  "date" : "2026-06-11T14:17:09+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile for antimicrobial susceptibility observations.",
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
  "baseDefinition" : "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.code.coding:antimicrobialSusceptibilityCode",
      "path" : "Observation.code.coding",
      "sliceName" : "antimicrobialSusceptibilityCode",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding:antimicrobialSusceptibilityCode.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.code.coding:antimicrobialSusceptibilityCode.code",
      "path" : "Observation.code.coding.code",
      "fixedCode" : "365705006"
    },
    {
      "id" : "Observation.code.coding:antimicrobialSusceptibilityCode.display",
      "path" : "Observation.code.coding.display",
      "fixedString" : "Antimicrobial susceptibility - finding"
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "min" : 1
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://314e.com/fhir/ig/ValueSet/antimicrobial-susceptibility-testing-vs"
      }
    }]
  }
}

```
