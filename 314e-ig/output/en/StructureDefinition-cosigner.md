# Cosigner - 314e FHIR Implementation Guide v1.0.0

## Extension: Cosigner 

Identifies an individual who reviewed, verified, or co-signed the associated clinical document, note, order, or healthcare record.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/cosigner)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cosigner.csv), [Excel](../StructureDefinition-cosigner.xlsx), [Schematron](../StructureDefinition-cosigner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cosigner",
  "url" : "http://314e.com/fhir/StructureDefinition/cosigner",
  "version" : "1.0.0",
  "name" : "Cosigner",
  "title" : "Cosigner",
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
  "description" : "Identifies an individual who reviewed, verified, or co-signed the associated\nclinical document, note, order, or healthcare record.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DomainResource"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Cosigner",
      "definition" : "Identifies an individual who reviewed, verified, or co-signed the associated\nclinical document, note, order, or healthcare record."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/cosigner"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Individual who co-signed the record",
      "definition" : "Reference to the practitioner who reviewed, verified, or co-signed\nthe associated clinical document, note, order, or healthcare record.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"]
      }]
    }]
  }
}

```
