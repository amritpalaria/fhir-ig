Profile: Annotation314e
Parent: Annotation
Id: annotation-314e
Title: "314e Annotation"
Description: """
A constrained Annotation datatype profile supporting attachment-
based annotation content through the annotation-attachment extension.

This profile enables annotation or note content to be represented
using externally stored attachments in addition to standard inline
Annotation.text content.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/annotation-314e"

* ^purpose = """
Supports annotation workflows in which note/comment content may
be externally stored and referenced through attachments.
"""

* authorReference only Reference314e
* authorReference only Reference(Practitioner or Patient or RelatedPerson or Organization)

* time only DateTime314e

* time ^short =
    "Annotation time in UTC with precision support"

* time ^definition = """
Date/time when the annotation was made.

All timestamps SHALL be represented in UTC.
Precision and approximation extensions may be used.
"""

* extension contains
    AnnotationAttachment named attachment 0..1

* extension[attachment] ^short =
    "Attachment-based annotation content"

* extension[attachment] ^definition = """
Provides attachment-backed annotation or note content.
"""
