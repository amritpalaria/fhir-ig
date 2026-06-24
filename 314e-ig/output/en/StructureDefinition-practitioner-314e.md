# 314e Practitioner - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e Practitioner 

 
314e-constrained Practitioner profile derived from QI-Core Practitioner. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* Refer to this Profile: [314e Account](StructureDefinition-account-314e.md), [314e AllergyIntolerance](StructureDefinition-allergyintolerance-314e.md), [314e Appointment](StructureDefinition-appointment-314e.md), [314e CarePlan](StructureDefinition-careplan-314e.md)... Show 36 more, [314e CareTeam](StructureDefinition-careteam-314e.md), [314e ClinicalImpression](StructureDefinition-clinicalimpression-314e.md), [314e CommunicationRequest](StructureDefinition-communicationrequest-314e.md), [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e Contract](StructureDefinition-contract-314e.md), [314e DetectedIssue](StructureDefinition-detectedissue-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e Encounter](StructureDefinition-encounter-314e.md), [314e Episode Of Care](StructureDefinition-episodeofcare-314e.md), [314e Goal](StructureDefinition-goal-314e.md), [314e Group](StructureDefinition-group-314e.md), [314e ImagingStudy](StructureDefinition-imagingstudy-314e.md), [314e Immunization](StructureDefinition-immunization-314e.md), [314e Media](StructureDefinition-media-314e.md), [314e MedicationAdministration](StructureDefinition-medicationadministration-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e NutritionOrder](StructureDefinition-nutritionorder-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Patient](StructureDefinition-patient-314e.md), [314e PractitionerRole](StructureDefinition-practitionerrole-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [314e QuestionnaireResponse](StructureDefinition-questionnaireresponse-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md), [314e Schedule](StructureDefinition-schedule-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md), [314e Specimen](StructureDefinition-specimen-314e.md), [314e Task](StructureDefinition-task-314e.md) and [314e VisionPrescription](StructureDefinition-visionprescription-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/practitioner-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-practitioner-314e.csv), [Excel](../StructureDefinition-practitioner-314e.xlsx), [Schematron](../StructureDefinition-practitioner-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "practitioner-314e",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-isIncluded",
    "valueBoolean" : true
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-isRetrievable",
    "valueBoolean" : true
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-label",
    "valueString" : "Practitioner"
  }],
  "url" : "http://314e.com/fhir/StructureDefinition/practitioner-314e",
  "version" : "1.0.0",
  "name" : "Practitioner314e",
  "title" : "314e Practitioner",
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
  "description" : "314e-constrained Practitioner profile derived from QI-Core Practitioner.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
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
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.meta",
      "path" : "Practitioner.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "Practitioner.extension",
      "path" : "Practitioner.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.extension:additionalInfo",
      "path" : "Practitioner.extension",
      "sliceName" : "additionalInfo",
      "short" : "Supplementary information for this resource",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/resource-additionalInfo"]
      }]
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Practitioner.identifier:NPI",
      "path" : "Practitioner.identifier",
      "sliceName" : "NPI",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Practitioner.identifier:ein",
      "path" : "Practitioner.identifier",
      "sliceName" : "ein",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/humanname-314e"]
      }]
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/contactpoint-314e"]
      }]
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/address-314e"]
      }]
    },
    {
      "id" : "Practitioner.photo",
      "path" : "Practitioner.photo",
      "type" : [{
        "code" : "Attachment",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-314e"]
      }]
    },
    {
      "id" : "Practitioner.qualification.identifier",
      "path" : "Practitioner.qualification.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Practitioner.qualification.code",
      "path" : "Practitioner.qualification.code",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Practitioner.qualification.period",
      "path" : "Practitioner.qualification.period",
      "type" : [{
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "Practitioner.qualification.issuer",
      "path" : "Practitioner.qualification.issuer",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/organization-314e"]
      }]
    },
    {
      "id" : "Practitioner.communication",
      "path" : "Practitioner.communication",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    }]
  }
}

```
