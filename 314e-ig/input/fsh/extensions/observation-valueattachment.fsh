Extension: ObservationValueAttachment
Id: observation-value-attachment
Title: "Observation Value Attachment"
Description: """
Extension used when an Observation result cannot be represented
using one of the standard structured Observation.value[x]
datatypes or as plain text.

Typical use cases include:
- PDF laboratory reports
- proprietary binary result payloads
- waveform files
- image-based interpretations
- externally generated rendered documents
- rich formatted diagnostic content

The attachment represents the clinically relevant result payload.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/observation-valueAttachment"
* ^version = "1.0.0"
* ^status = #active

* value[x] only Attachment314e

* valueAttachment 1..1

* valueAttachment ^short =
    "Attachment payload representing the observation result"

* valueAttachment ^definition = """
Attachment containing the clinically relevant result content
when the observation result cannot reasonably be represented
using structured Observation.value[x] datatypes or plain text.
"""

