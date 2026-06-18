# 314e Dosage - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Dosage 

 
314e profile of the FHIR Dosage datatype. 
This profile constrains CodeableConcept, Timing, and quantity-related sub-elements to their corresponding 314e datatype profiles. 

**Usages:**

* Use this DataType Profile: [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md) and [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/dosage-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-dosage-314e.csv), [Excel](../StructureDefinition-dosage-314e.xlsx), [Schematron](../StructureDefinition-dosage-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dosage-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/dosage-314e",
  "version" : "1.0.0",
  "name" : "Dosage314e",
  "title" : "314e Dosage",
  "status" : "active",
  "date" : "2026-06-18T13:36:33+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR Dosage datatype.\n\nThis profile constrains CodeableConcept, Timing, and quantity-related\nsub-elements to their corresponding 314e datatype profiles.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Dosage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Dosage",
      "path" : "Dosage"
    },
    {
      "id" : "Dosage.additionalInstruction",
      "path" : "Dosage.additionalInstruction",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Dosage.timing",
      "path" : "Dosage.timing",
      "type" : [{
        "code" : "Timing",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/timing-314e"]
      }]
    },
    {
      "id" : "Dosage.asNeeded[x]",
      "path" : "Dosage.asNeeded[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Dosage.asNeeded[x]:asNeededCodeableConcept",
      "path" : "Dosage.asNeeded[x]",
      "sliceName" : "asNeededCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Dosage.site",
      "path" : "Dosage.site",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Dosage.route",
      "path" : "Dosage.route",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Dosage.method",
      "path" : "Dosage.method",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Dosage.doseAndRate.type",
      "path" : "Dosage.doseAndRate.type",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]",
      "path" : "Dosage.doseAndRate.dose[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange",
      "path" : "Dosage.doseAndRate.dose[x]",
      "sliceName" : "doseRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range",
        "profile" : ["http://314e.com/fhir/StructureDefinition/range-314e"]
      }]
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseQuantity",
      "path" : "Dosage.doseAndRate.dose[x]",
      "sliceName" : "doseQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]",
      "path" : "Dosage.doseAndRate.rate[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateRatio",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio",
        "profile" : ["http://314e.com/fhir/StructureDefinition/ratio-314e"]
      }]
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range",
        "profile" : ["http://314e.com/fhir/StructureDefinition/range-314e"]
      }]
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateQuantity",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Dosage.maxDosePerPeriod",
      "path" : "Dosage.maxDosePerPeriod",
      "type" : [{
        "code" : "Ratio",
        "profile" : ["http://314e.com/fhir/StructureDefinition/ratio-314e"]
      }]
    },
    {
      "id" : "Dosage.maxDosePerAdministration",
      "path" : "Dosage.maxDosePerAdministration",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Dosage.maxDosePerLifetime",
      "path" : "Dosage.maxDosePerLifetime",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    }]
  }
}

```
