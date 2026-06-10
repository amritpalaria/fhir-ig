Extension: DocumentReferenceAuthorDictationDateTime
Id: documentReference-author-dictationDateTime
Title: "Document Reference Author Dictation Date Time"
Description: """
Applied to the author element of a DocumentReference resource. Captures
the exact date and time when the author dictated the document.

This information is not available in the standard FHIR DocumentReference
resource.
"""

Context: DocumentReference.author

* ^url = "http://314e.com/fhir/StructureDefinition/documentReference-author-dictationDateTime"
* ^status = #active

* value[x] only dateTime314e
* valueDateTime 1..1

* valueDateTime ^short = "Date and time the author dictated the document"
* valueDateTime ^definition = """
The exact date and time at which the document author dictated the content
of this document.
"""
