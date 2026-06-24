# 314e Microorganism Observation - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e Microorganism Observation 

 
314e profile for microorganism observations. 

**Usages:**

* Refer to this Profile: [314e Appointment](StructureDefinition-appointment-314e.md), [314e CarePlan](StructureDefinition-careplan-314e.md), [314e ClinicalImpression](StructureDefinition-clinicalimpression-314e.md), [314e CommunicationRequest](StructureDefinition-communicationrequest-314e.md)... Show 21 more, [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e Contract](StructureDefinition-contract-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e Goal](StructureDefinition-goal-314e.md), [314e Immunization](StructureDefinition-immunization-314e.md), [314e MedicationAdministration](StructureDefinition-medicationadministration-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [314e QuestionnaireResponse](StructureDefinition-questionnaireresponse-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Task](StructureDefinition-task-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/observation-microorganism-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-observation-microorganism-314e.csv), [Excel](../StructureDefinition-observation-microorganism-314e.xlsx), [Schematron](../StructureDefinition-observation-microorganism-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "observation-microorganism-314e",
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
  "url" : "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e",
  "version" : "1.0.0",
  "name" : "ObservationMicroorganism314e",
  "title" : "314e Microorganism Observation",
  "status" : "active",
  "date" : "2026-06-24T16:34:23+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile for microorganism observations.",
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
      "id" : "Observation.code.coding:microorganismCode",
      "path" : "Observation.code.coding",
      "sliceName" : "microorganismCode",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding:microorganismCode.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.code.coding:microorganismCode.code",
      "path" : "Observation.code.coding.code",
      "fixedCode" : "41852-5"
    },
    {
      "id" : "Observation.code.coding:microorganismCode.display",
      "path" : "Observation.code.coding.display",
      "fixedString" : "Microorganism or agent identified in Specimen"
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://314e.com/fhir/ig/ValueSet/microorganism-by-method-vs"
      }
    },
    {
      "id" : "Observation.method.coding:internalCode",
      "path" : "Observation.method.coding",
      "sliceName" : "internalCode",
      "max" : "1"
    },
    {
      "id" : "Observation.hasMember:antimicrobialSusceptibilityObservation",
      "path" : "Observation.hasMember",
      "sliceName" : "antimicrobialSusceptibilityObservation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"]
      }]
    }]
  }
}

```
