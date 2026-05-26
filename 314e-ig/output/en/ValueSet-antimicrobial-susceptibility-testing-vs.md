# Antimicrobial Susceptibility Testing - 314e FHIR Implementation Guide v1.0.0

## ValueSet: Antimicrobial Susceptibility Testing 

 
Observation methods for antimicrobial susceptibility testing. Includes HL7 v3 ObservationMethod code 0280 and all descendant codes. 

 **References** 

* [314e Antimicrobial Susceptibility Observation](StructureDefinition-observation-antimicrobial-susceptibility-314e.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "antimicrobial-susceptibility-testing-vs",
  "url" : "http://314e.com/fhir/ig/ValueSet/antimicrobial-susceptibility-testing-vs",
  "version" : "1.0.0",
  "name" : "AntimicrobialSusceptibilityTestingVS",
  "title" : "Antimicrobial Susceptibility Testing",
  "status" : "active",
  "date" : "2026-05-26T19:54:55+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Observation methods for antimicrobial susceptibility testing.\nIncludes HL7 v3 ObservationMethod code 0280 and all descendant codes.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationMethod",
      "version" : "4.0.0",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "0280"
      }]
    }]
  }
}

```
