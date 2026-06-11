# Patient Mother's Name - 314e FHIR Implementation Guide v1.0.0

## Extension: Patient Mother's Name 

Applied directly at the root level of the Patient resource to store the mother's name of the patient.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Patient](StructureDefinition-patient-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/patient-mothersName)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-patient-mothersName.csv), [Excel](../StructureDefinition-patient-mothersName.xlsx), [Schematron](../StructureDefinition-patient-mothersName.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-mothersName",
  "url" : "http://314e.com/fhir/StructureDefinition/patient-mothersName",
  "version" : "1.0.0",
  "name" : "PatientMothersName",
  "title" : "Patient Mother's Name",
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
  "description" : "Applied directly at the root level of the Patient resource to store\nthe mother's name of the patient.",
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
      "short" : "Patient Mother's Name",
      "definition" : "Applied directly at the root level of the Patient resource to store\nthe mother's name of the patient."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/patient-mothersName"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Mother's name of the patient",
      "definition" : "The name of the patient's mother as recorded in the source system.",
      "min" : 1,
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/humanname-314e"]
      }]
    }]
  }
}

```
