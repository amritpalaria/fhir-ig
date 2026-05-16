# Attachment Tag CodeSystem - 314e FHIR Implementation Guide v1.0.0

## CodeSystem: Attachment Tag CodeSystem 

 
Codes used for semantic tagging and categorization of attachments. 

This Code system is referenced in the definition of the following value sets:

* [AttachmentTagVS](ValueSet-attachment-tag.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "attachment-tag",
  "url" : "http://314e.com/fhir/CodeSystem/attachment-tag",
  "version" : "1.0.0",
  "name" : "AttachmentTagCS",
  "title" : "Attachment Tag CodeSystem",
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
  "description" : "Codes used for semantic tagging and categorization of attachments.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "inline-data-externalized-to-file",
    "display" : "Inline data externalized and saved as file",
    "definition" : "Indicates that the Attachment content was originally available\nas inline data/blob content but has been externalized and saved\nas a file in object storage, with the Attachment.url carrying\nthe storage location.\n\nIf this tag is absent, the content SHALL be assumed to have\noriginated as an external file rather than inline data."
  },
  {
    "code" : "duplicate",
    "display" : "Duplicate of another attachment on the same element",
    "definition" : "Indicates that this attachment was created as a duplicate of the\ncontent in another attachment on the same element for some reason,\nfor example because the same content needed to be stored as two\ndifferent content types."
  },
  {
    "code" : "hidden",
    "display" : "Hidden from application use",
    "definition" : "Indicates to the consumer application that this attachment should\nnot be used even though it exists in the data.\n\nThis may be used to identify the preferred/usable attachment when\nmultiple copies of equivalent content are available."
  }]
}

```
