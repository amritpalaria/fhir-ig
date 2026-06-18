Extension: DocumentReferenceContextReportDateTime
Id: documentReference-context-reportDateTime
Title: "Document Reference Context Report Date Time"
Description: """
Applied to the context section of a DocumentReference resource. Stores the
date and time when the finalized report was made available or released —
separate from dictation, transcription, or document creation time.
"""

Context: DocumentReference.context

* ^url = "http://314e.com/fhir/StructureDefinition/documentReference-context-reportDateTime"
* ^status = #active

* value[x] only dateTime314e
* valueDateTime 1..1

* valueDateTime ^short = "Date and time the finalized report was released"
* valueDateTime ^definition = """
The date and time at which the finalized report was made available or
released, distinct from dictation, transcription, or document creation timestamps.
"""
