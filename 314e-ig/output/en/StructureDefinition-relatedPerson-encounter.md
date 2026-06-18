# Related Person Encounter - 314e FHIR Implementation Guide v1.0.0

## Extension: Related Person Encounter 

Applied at the root level of the RelatedPerson resource. References the encounter with which a related person is associated.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e RelatedPerson](StructureDefinition-relatedperson-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/relatedPerson-encounter)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-relatedPerson-encounter.csv), [Excel](../StructureDefinition-relatedPerson-encounter.xlsx), [Schematron](../StructureDefinition-relatedPerson-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "relatedPerson-encounter",
  "url" : "http://314e.com/fhir/StructureDefinition/relatedPerson-encounter",
  "version" : "1.0.0",
  "name" : "RelatedPersonEncounter",
  "title" : "Related Person Encounter",
  "status" : "active",
  "date" : "2026-06-18T16:14:31+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Applied at the root level of the RelatedPerson resource. References the\nencounter with which a related person is associated.",
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
    "expression" : "RelatedPerson"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Related Person Encounter",
      "definition" : "Applied at the root level of the RelatedPerson resource. References the\nencounter with which a related person is associated."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/relatedPerson-encounter"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Encounter associated with the related person",
      "definition" : "Reference to the Encounter resource with which this related person is associated.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"]
      }]
    }]
  }
}

```
