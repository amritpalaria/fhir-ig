Extension: DocumentReferenceContextCosigner
Id: documentReference-context-cosigner
Title: "Document Reference Context Cosigner"
Description: """
Applied to the context section of a DocumentReference resource. Captures the
co-signer of the document — a person who has jointly signed or authenticated
the document alongside the primary author.
"""

Context: DocumentReference.context

* ^url = "http://314e.com/fhir/StructureDefinition/documentReference-context-cosigner"
* ^status = #active

* value[x] only string
* valueString 1..1

* valueString ^short = "Co-signer of the document"
* valueString ^definition = """
The name or identifier of the person who co-signed or co-authenticated
this document alongside the primary author.
"""
