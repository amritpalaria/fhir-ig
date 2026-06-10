# 314e Specimen - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e Specimen 

 
314e-constrained Specimen profile derived from US Core Specimen. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/specimen-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-specimen-314e.csv), [Excel](../StructureDefinition-specimen-314e.xlsx), [Schematron](../StructureDefinition-specimen-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "specimen-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/specimen-314e",
  "version" : "1.0.0",
  "name" : "Specimen314e",
  "title" : "314e Specimen",
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
  "description" : "314e-constrained Specimen profile derived from US Core Specimen.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.extension",
      "path" : "Specimen.extension",
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
      "id" : "Specimen.extension:additionalInfo",
      "path" : "Specimen.extension",
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
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Specimen.accessionIdentifier",
      "path" : "Specimen.accessionIdentifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/Substance",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"],
        "_targetProfile" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : true
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        }]
      }]
    },
    {
      "id" : "Specimen.parent",
      "path" : "Specimen.parent",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }]
    },
    {
      "id" : "Specimen.request",
      "path" : "Specimen.request",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }]
    },
    {
      "id" : "Specimen.collection.collector",
      "path" : "Specimen.collection.collector",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "Specimen.collection.collected[x]",
      "path" : "Specimen.collection.collected[x]",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      },
      {
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "Specimen.collection.duration",
      "path" : "Specimen.collection.duration",
      "type" : [{
        "code" : "Duration",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/duration-314e"]
      }]
    },
    {
      "id" : "Specimen.collection.quantity",
      "path" : "Specimen.collection.quantity",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Specimen.collection.method",
      "path" : "Specimen.collection.method",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Specimen.collection.bodySite",
      "path" : "Specimen.collection.bodySite",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Specimen.collection.fastingStatus[x]",
      "path" : "Specimen.collection.fastingStatus[x]",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      },
      {
        "code" : "Duration",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/duration-314e"]
      }]
    },
    {
      "id" : "Specimen.processing.procedure",
      "path" : "Specimen.processing.procedure",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Specimen.processing.additive",
      "path" : "Specimen.processing.additive",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "Specimen.processing.time[x]",
      "path" : "Specimen.processing.time[x]",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      },
      {
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "Specimen.container.identifier",
      "path" : "Specimen.container.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Specimen.container.type",
      "path" : "Specimen.container.type",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Specimen.container.capacity",
      "path" : "Specimen.container.capacity",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Specimen.container.specimenQuantity",
      "path" : "Specimen.container.specimenQuantity",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Specimen.container.additive[x]",
      "path" : "Specimen.container.additive[x]",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      },
      {
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "Specimen.condition",
      "path" : "Specimen.condition",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Specimen.note",
      "path" : "Specimen.note",
      "type" : [{
        "code" : "Annotation",
        "profile" : ["http://314e.com/fhir/StructureDefinition/annotation-314e"]
      }]
    }]
  }
}

```
