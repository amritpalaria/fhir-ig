Extension: AnnotationAttachment
Id: annotation-attachment
Title: "Annotation Attachment"
Description: """
Provides an attachment-based representation of annotation or note
content when the annotation is not represented as inline plain text.

This extension supports scenarios in which annotation content is
stored externally as an attachment rather than directly populated
within Annotation.text.
"""

Context: Annotation

* ^url = "http://314e.com/fhir/StructureDefinition/annotation-attachment"

* ^purpose = """
Supports attachment-backed annotations and notes whose content
is externally stored rather than embedded inline as text.
"""

* value[x] only Attachment314e
* valueAttachment only Attachment314e

* valueAttachment 1..1

* valueAttachment ^short =
    "Attachment-based representation of annotation content"

* valueAttachment ^definition = """
Attachment carrying externally stored annotation or note content.
"""

* valueAttachment ^comment = """
This extension should be used when annotation content is not
represented inline in Annotation.text.
"""