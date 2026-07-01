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
* authorReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* authorReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* authorReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* authorReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/organization-314e"

* time only dateTime314e

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

* extension contains
    AnnotationType314e named type 0..1

* extension[type] ^short =
    "The type of annotation"

* extension[type] ^definition = """
The type of annotation. This extension can be used to map the v2 NTE-4 comment type field.
"""
