# Attachment Tag ValueSet - 314e FHIR Implementation Guide v1.0.0

## ValueSet: Attachment Tag ValueSet 

 
Standard semantic tags used for categorization and workflow qualification of attachments. 

 **References** 

* [Attachment Tag](StructureDefinition-attachment-tag.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "attachment-tag",
  "url" : "http://314e.com/fhir/ValueSet/attachment-tag",
  "version" : "1.0.0",
  "name" : "AttachmentTagVS",
  "title" : "Attachment Tag ValueSet",
  "status" : "active",
  "date" : "2026-06-18T16:14:31+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Standard semantic tags used for categorization and workflow\nqualification of attachments.",
  "compose" : {
    "include" : [{
      "system" : "http://314e.com/fhir/CodeSystem/attachment-tag"
    }]
  }
}

```
