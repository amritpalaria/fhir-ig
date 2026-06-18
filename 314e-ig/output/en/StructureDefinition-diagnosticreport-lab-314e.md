# 314e DiagnosticReport Laboratory Results - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e DiagnosticReport Laboratory Results 

 
314e-constrained DiagnosticReport profile for laboratory results reporting, derived from QI-Core DiagnosticReport Profile for Laboratory Results Reporting. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/diagnosticreport-lab-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-diagnosticreport-lab-314e.csv), [Excel](../StructureDefinition-diagnosticreport-lab-314e.xlsx), [Schematron](../StructureDefinition-diagnosticreport-lab-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "diagnosticreport-lab-314e",
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
    "valueString" : "DiagnosticReportLab"
  }],
  "url" : "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e",
  "version" : "1.0.0",
  "name" : "DiagnosticReportLab314e",
  "title" : "314e DiagnosticReport Laboratory Results",
  "status" : "active",
  "date" : "2026-06-18T13:36:33+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e-constrained DiagnosticReport profile for laboratory results reporting,\nderived from QI-Core DiagnosticReport Profile for Laboratory Results Reporting.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-lab",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.meta",
      "path" : "DiagnosticReport.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "DiagnosticReport.extension",
      "path" : "DiagnosticReport.extension",
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
      "id" : "DiagnosticReport.extension:additionalInfo",
      "path" : "DiagnosticReport.extension",
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
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-careplan",
        "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationrecommendation",
        "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationrequest",
        "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-nutritionorder",
        "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest"]
      }]
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DiagnosticReport.category:LaboratorySlice",
      "path" : "DiagnosticReport.category",
      "sliceName" : "LaboratorySlice",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-patient"]
      }]
    },
    {
      "id" : "DiagnosticReport.encounter",
      "path" : "DiagnosticReport.encounter",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter"]
      }]
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        }],
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "type" : [{
        "code" : "instant",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/instant-314e"]
      }]
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitioner",
        "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitionerrole",
        "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-organization"]
      }]
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }]
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }]
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-observation-lab"]
      }]
    },
    {
      "id" : "DiagnosticReport.imagingStudy",
      "path" : "DiagnosticReport.imagingStudy",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ImagingStudy"]
      }]
    },
    {
      "id" : "DiagnosticReport.media.link",
      "path" : "DiagnosticReport.media.link",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Media"]
      }]
    },
    {
      "id" : "DiagnosticReport.conclusionCode",
      "path" : "DiagnosticReport.conclusionCode",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "title"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "DiagnosticReport.presentedForm:report",
      "path" : "DiagnosticReport.presentedForm",
      "sliceName" : "report",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-314e"]
      }]
    },
    {
      "id" : "DiagnosticReport.presentedForm:report.title",
      "path" : "DiagnosticReport.presentedForm.title",
      "min" : 1,
      "patternString" : "Entire report as issued"
    },
    {
      "id" : "DiagnosticReport.presentedForm:notes",
      "path" : "DiagnosticReport.presentedForm",
      "sliceName" : "notes",
      "short" : "Annotation/ notes associated with the diagnostic report",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-314e"]
      }]
    },
    {
      "id" : "DiagnosticReport.presentedForm:notes.title",
      "path" : "DiagnosticReport.presentedForm.title",
      "min" : 1,
      "patternString" : "Annotation/ notes associated with the diagnostic report"
    }]
  }
}

```
