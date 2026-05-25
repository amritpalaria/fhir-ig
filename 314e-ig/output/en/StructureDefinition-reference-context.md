# Reference Context - 314e FHIR Implementation Guide v1.0.0

## Extension: Reference Context 

Provides additional semantic context describing the role, capacity, purpose, or functional meaning of a Reference.

This extension is intended for use in situations where the base FHIR element is broadly defined and the precise meaning or role of the referenced resource requires further clarification.

For example, the performer element of an Observation may reference practitioners participating in different capacities such as technician, phlebotomist, or pathologist.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Reference](StructureDefinition-reference-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/reference-context)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-reference-context.csv), [Excel](../StructureDefinition-reference-context.xlsx), [Schematron](../StructureDefinition-reference-context.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "reference-context",
  "url" : "http://314e.com/fhir/StructureDefinition/reference-context",
  "version" : "1.0.0",
  "name" : "ReferenceContext",
  "title" : "Reference Context",
  "status" : "draft",
  "date" : "2026-05-25T12:07:44+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Provides additional semantic context describing the role,\ncapacity, purpose, or functional meaning of a Reference.\n\nThis extension is intended for use in situations where the\nbase FHIR element is broadly defined and the precise meaning\nor role of the referenced resource requires further clarification.\n\nFor example, the performer element of an Observation may\nreference practitioners participating in different capacities\nsuch as technician, phlebotomist, or pathologist.",
  "purpose" : "Allows fine-grained semantic qualification of references\nwhere the underlying FHIR element definition is intentionally broad.",
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
    "expression" : "Reference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Reference Context",
      "definition" : "Provides additional semantic context describing the role,\ncapacity, purpose, or functional meaning of a Reference.\n\nThis extension is intended for use in situations where the\nbase FHIR element is broadly defined and the precise meaning\nor role of the referenced resource requires further clarification.\n\nFor example, the performer element of an Observation may\nreference practitioners participating in different capacities\nsuch as technician, phlebotomist, or pathologist."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/reference-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Role, capacity, purpose, or semantic context of the reference",
      "definition" : "Describes the semantic role, capacity, purpose,\nor contextual meaning associated with the referenced resource.",
      "comment" : "The interpretation of the reference-context extension is dependent\nupon the semantics of the containing element.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    }]
  }
}

```
