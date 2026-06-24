# Patient Employment Status - 314e FHIR Implementation Guide v1.0.0

## Extension: Patient Employment Status 

Applied at the root level of the Patient resource. Stores the patient's current employment status or occupation.

This is a custom field added to the Patient record to capture what the patient does for work or their current employment situation.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Patient](StructureDefinition-patient-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/patient-employmentStatus)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-patient-employmentStatus.csv), [Excel](../StructureDefinition-patient-employmentStatus.xlsx), [Schematron](../StructureDefinition-patient-employmentStatus.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-employmentStatus",
  "url" : "http://314e.com/fhir/StructureDefinition/patient-employmentStatus",
  "version" : "1.0.0",
  "name" : "PatientEmploymentStatus",
  "title" : "Patient Employment Status",
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
  "description" : "Applied at the root level of the Patient resource. Stores the patient's\ncurrent employment status or occupation.\n\nThis is a custom field added to the Patient record to capture what the\npatient does for work or their current employment situation.",
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
      "short" : "Patient Employment Status",
      "definition" : "Applied at the root level of the Patient resource. Stores the patient's\ncurrent employment status or occupation.\n\nThis is a custom field added to the Patient record to capture what the\npatient does for work or their current employment situation."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/patient-employmentStatus"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Patient's current employment status",
      "definition" : "Represents the patient's current employment status or occupational\ncategory as recorded in the source system.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    }]
  }
}

```
