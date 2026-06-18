# 314e Period - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Period 

 
314e profile of the FHIR Period datatype. 
All dateTime values within the Period SHALL conform to the 314e DateTime profile requirements, including UTC normalization and precision handling. 

**Usages:**

* Use this DataType Profile: [314e Account](StructureDefinition-account-314e.md), [314e Address](StructureDefinition-address-314e.md), [314e AllergyIntolerance](StructureDefinition-allergyintolerance-314e.md), [314e Appointment](StructureDefinition-appointment-314e.md)... Show 37 more, [314e CarePlan](StructureDefinition-careplan-314e.md), [314e CareTeam](StructureDefinition-careteam-314e.md), [314e ClinicalImpression](StructureDefinition-clinicalimpression-314e.md), [314e CommunicationRequest](StructureDefinition-communicationrequest-314e.md), [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e ContactPoint](StructureDefinition-contactpoint-314e.md), [314e Contract](StructureDefinition-contract-314e.md), [314e Coverage](StructureDefinition-coverage-314e.md), [314e DataRequirement](StructureDefinition-datarequirement-314e.md), [314e DetectedIssue](StructureDefinition-detectedissue-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e Encounter](StructureDefinition-encounter-314e.md), [314e Endpoint](StructureDefinition-endpoint-314e.md), [314e Episode Of Care](StructureDefinition-episodeofcare-314e.md), [314e Group](StructureDefinition-group-314e.md), [314e HumanName](StructureDefinition-humanname-314e.md), [314e Identifier](StructureDefinition-identifier-314e.md), [314e Media](StructureDefinition-media-314e.md), [314e MedicationAdministration](StructureDefinition-medicationadministration-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Practitioner](StructureDefinition-practitioner-314e.md), [314e PractitionerRole](StructureDefinition-practitionerrole-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [314e RelatedPerson](StructureDefinition-relatedperson-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md), [314e Schedule](StructureDefinition-schedule-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md), [314e Specimen](StructureDefinition-specimen-314e.md), [314e Task](StructureDefinition-task-314e.md) and [314e Timing](StructureDefinition-timing-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/period-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-period-314e.csv), [Excel](../StructureDefinition-period-314e.xlsx), [Schematron](../StructureDefinition-period-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "period-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/period-314e",
  "version" : "1.0.0",
  "name" : "Period314e",
  "title" : "314e Period",
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
  "description" : "314e profile of the FHIR Period datatype.\n\nAll dateTime values within the Period SHALL conform\nto the 314e DateTime profile requirements,\nincluding UTC normalization and precision handling.",
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
  "type" : "Period",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Period",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Period.start",
      "path" : "Period.start",
      "short" : "Starting time with UTC normalization, precision support and inclusive boundary",
      "definition" : "The start of the period. The boundary is inclusive.\n\nAll timestamps SHALL be represented in UTC.\nAdditional extensions may be used to indicate\nusable precision or approximate values.",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "Period.end",
      "path" : "Period.end",
      "short" : "Ending time with UTC normalization, precision support and inclusive boundary",
      "definition" : "The end of the period.  The boundary is inclusive. If the end of the period is missing, it \nmeans no end was known or planned at the time the instance was created. The start may be in \nthe past, and the end date in the future, which means that period is expected/planned to end at that time.\n\nAll timestamps SHALL be represented in UTC.\nAdditional extensions may be used to indicate\nusable precision or approximate values.",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    }]
  }
}

```
