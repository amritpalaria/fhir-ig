# 314e Broad Procedure Categories - 314e FHIR Implementation Guide v1.0.0

## ValueSet: 314e Broad Procedure Categories 

 
Top-level operational categories for procedures and service requests. 

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
  "date" : "2026-05-16T12:58:39+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Top-level operational categories for procedures\nand service requests.",
  "compose" : {
    "include" : [{
      "system" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
      "concept" : [{
        "code" : "LAB",
        "display" : "Laboratory Medicine (In-Vitro)"
      },
      {
        "code" : "IMG",
        "display" : "Diagnostic Imaging (Anatomical)"
      },
      {
        "code" : "FNP",
        "display" : "Functional & Physiological Studies"
      },
      {
        "code" : "SUR",
        "display" : "Invasive & Surgical Procedures"
      },
      {
        "code" : "TIN",
        "display" : "Therapeutics & Infusion Services"
      },
      {
        "code" : "RHB",
        "display" : "Rehabilitative, Supportive & Physical Medicine"
      },
      {
        "code" : "CBE",
        "display" : "Cognitive, Behavioral & Education Services"
      },
      {
        "code" : "CNS",
        "display" : "Clinical Consultations & Care Coordination"
      }]
    }]
  }
}

```
