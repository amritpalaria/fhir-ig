Profile: Attachment314e
Parent: Attachment
Id: attachment-314e
Title: "314e Attachment"
Description: """
A constrained Attachment datatype profile in which Attachment.data
SHALL never be populated.

All attachment content SHALL be externalized into object storage
and referenced using Attachment.url.

If attachment content originated as inline data/blob content
and was subsequently externalized into object storage, the
Attachment SHALL carry the tag
'inline-data-externalized-to-file' using the attachment-tag
extension.
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
Reference/path to the externally stored attachment content. Inline binary data in 
Attachment.data SHALL NOT be populated. Inline content SHALL instead be persisted 
externally, referenced using this url element, and tagged as 'inline-data-externalized-to-file'.
"""

* creation only dateTime314e

// Extension slices
* extension contains
    AttachmentTag named tag 0..* and
    AttachmentHelperFile named helperFile 0..1

* extension[tag] ^short =
    "Semantic categorization tag associated with the attachment"

* extension[helperFile] ^short =
    "Helper file associated with the attachment"

* extension[helperFile] ^definition = """
Provides the path or filename of an auxiliary/helper file required
for interpretation, transformation, rendering, or processing of
the attachment content.
"""

