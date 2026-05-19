Extension: ValueAttachment314e
Id: value-attachment-314e
Title: "314e Observation Value Attachment"
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

