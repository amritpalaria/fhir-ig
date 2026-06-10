# Microorganism by Method - 314e FHIR Implementation Guide v1.0.0

## ValueSet: Microorganism by Method 

 
LOINC methods used to identify microorganisms. 

 **References** 

* [314e Microorganism Observation](StructureDefinition-observation-microorganism-314e.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "microorganism-by-method-vs",
  "url" : "http://314e.com/fhir/ig/ValueSet/microorganism-by-method-vs",
  "version" : "1.0.0",
  "name" : "MicroorganismByMethodVS",
  "title" : "Microorganism by Method",
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
  "description" : "LOINC methods used to identify microorganisms.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "code",
        "op" : "=",
        "value" : "11475-1"
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "code",
        "op" : "=",
        "value" : "92253-4"
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "code",
        "op" : "=",
        "value" : "76346-6"
      }]
    }]
  }
}

```
