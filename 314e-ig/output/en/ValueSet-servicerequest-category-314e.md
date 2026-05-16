# 314e ServiceRequest Category ValueSet - 314e FHIR Implementation Guide v1.0.0

## ValueSet: 314e ServiceRequest Category ValueSet 

 
Required high-level category classifications for 314e ServiceRequest resources. 

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
  "id" : "servicerequest-category-314e",
  "url" : "http://314e.com/fhir/ValueSet/servicerequest-category-314e",
  "version" : "1.0.0",
  "name" : "ServiceRequestCategory314eVS",
  "title" : "314e ServiceRequest Category ValueSet",
  "status" : "active",
  "date" : "2026-05-16T07:30:07+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Required high-level category classifications for 314e\nServiceRequest resources.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "version" : "3.0.0",
      "concept" : [{
        "code" : "LAB",
        "display" : "Laboratory"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "363679005",
        "display" : "Imaging"
      },
      {
        "code" : "252416005",
        "display" : "Physiological study"
      },
      {
        "code" : "387713003",
        "display" : "Surgical procedure"
      },
      {
        "code" : "277132007",
        "display" : "Therapeutic procedure"
      },
      {
        "code" : "385805005",
        "display" : "Rehabilitation procedure"
      },
      {
        "code" : "311401005",
        "display" : "Patient education and counseling"
      },
      {
        "code" : "409035000",
        "display" : "Provider-to-provider consultation"
      }]
    }]
  }
}

```
