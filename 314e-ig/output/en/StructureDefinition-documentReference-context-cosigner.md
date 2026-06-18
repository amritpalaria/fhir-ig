# Document Reference Context Cosigner - 314e FHIR Implementation Guide v1.0.0

## Extension: Document Reference Context Cosigner 

Applied to the context section of a DocumentReference resource. Captures the co-signer of the document — a person who has jointly signed or authenticated the document alongside the primary author.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e DocumentReference](StructureDefinition-documentreference-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/documentReference-context-cosigner)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-documentReference-context-cosigner.csv), [Excel](../StructureDefinition-documentReference-context-cosigner.xlsx), [Schematron](../StructureDefinition-documentReference-context-cosigner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "documentReference-context-cosigner",
  "url" : "http://314e.com/fhir/StructureDefinition/documentReference-context-cosigner",
  "version" : "1.0.0",
  "name" : "DocumentReferenceContextCosigner",
  "title" : "Document Reference Context Cosigner",
  "status" : "active",
  "date" : "2026-06-18T14:15:04+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Applied to the context section of a DocumentReference resource. Captures the\nco-signer of the document — a person who has jointly signed or authenticated\nthe document alongside the primary author.",
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
    "expression" : "DocumentReference.context"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Document Reference Context Cosigner",
      "definition" : "Applied to the context section of a DocumentReference resource. Captures the\nco-signer of the document — a person who has jointly signed or authenticated\nthe document alongside the primary author."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/documentReference-context-cosigner"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Co-signer of the document",
      "definition" : "The name or identifier of the person who co-signed or co-authenticated\nthis document alongside the primary author.",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
