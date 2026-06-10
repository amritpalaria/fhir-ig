# 314e Reference - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Reference 

 
A constrained Reference datatype profile supporting semantic qualification of references using the reference-context extension. 
This profile enables references to carry additional information about the role, capacity, purpose, or contextual meaning of the referenced resource. 

**Usages:**

* Use this DataType Profile: [314e AllergyIntolerance](StructureDefinition-allergyintolerance-314e.md), [314e Annotation](StructureDefinition-annotation-314e.md), [314e CarePlan](StructureDefinition-careplan-314e.md), [314e Condition](StructureDefinition-condition-314e.md)... Show 25 more, [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [Cosigner](StructureDefinition-cosigner.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [Element Additional Info](StructureDefinition-element-additionalInfo.md), [314e Encounter](StructureDefinition-encounter-314e.md), [314e Episode Of Care](StructureDefinition-episodeofcare-314e.md), [314e Immunization](StructureDefinition-immunization-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Microbiology Observation](StructureDefinition-observation-microbiology-314e.md), [314e Microorganism Observation](StructureDefinition-observation-microorganism-314e.md), [314e Patient](StructureDefinition-patient-314e.md), [Patient Pharmacies](StructureDefinition-patient-pharmacies.md), [314e Practitioner](StructureDefinition-practitioner-314e.md), [Related Person Encounter](StructureDefinition-relatedPerson-encounter.md), [314e RelatedPerson](StructureDefinition-relatedperson-314e.md), [Resource Additional Info](StructureDefinition-resource-additionalInfo.md), [Resource Episode](StructureDefinition-resource-episode.md), [Resource Last Edited User](StructureDefinition-resource-lastEditedUser.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Specimen](StructureDefinition-specimen-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/reference-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-reference-314e.csv), [Excel](../StructureDefinition-reference-314e.xlsx), [Schematron](../StructureDefinition-reference-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "reference-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/reference-314e",
  "version" : "1.0.0",
  "name" : "Reference314e",
  "title" : "314e Reference",
  "status" : "draft",
  "date" : "2026-06-10T16:33:40+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A constrained Reference datatype profile supporting semantic\nqualification of references using the reference-context extension.\n\nThis profile enables references to carry additional information\nabout the role, capacity, purpose, or contextual meaning of\nthe referenced resource.",
  "purpose" : "Supports semantically qualified references in scenarios where\nFHIR reference elements are intentionally broad or ambiguous.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Reference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Reference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Reference.extension:context",
      "path" : "Reference.extension",
      "sliceName" : "context",
      "short" : "Semantic role or contextual meaning of the reference",
      "definition" : "Provides additional semantic qualification for the reference,\nincluding role, capacity, or contextual purpose.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-context"]
      }]
    },
    {
      "id" : "Reference.identifier",
      "path" : "Reference.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    }]
  }
}

```
