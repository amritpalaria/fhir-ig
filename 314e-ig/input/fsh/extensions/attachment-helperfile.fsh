Extension: AttachmentHelperFile
Id: attachment-helperFile
Title: "Attachment Helper File"
Description: """
Provides the path or filename of a helper/supporting file associated
with an Attachment.

This extension is intended for scenarios in which the consumer of
the attachment requires an auxiliary/helper file in order to correctly
interpret, process, transform, or render the attachment content.

Examples include:
- XSLT files associated with XML documents
- Schema files
- Rendering templates
- Transformation scripts
- Supporting metadata files
"""

Context: Attachment

* ^url = "http://314e.com/fhir/StructureDefinition/attachment-helperFile"

* ^purpose = """
Supports association of auxiliary/helper files required for proper
interpretation or processing of an attachment.
"""

* value[x] only url
* valueUrl 1..1

* valueUrl ^short =
    "Path, locator or filename of associated helper/supporting file"

* valueUrl ^definition = """
Specifies the path, locator, storage reference,
or URL of a helper/supporting file associated
with the attachment.
"""

* valueUrl ^comment = """
The interpretation and usage of the helper file is dependent upon
the attachment content type and consuming application.
"""
