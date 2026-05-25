# Extensions - 314e FHIR Implementation Guide v1.0.0

## Extensions

# Extensions

* Name: [Annotation Attachment](StructureDefinition-annotation-attachment.md)
  * Description: Provides an attachment-based representation of annotation or note content when the annotation is not represented as inline plain text. This extension supports scenarios in which annotation content is stored externally as an attachment rather than directly populated within Annotation.text.
* Name: [Attachment Helper File](StructureDefinition-attachment-helperFile.md)
  * Description: Provides the path or filename of a helper/supporting file associated with an Attachment. This extension is intended for scenarios in which the consumer of the attachment requires an auxiliary/helper file in order to correctly interpret, process, transform, or render the attachment content. Examples include: - XSLT files associated with XML documents - Schema files - Rendering templates - Transformation scripts - Supporting metadata files
* Name: [Attachment Tag](StructureDefinition-attachment-tag.md)
  * Description: A categorization or semantic tag associated with an Attachment. This extension allows multiple tags to be associated with an Attachment for workflow, classification, indexing, retrieval, processing, or application behavior purposes.
* Name: [314e Date/Time Accuracy](StructureDefinition-datetime-accuracy-314e.md)
  * Description: Specifies the accuracy or exactness of a dateTime value when only some part of the known/ usable precision of dateTime can be verified as accurate or exact and the rest is estimated or approximate. This extension is intended to explicitly communicate the accuracy of a dateTime value, such as full timestamp, year-only, year-month, date-only, or none. For example: - A birth year and month may be known exactly but the day might be an estimate - Only the date may be verifiable as accurate with the time being approximate Note: All dateTime values in the 314e implementation guide SHALL be stored in UTC.
* Name: [314e Date/Time Precision](StructureDefinition-datetime-precision-314e.md)
  * Description: Specifies the meaningful/ usable precision of a dateTime value when the datatype syntactically permits greater precision than is actually known or clinically usable. This extension is intended to explicitly communicate the usable precision of a dateTime value, such as year-only, year-month, date-only, or full timestamp precision. All dateTime values in the 314e implementation guide SHALL be stored in UTC.
* Name: [Quantity Quantity String](StructureDefinition-quantity-quantityString.md)
  * Description: A string representation of Quantity. This extension preserves the original lexical representation of a quantity. Additionally, in scenarios where FHIR requires Quantity datatype but the source data cannot be represented as distinct value and unit, this extension SHALL be utilized. This extension is intended for preservation of textual rendering and does not replace the computable Quantity elements. Applications should preserve synchronization between the computable Quantity content and this extension if either representation is modified.
* Name: [Quantity Value String](StructureDefinition-quantity-valueString.md)
  * Description: A string/ textual representation associated with Quantity.value. In scenarios where the ‘value’ of Quantity datatype cannot be expressed as a numerical value even though a distinct unit can be represented in the ‘unit’ element, this extension SHALL be used on the value field of Quantity. The presence of this extension does not alter the numeric semantics of Quantity.value. Applications performing calculations SHALL use the actual decimal value of Quantity.value rather than the string carried in this extension. Applications should preserve synchronization between Quantity.value and this extension if either representation is modified.
* Name: [Reference Context](StructureDefinition-reference-context.md)
  * Description: Provides additional semantic context describing the role, capacity, purpose, or functional meaning of a Reference. This extension is intended for use in situations where the base FHIR element is broadly defined and the precise meaning or role of the referenced resource requires further clarification. For example, the performer element of an Observation may reference practitioners participating in different capacities such as technician, phlebotomist, or pathologist.
* Name: [314e Time Accuracy](StructureDefinition-time-accuracy-314e.md)
  * Description: Specifies the accuracy or exactness of a time value when only some part of the known/ usable precision of time can be verified as accurate or exact and the rest is estimated or approximate. This extension is intended to explicitly communicate the accuracy of a time value.
* Name: [314e Time Precision](StructureDefinition-time-precision-314e.md)
  * Description: Specifies the meaningful/ usable precision of a time value when the datatype syntactically permits greater precision than is actually known or clinically usable. This extension is intended to explicitly communicate the usable precision of a time value.
* Name: [314e Observation Value Attachment](StructureDefinition-value-attachment-314e.md)
  * Description: Extension used when an Observation result cannot be represented using one of the standard structured Observation.value[x] datatypes or as plain text. Typical use cases include: - PDF laboratory reports - proprietary binary result payloads - waveform files - image-based interpretations - externally generated rendered documents - rich formatted diagnostic content The attachment represents the clinically relevant result payload.

