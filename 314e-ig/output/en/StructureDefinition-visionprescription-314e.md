# 314e VisionPrescription - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e VisionPrescription 

 
314e-constrained VisionPrescription profile derived from FHIR R4 VisionPrescription. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* Refer to this Profile: [314e CarePlan](StructureDefinition-careplan-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md)... Show 7 more, [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Task](StructureDefinition-task-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/visionprescription-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-visionprescription-314e.csv), [Excel](../StructureDefinition-visionprescription-314e.xlsx), [Schematron](../StructureDefinition-visionprescription-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "visionprescription-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/visionprescription-314e",
  "version" : "1.0.0",
  "name" : "VisionPrescription314e",
  "title" : "314e VisionPrescription",
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
  "description" : "314e-constrained VisionPrescription profile derived from FHIR R4 VisionPrescription.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "VisionPrescription",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/VisionPrescription",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "VisionPrescription",
      "path" : "VisionPrescription"
    },
    {
      "id" : "VisionPrescription.meta",
      "path" : "VisionPrescription.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.extension",
      "path" : "VisionPrescription.extension",
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
      "id" : "VisionPrescription.extension:additionalInfo",
      "path" : "VisionPrescription.extension",
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
      "id" : "VisionPrescription.identifier",
      "path" : "VisionPrescription.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.patient",
      "path" : "VisionPrescription.patient",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.encounter",
      "path" : "VisionPrescription.encounter",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/encounter-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.dateWritten",
      "path" : "VisionPrescription.dateWritten",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.prescriber",
      "path" : "VisionPrescription.prescriber",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.lensSpecification.product",
      "path" : "VisionPrescription.lensSpecification.product",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.lensSpecification.sphere",
      "path" : "VisionPrescription.lensSpecification.sphere",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.lensSpecification.cylinder",
      "path" : "VisionPrescription.lensSpecification.cylinder",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.lensSpecification.prism.amount",
      "path" : "VisionPrescription.lensSpecification.prism.amount",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.lensSpecification.add",
      "path" : "VisionPrescription.lensSpecification.add",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.lensSpecification.power",
      "path" : "VisionPrescription.lensSpecification.power",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.lensSpecification.backCurve",
      "path" : "VisionPrescription.lensSpecification.backCurve",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.lensSpecification.diameter",
      "path" : "VisionPrescription.lensSpecification.diameter",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.lensSpecification.duration",
      "path" : "VisionPrescription.lensSpecification.duration",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "VisionPrescription.lensSpecification.note",
      "path" : "VisionPrescription.lensSpecification.note",
      "type" : [{
        "code" : "Annotation",
        "profile" : ["http://314e.com/fhir/StructureDefinition/annotation-314e"]
      }]
    }]
  }
}

```
