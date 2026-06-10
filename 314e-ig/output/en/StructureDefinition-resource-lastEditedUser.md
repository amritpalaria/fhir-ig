# Resource Last Edited User - 314e FHIR Implementation Guide v1.0.0

## Extension: Resource Last Edited User 

Applied at the root level of clinical resources. Stores the reference of the person who last edited or modified the resource.

Standard FHIR resources generally have no "last edited by" field — only recorder (who first recorded it) and asserter (who asserted it clinically). This extension captures an audit trail entry for the most recent editor.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e AllergyIntolerance](StructureDefinition-allergyintolerance-314e.md), [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md) and [314e Immunization](StructureDefinition-immunization-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/resource-lastEditedUser)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-resource-lastEditedUser.csv), [Excel](../StructureDefinition-resource-lastEditedUser.xlsx), [Schematron](../StructureDefinition-resource-lastEditedUser.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "resource-lastEditedUser",
  "url" : "http://314e.com/fhir/StructureDefinition/resource-lastEditedUser",
  "version" : "1.0.0",
  "name" : "ResourceLastEditedUser",
  "title" : "Resource Last Edited User",
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
  "description" : "Applied at the root level of clinical resources. Stores the reference of the\nperson who last edited or modified the resource.\n\nStandard FHIR resources generally have no \"last edited by\" field — only\nrecorder (who first recorded it) and asserter (who asserted it clinically).\nThis extension captures an audit trail entry for the most recent editor.",
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
      "short" : "Resource Last Edited User",
      "definition" : "Applied at the root level of clinical resources. Stores the reference of the\nperson who last edited or modified the resource.\n\nStandard FHIR resources generally have no \"last edited by\" field — only\nrecorder (who first recorded it) and asserter (who asserted it clinically).\nThis extension captures an audit trail entry for the most recent editor."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/resource-lastEditedUser"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Person who last edited the resource",
      "definition" : "Reference to the Practitioner, Patient, Person, or RelatedPerson who most\nrecently edited or modified this resource.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"]
      }]
    }]
  }
}

```
