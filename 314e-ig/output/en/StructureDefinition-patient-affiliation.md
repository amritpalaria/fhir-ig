# Patient Affiliation - 314e FHIR Implementation Guide v1.0.0

## Extension: Patient Affiliation 

Applied at the root level of the Patient resource. Stores the patient's institutional or organizational affiliation (e.g., hospital network, physician group) using an internal code.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Patient](StructureDefinition-patient-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/patient-affiliation)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-patient-affiliation.csv), [Excel](../StructureDefinition-patient-affiliation.xlsx), [Schematron](../StructureDefinition-patient-affiliation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-affiliation",
  "url" : "http://314e.com/fhir/StructureDefinition/patient-affiliation",
  "version" : "1.0.0",
  "name" : "PatientAffiliation",
  "title" : "Patient Affiliation",
  "status" : "active",
  "date" : "2026-06-29T17:18:47+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Applied at the root level of the Patient resource. Stores the patient's\ninstitutional or organizational affiliation (e.g., hospital network,\nphysician group) using an internal code.",
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
      "short" : "Patient Affiliation",
      "definition" : "Applied at the root level of the Patient resource. Stores the patient's\ninstitutional or organizational affiliation (e.g., hospital network,\nphysician group) using an internal code."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/patient-affiliation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Patient's institutional or organizational affiliation",
      "definition" : "Represents the patient's institutional or organizational affiliation\nsuch as a hospital network or physician group.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    }]
  }
}

```
