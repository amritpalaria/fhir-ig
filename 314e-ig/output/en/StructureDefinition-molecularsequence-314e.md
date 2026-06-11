# 314e MolecularSequence - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e MolecularSequence 

 
314e-constrained MolecularSequence profile derived from FHIR R4 MolecularSequence. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/molecularsequence-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-molecularsequence-314e.csv), [Excel](../StructureDefinition-molecularsequence-314e.xlsx), [Schematron](../StructureDefinition-molecularsequence-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "molecularsequence-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/molecularsequence-314e",
  "version" : "1.0.0",
  "name" : "MolecularSequence314e",
  "title" : "314e MolecularSequence",
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
  "description" : "314e-constrained MolecularSequence profile derived from FHIR R4 MolecularSequence.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MolecularSequence",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MolecularSequence",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MolecularSequence",
      "path" : "MolecularSequence"
    },
    {
      "id" : "MolecularSequence.meta",
      "path" : "MolecularSequence.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.extension",
      "path" : "MolecularSequence.extension",
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
      "id" : "MolecularSequence.extension:additionalInfo",
      "path" : "MolecularSequence.extension",
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
      "id" : "MolecularSequence.identifier",
      "path" : "MolecularSequence.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.patient",
      "path" : "MolecularSequence.patient",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "MolecularSequence.specimen",
      "path" : "MolecularSequence.specimen",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }]
    },
    {
      "id" : "MolecularSequence.device",
      "path" : "MolecularSequence.device",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "MolecularSequence.performer",
      "path" : "MolecularSequence.performer",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "MolecularSequence.quantity",
      "path" : "MolecularSequence.quantity",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/quantity-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.referenceSeq.chromosome",
      "path" : "MolecularSequence.referenceSeq.chromosome",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.referenceSeq.referenceSeqId",
      "path" : "MolecularSequence.referenceSeq.referenceSeqId",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.quality.standardSequence",
      "path" : "MolecularSequence.quality.standardSequence",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.quality.score",
      "path" : "MolecularSequence.quality.score",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/quantity-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.quality.method",
      "path" : "MolecularSequence.quality.method",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.quality.truthTP",
      "path" : "MolecularSequence.quality.truthTP",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.quality.queryTP",
      "path" : "MolecularSequence.quality.queryTP",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.quality.truthFN",
      "path" : "MolecularSequence.quality.truthFN",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.quality.queryFP",
      "path" : "MolecularSequence.quality.queryFP",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.quality.precision",
      "path" : "MolecularSequence.quality.precision",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.quality.recall",
      "path" : "MolecularSequence.quality.recall",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.quality.fScore",
      "path" : "MolecularSequence.quality.fScore",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "MolecularSequence.pointer",
      "path" : "MolecularSequence.pointer",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MolecularSequence"]
      }]
    },
    {
      "id" : "MolecularSequence.structureVariant.variantType",
      "path" : "MolecularSequence.structureVariant.variantType",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    }]
  }
}

```
