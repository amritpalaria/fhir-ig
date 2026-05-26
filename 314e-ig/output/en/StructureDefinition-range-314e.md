# 314e Range - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Range 

 
A 314e-constrained Range datatype using 314e SimpleQuantity profiles. 

**Usages:**

* Use this DataType Profile: [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Timing](StructureDefinition-timing-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/range-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-range-314e.csv), [Excel](../StructureDefinition-range-314e.xlsx), [Schematron](../StructureDefinition-range-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "range-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/range-314e",
  "version" : "1.0.0",
  "name" : "Range314e",
  "title" : "314e Range",
  "status" : "draft",
  "date" : "2026-05-26T19:54:55+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A 314e-constrained Range datatype using 314e\nSimpleQuantity profiles.",
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
  "type" : "Range",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Range",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Range.low",
      "path" : "Range.low",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Range.high",
      "path" : "Range.high",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    }]
  }
}

```
