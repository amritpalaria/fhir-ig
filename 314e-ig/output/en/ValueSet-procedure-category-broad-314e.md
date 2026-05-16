# 314e Broad Procedure Categories - 314e FHIR Implementation Guide v1.0.0

## ValueSet: 314e Broad Procedure Categories 

 
Broad top-level procedure categories. 

 **References** 

* [314e ServiceRequest](StructureDefinition-servicerequest-314e.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "procedure-category-broad-314e",
  "url" : "http://314e.com/fhir/ValueSet/procedure-category-broad-314e",
  "version" : "1.0.0",
  "name" : "ProcedureCategoryBroad314eVS",
  "title" : "314e Broad Procedure Categories",
  "status" : "draft",
  "date" : "2026-05-16T10:04:42+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Broad top-level procedure categories.",
  "compose" : {
    "include" : [{
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "LAB"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "IMG"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "FNP"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "SUR"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "TIN"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "RHB"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "CBE"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "CNS"
      }]
    }]
  }
}

```
