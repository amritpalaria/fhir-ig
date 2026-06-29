# 314e Annotation - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Annotation 

 
A constrained Annotation datatype profile supporting attachment- based annotation content through the annotation-attachment extension. 
This profile enables annotation or note content to be represented using externally stored attachments in addition to standard inline Annotation.text content. 

**Usages:**

* Use this DataType Profile: [314e AllergyIntolerance](StructureDefinition-allergyintolerance-314e.md), [314e CarePlan](StructureDefinition-careplan-314e.md), [314e CareTeam](StructureDefinition-careteam-314e.md), [314e ClinicalImpression](StructureDefinition-clinicalimpression-314e.md)... Show 22 more, [314e CommunicationRequest](StructureDefinition-communicationrequest-314e.md), [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e Contract](StructureDefinition-contract-314e.md), [314e Device](StructureDefinition-device-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e Goal](StructureDefinition-goal-314e.md), [314e ImagingStudy](StructureDefinition-imagingstudy-314e.md), [314e Immunization](StructureDefinition-immunization-314e.md), [314e Media](StructureDefinition-media-314e.md), [314e MedicationAdministration](StructureDefinition-medicationadministration-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e NutritionOrder](StructureDefinition-nutritionorder-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md), [314e Specimen](StructureDefinition-specimen-314e.md), [314e Task](StructureDefinition-task-314e.md) and [314e VisionPrescription](StructureDefinition-visionprescription-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/annotation-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-annotation-314e.csv), [Excel](../StructureDefinition-annotation-314e.xlsx), [Schematron](../StructureDefinition-annotation-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "annotation-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/annotation-314e",
  "version" : "1.0.0",
  "name" : "Annotation314e",
  "title" : "314e Annotation",
  "status" : "draft",
  "date" : "2026-06-29T17:18:47+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A constrained Annotation datatype profile supporting attachment-\nbased annotation content through the annotation-attachment extension.\n\nThis profile enables annotation or note content to be represented\nusing externally stored attachments in addition to standard inline\nAnnotation.text content.",
  "purpose" : "Supports annotation workflows in which note/comment content may\nbe externally stored and referenced through attachments.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Annotation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Annotation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Annotation.extension:attachment",
      "path" : "Annotation.extension",
      "sliceName" : "attachment",
      "short" : "Attachment-based annotation content",
      "definition" : "Provides attachment-backed annotation or note content.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/annotation-attachment"]
      }]
    },
    {
      "id" : "Annotation.author[x]",
      "path" : "Annotation.author[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Annotation.author[x]:authorReference",
      "path" : "Annotation.author[x]",
      "sliceName" : "authorReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e"]
      }]
    },
    {
      "id" : "Annotation.time",
      "path" : "Annotation.time",
      "short" : "Annotation time in UTC with precision support",
      "definition" : "Date/time when the annotation was made.\n\nAll timestamps SHALL be represented in UTC.\nPrecision and approximation extensions may be used.",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    }]
  }
}

```
