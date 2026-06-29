# 314e Procedure Subcategories - 314e FHIR Implementation Guide v1.0.0

## ValueSet: 314e Procedure Subcategories 

 
Procedure subcategories used for more granular operational classification. 

 **References** 

* [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md)
* [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md)
* [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md)
* [314e Observation](StructureDefinition-observation-314e.md)
* [314e ServiceRequest](StructureDefinition-servicerequest-314e.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "procedure-category-subcategory-314e",
  "url" : "http://314e.com/fhir/ValueSet/procedure-category-subcategory-314e",
  "version" : "1.0.0",
  "name" : "ProcedureCategorySubcategory314eVS",
  "title" : "314e Procedure Subcategories",
  "status" : "draft",
  "date" : "2026-06-29T17:18:47+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Procedure subcategories used for more granular\noperational classification.",
  "compose" : {
    "include" : [{
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "LAB"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "IMG"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "FNP"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "SUR"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "TIN"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "RHB"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "CBE"
      }]
    },
    {
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "CNS"
      }]
    }]
  }
}

```
