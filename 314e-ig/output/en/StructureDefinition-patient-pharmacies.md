# Patient Pharmacies - 314e FHIR Implementation Guide v1.0.0

## Extension: Patient Pharmacies 

Applied at the root level of the Patient resource. Stores one or more preferred pharmacies linked to the patient as references to Organization resources.

A patient can have multiple pharmacies — each gets its own extension instance.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Patient](StructureDefinition-patient-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/patient-pharmacies)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-patient-pharmacies.csv), [Excel](../StructureDefinition-patient-pharmacies.xlsx), [Schematron](../StructureDefinition-patient-pharmacies.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-pharmacies",
  "url" : "http://314e.com/fhir/StructureDefinition/patient-pharmacies",
  "version" : "1.0.0",
  "name" : "PatientPharmacies",
  "title" : "Patient Pharmacies",
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
  "description" : "Applied at the root level of the Patient resource. Stores one or more\npreferred pharmacies linked to the patient as references to Organization\nresources.\n\nA patient can have multiple pharmacies — each gets its own extension\ninstance.",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Patient Pharmacies",
      "definition" : "Applied at the root level of the Patient resource. Stores one or more\npreferred pharmacies linked to the patient as references to Organization\nresources.\n\nA patient can have multiple pharmacies — each gets its own extension\ninstance."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/patient-pharmacies"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Preferred pharmacy linked to the patient",
      "definition" : "Reference to an Organization resource representing a preferred pharmacy\nfor the patient. Multiple preferred pharmacies are represented using\nmultiple instances of this extension.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"]
      }]
    }]
  }
}

```
