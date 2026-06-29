# Element Additional Info - 314e FHIR Implementation Guide v1.0.0

## Extension: Element Additional Info 

Applied to any FHIR element. Carries additional information associated with a specific FHIR element that is not represented by the standard element definition.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/element-additionalInfo)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-element-additionalInfo.csv), [Excel](../StructureDefinition-element-additionalInfo.xlsx), [Schematron](../StructureDefinition-element-additionalInfo.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "element-additionalInfo",
  "url" : "http://314e.com/fhir/StructureDefinition/element-additionalInfo",
  "version" : "1.0.0",
  "name" : "ElementAdditionalInfo",
  "title" : "Element Additional Info",
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
  "description" : "Applied to any FHIR element. Carries additional information associated\nwith a specific FHIR element that is not represented by the standard\nelement definition.",
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
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Element Additional Info",
      "definition" : "Applied to any FHIR element. Carries additional information associated\nwith a specific FHIR element that is not represented by the standard\nelement definition."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/element-additionalInfo"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Reference to additional information for this element",
      "definition" : "Reference to an Observation resource that carries additional or non-standard\ninformation associated with a specific FHIR element beyond what the standard\nelement definition supports.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/observation-314e"]
      }]
    }]
  }
}

```
