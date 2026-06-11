# 314e SampledData - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e SampledData 

 
314e profile of the FHIR SampledData datatype. 
This profile constrains numeric and quantity-related elements to corresponding 314e datatype profiles. 
SampledData is typically used for: 
* waveforms
* physiological telemetry
* ECG traces
* continuous monitoring streams
* device-generated measurements
 

**Usages:**

* Use this DataType Profile: [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/sampleddata-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-sampleddata-314e.csv), [Excel](../StructureDefinition-sampleddata-314e.xlsx), [Schematron](../StructureDefinition-sampleddata-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sampleddata-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/sampleddata-314e",
  "version" : "1.0.0",
  "name" : "SampledData314e",
  "title" : "314e SampledData",
  "status" : "active",
  "date" : "2026-06-11T14:17:09+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR SampledData datatype.\n\nThis profile constrains numeric and quantity-related\nelements to corresponding 314e datatype profiles.\n\nSampledData is typically used for:\n- waveforms\n- physiological telemetry\n- ECG traces\n- continuous monitoring streams\n- device-generated measurements",
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
  "type" : "SampledData",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/SampledData",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "SampledData.origin",
      "path" : "SampledData.origin",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "SampledData.period",
      "path" : "SampledData.period",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "SampledData.factor",
      "path" : "SampledData.factor",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "SampledData.lowerLimit",
      "path" : "SampledData.lowerLimit",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    },
    {
      "id" : "SampledData.upperLimit",
      "path" : "SampledData.upperLimit",
      "type" : [{
        "code" : "decimal",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/decimal-314e"]
      }]
    }]
  }
}

```
