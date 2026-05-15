#  - 314e FHIR Implementation Guide v1.0.0

## Extension: 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Attachment](StructureDefinition-attachment-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/attachment-inlineDataSavedAsFile)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential Table](#tabs-diff) 
*  [Snapshot Table](#tabs-snap) 
*  [Statistics/References](#tabs-summ) 
*  [All](#tabs-all) 

#### Constraints

** Summary **

Simple Extension with the type boolean: Indicates that the Attachment content was originally available as inline data/blob content but has been externalized and saved as a file in object storage, with the Attachment.url carrying the storage location.

If this extension is absent, the content SHALL be assumed to have originated as an external file rather than inline data.

 **Differential ViewDifferential View** 

 **Snapshot View** 

#### Constraints

** Summary **

Simple Extension with the type boolean: Indicates that the Attachment content was originally available as inline data/blob content but has been externalized and saved as a file in object storage, with the Attachment.url carrying the storage location.

If this extension is absent, the content SHALL be assumed to have originated as an external file rather than inline data.

 

Other representations of profile: [CSV](../StructureDefinition-attachment-inlineDataSavedAsFile.csv), [Excel](../StructureDefinition-attachment-inlineDataSavedAsFile.xlsx), [Schematron](../StructureDefinition-attachment-inlineDataSavedAsFile.sch) 

