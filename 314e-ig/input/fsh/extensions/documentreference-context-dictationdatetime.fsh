Extension: DocumentReferenceContextDictationDateTime
Id: documentReference-context-dictationDateTime
Title: "Document Reference Context Dictation Date Time"
Description: """
Applied to the context section of a DocumentReference resource. Stores the
date and time when the clinician dictated the document content — distinct
from when it was authored, transcribed, or signed.
"""

Context: DocumentReference.context

* ^url = "http://314e.com/fhir/StructureDefinition/documentReference-context-dictationDateTime"
* ^status = #active

* value[x] only dateTime314e
* valueDateTime 1..1

* valueDateTime ^short = "Date and time the document content was dictated"
* valueDateTime ^definition = """
The date and time at which the clinician dictated the content of this document,
distinct from authoring, transcription, or signing timestamps.
"""
