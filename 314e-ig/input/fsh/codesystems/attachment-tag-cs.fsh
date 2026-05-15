CodeSystem: AttachmentTagCS
Id: attachment-tag
Title: "Attachment Tag CodeSystem"
Description: """
Codes used for semantic tagging and categorization of attachments.
"""

* ^url = "http://314e.com/fhir/CodeSystem/attachment-tag"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete

* #inline-data-externalized-to-file
    "Inline data externalized to and saved as file"

* #inline-data-externalized-to-file ^definition = """
Indicates that the Attachment content was originally available
as inline data/blob content but has been externalized and saved
as a file in object storage, with the Attachment.url carrying
the storage location.

If this tag is absent, the content SHALL be assumed to have
originated as an external file rather than inline data.
"""

* #duplicate
    "Duplicate of another attachment on the same element"

* #duplicate ^definition = """
Indicates that this attachment was created as a duplicate of the
content in another attachment on the same element for some reason,
for example because the same content needed to be stored as two
different content types.
"""

* #hidden
    "Hidden from application use"

* #hidden ^definition = """
Indicates to the consumer application that this attachment should
not be used even though it exists in the data.

This may be used to identify the preferred/usable attachment when
multiple copies of equivalent content are available.
"""
