Profile: Attachment314e
Parent: Attachment
Id: attachment-314e
Title: "314e Attachment"
Description: """
A constrained Attachment datatype profile in which Attachment.data
SHALL never be populated.

All attachment content SHALL be externalized into object storage
and referenced using Attachment.url.

If content originated as inline data/blob content and was later
saved externally, the extension
attachment-inlineDataSavedAsFile SHALL be used to indicate this.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/attachment-314e"

* ^purpose = """
Provides a consistent attachment handling strategy in which
binary payloads are always externally stored and referenced.
"""

// Inline data prohibited
* data 0..0

* data ^short = "Inline attachment data is prohibited"

* data ^definition = """
Inline binary data SHALL NOT be populated.

Attachment content SHALL instead be persisted externally
and referenced using Attachment.url.
"""

// URL required
* url 1..1

* url ^short = "Object storage path or external attachment location"

* url ^definition = """
Reference/path to the externally stored attachment content.
"""

// Extension slices
* extension contains
    AttachmentInlineDataSavedAsFile named inlineDataSavedAsFile 0..1 and
    AttachmentTag named tag 0..*

* extension[inlineDataSavedAsFile] ^short =
    "Indicates originally-inline content externalized into object storage"

* extension[tag] ^short =
    "Semantic categorization tag associated with the attachment"
