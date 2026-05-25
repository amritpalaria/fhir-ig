# 314e Lab Subcategories - 314e FHIR Implementation Guide v1.0.0

## ValueSet: 314e Lab Subcategories 

 
Procedure subcategories of Lab category used for more granular operational classification. 

 **References** 

* [314e Non-Microbiology Laboratory Observation](StructureDefinition-observation-lab-nonmicro-314e.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "lab-category-subcategory-314e",
  "url" : "http://314e.com/fhir/ValueSet/lab-category-subcategory-314e",
  "version" : "1.0.0",
  "name" : "LabCategorySubcategory314eVS",
  "title" : "314e Lab Subcategories",
  "status" : "draft",
  "date" : "2026-05-25T15:24:41+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Procedure subcategories of Lab category used for more granular\noperational classification.",
  "compose" : {
    "include" : [{
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "LAB"
      }]
    }]
  }
}

```
