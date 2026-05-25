# 314e Ratio - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Ratio 

 
A 314e-constrained Ratio datatype using 314e Quantity profiles. 

**Usages:**

* Use this DataType Profile: [314e Non-Microbiology Laboratory Observation](StructureDefinition-observation-lab-nonmicro-314e.md) and [314e ServiceRequest](StructureDefinition-servicerequest-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/ratio-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ratio-314e.csv), [Excel](../StructureDefinition-ratio-314e.xlsx), [Schematron](../StructureDefinition-ratio-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ratio-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/ratio-314e",
  "version" : "1.0.0",
  "name" : "Ratio314e",
  "title" : "314e Ratio",
  "status" : "draft",
  "date" : "2026-05-25T13:52:53+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A 314e-constrained Ratio datatype using 314e Quantity profiles.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Ratio",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Ratio",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Ratio.numerator",
      "path" : "Ratio.numerator",
      "short" : "Numerator using 314e Quantity",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/quantity-314e"]
      }]
    },
    {
      "id" : "Ratio.denominator",
      "path" : "Ratio.denominator",
      "short" : "Denominator using 314e Quantity",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/quantity-314e"]
      }]
    }]
  }
}

```
