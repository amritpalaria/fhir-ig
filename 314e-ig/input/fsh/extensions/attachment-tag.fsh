Extension: AttachmentTag
Id: attachment-tag
Title: "Attachment Tag"
Description: """
A categorization or tagging label associated with an Attachment.

This extension allows multiple tags to be associated with an
Attachment for workflow, classification, indexing, or retrieval
purposes.
"""
Context: Attachment

* ^url = "http://314e.com/fhir/StructureDefinition/attachment-tag"

* ^purpose = """
Supports semantic tagging and categorization of attachments.
"""

* value[x] only CodeableConcept
* valueCodeableConcept 1..1

* valueCodeableConcept ^short = "Categorization tag for the attachment"

* valueCodeableConcept ^definition = """
Represents a semantic classification, workflow label,
or categorization tag associated with the attachment.
"""