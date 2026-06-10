# Patient Preferred Gender Pronoun - 314e FHIR Implementation Guide v1.0.0

## Extension: Patient Preferred Gender Pronoun 

Applied directly at the root level of the Patient resource to store the patient's preferred gender pronoun.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Patient](StructureDefinition-patient-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/patient-preferredGenderPronoun)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-patient-preferredGenderPronoun.csv), [Excel](../StructureDefinition-patient-preferredGenderPronoun.xlsx), [Schematron](../StructureDefinition-patient-preferredGenderPronoun.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-preferredGenderPronoun",
  "url" : "http://314e.com/fhir/StructureDefinition/patient-preferredGenderPronoun",
  "version" : "1.0.0",
  "name" : "PatientPreferredGenderPronoun",
  "title" : "Patient Preferred Gender Pronoun",
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
  "description" : "Applied directly at the root level of the Patient resource to store the\npatient's preferred gender pronoun.",
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
      "short" : "Patient Preferred Gender Pronoun",
      "definition" : "Applied directly at the root level of the Patient resource to store the\npatient's preferred gender pronoun."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/patient-preferredGenderPronoun"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Patient's preferred gender pronoun",
      "definition" : "The patient's preferred gender pronoun as communicated by the patient\nor their representative.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    }]
  }
}

```
