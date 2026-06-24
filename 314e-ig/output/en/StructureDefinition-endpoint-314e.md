# 314e Endpoint - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e Endpoint 

 
314e-constrained Endpoint profile derived from FHIR R4 Endpoint. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* Refer to this Profile: [314e CarePlan](StructureDefinition-careplan-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md)... Show 12 more, [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e HealthcareService](StructureDefinition-healthcareservice-314e.md), [314e ImagingStudy](StructureDefinition-imagingstudy-314e.md), [314e Location](StructureDefinition-location-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Organization](StructureDefinition-organization-314e.md), [314e PractitionerRole](StructureDefinition-practitionerrole-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Task](StructureDefinition-task-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/endpoint-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-endpoint-314e.csv), [Excel](../StructureDefinition-endpoint-314e.xlsx), [Schematron](../StructureDefinition-endpoint-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "endpoint-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/endpoint-314e",
  "version" : "1.0.0",
  "name" : "Endpoint314e",
  "title" : "314e Endpoint",
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
  "description" : "314e-constrained Endpoint profile derived from FHIR R4 Endpoint.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Endpoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Endpoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Endpoint",
      "path" : "Endpoint"
    },
    {
      "id" : "Endpoint.meta",
      "path" : "Endpoint.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "Endpoint.extension",
      "path" : "Endpoint.extension",
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
      "id" : "Endpoint.extension:additionalInfo",
      "path" : "Endpoint.extension",
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
      "id" : "Endpoint.identifier",
      "path" : "Endpoint.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Endpoint.connectionType",
      "path" : "Endpoint.connectionType",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/coding-314e"]
      }]
    },
    {
      "id" : "Endpoint.managingOrganization",
      "path" : "Endpoint.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/organization-314e"]
      }]
    },
    {
      "id" : "Endpoint.contact",
      "path" : "Endpoint.contact",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/contactpoint-314e"]
      }]
    },
    {
      "id" : "Endpoint.period",
      "path" : "Endpoint.period",
      "type" : [{
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "Endpoint.payloadType",
      "path" : "Endpoint.payloadType",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    }]
  }
}

```
