Extension: AttachmentTag
Id: attachment-tag
Title: "Attachment Tag"
Description: """
A categorization or semantic tag associated with an Attachment.

This extension allows multiple tags to be associated with an
Attachment for workflow, classification, indexing, retrieval,
processing, or application behavior purposes.
"""

Context: Attachment

* ^url = "http://314e.com/fhir/StructureDefinition/attachment-tag"

* ^purpose = """
Supports semantic tagging and categorization of attachments.
"""

* value[x] only CodeableConcept
* valueCodeableConcept 1..1

* valueCodeableConcept from AttachmentTagVS (extensible)

* valueCodeableConcept ^short =
    "Semantic categorization tag for the attachment"

* valueCodeableConcept ^definition = """
Represents a semantic classification, workflow label,
behavioral indicator, or categorization tag associated
with the attachment.
"""
