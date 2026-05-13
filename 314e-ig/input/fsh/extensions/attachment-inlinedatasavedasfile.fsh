Extension: AttachmentInlineDataSavedAsFile
Id: attachment-inlineDataSavedAsFile
Title: "Attachment Inline Data Saved As File"
Description: """
Indicates that the Attachment content was originally available
as inline data/blob content but has been externalized and saved
as a file in object storage, with the Attachment.url carrying
the storage location.

If this extension is absent, the content SHALL be assumed to
have originated as an external file rather than inline data.
"""
Context: Attachment

* ^url = "http://314e.com/fhir/StructureDefinition/attachment-inlineDataSavedAsFile"

* ^purpose = """
Supports workflows in which inline binary content is externalized
into object storage and referenced through Attachment.url.
"""

* value[x] only boolean
* valueBoolean 1..1

* valueBoolean ^short = "Whether inline content was externalized to object storage"

* valueBoolean ^definition = """
True indicates that the content was originally available as
inline data/blob content and was saved as a file in object storage.
"""
