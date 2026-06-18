# Extensions - 314e FHIR Implementation Guide v1.0.0

## Extensions

# Extensions

* Name: [Annotation Attachment](StructureDefinition-annotation-attachment.md)
  * Description: Provides an attachment-based representation of annotation or note content when the annotation is not represented as inline plain text. This extension supports scenarios in which annotation content is stored externally as an attachment rather than directly populated within Annotation.text.
* Name: [Attachment Helper File](StructureDefinition-attachment-helperFile.md)
  * Description: Provides the path or filename of a helper/supporting file associated with an Attachment. This extension is intended for scenarios in which the consumer of the attachment requires an auxiliary/helper file in order to correctly interpret, process, transform, or render the attachment content. Examples include: - XSLT files associated with XML documents - Schema files - Rendering templates - Transformation scripts - Supporting metadata files
* Name: [Attachment Tag](StructureDefinition-attachment-tag.md)
  * Description: A categorization or semantic tag associated with an Attachment. This extension allows multiple tags to be associated with an Attachment for workflow, classification, indexing, retrieval, processing, or application behavior purposes.
* Name: [Care Plan Activity Target Date Time](StructureDefinition-carePlan-activity-targetDateTime.md)
  * Description: Applied to an individual activity element within a CarePlan resource. Stores the target or goal date-time for completing that specific care plan activity. Note that the targetDateTime is separate from CarePlan.activity.scheduled[x].
* Name: [Care Plan Target Date Time](StructureDefinition-carePlan-targetDateTime.md)
  * Description: Applied at the root level of the CarePlan resource. Specifies the intended or expected target date-time for completion, review, or achievement of the care plan or care plan objective.
* Name: [Cosigner](StructureDefinition-cosigner.md)
  * Description: Identifies an individual who reviewed, verified, or co-signed the associated clinical document, note, order, or healthcare record.
* Name: [Date/Time Accuracy](StructureDefinition-datetime-accuracy.md)
  * Description: Specifies the accuracy or exactness of a dateTime value when only some part of the known/ usable precision of dateTime can be verified as accurate or exact and the rest is estimated or approximate. This extension is intended to explicitly communicate the accuracy of a dateTime value, such as full timestamp, year-only, year-month, date-only, or none. For example: - A birth year and month may be known exactly but the day might be an estimate - Only the date may be verifiable as accurate with the time being approximate Note: All dateTime values in the 314e implementation guide SHALL be stored in UTC.
* Name: [Date/Time Precision](StructureDefinition-datetime-precision.md)
  * Description: Specifies the meaningful/ usable precision of a dateTime value when the datatype syntactically permits greater precision than is actually known or clinically usable. This extension is intended to explicitly communicate the usable precision of a dateTime value, such as year-only, year-month, date-only, or full timestamp precision. All dateTime values in the 314e implementation guide SHALL be stored in UTC.
* Name: [Document Reference Context Cosigner](StructureDefinition-documentReference-context-cosigner.md)
  * Description: Applied to the context section of a DocumentReference resource. Captures the co-signer of the document — a person who has jointly signed or authenticated the document alongside the primary author.
* Name: [Document Reference Context Dictation Date Time](StructureDefinition-documentReference-context-dictationDateTime.md)
  * Description: Applied to the context section of a DocumentReference resource. Stores the date and time when the clinician dictated the document content — distinct from when it was authored, transcribed, or signed.
* Name: [Document Reference Context Report Date Time](StructureDefinition-documentReference-context-reportDateTime.md)
  * Description: Applied to the context section of a DocumentReference resource. Stores the date and time when the finalized report was made available or released — separate from dictation, transcription, or document creation time.
* Name: [Element Additional Info](StructureDefinition-element-additionalInfo.md)
  * Description: Applied to any FHIR element. Carries additional information associated with a specific FHIR element that is not represented by the standard element definition.
* Name: [Observation Value Attachment](StructureDefinition-observation-value-attachment.md)
  * Description: Extension used when an Observation result cannot be represented using one of the standard structured Observation.value[x] datatypes or as plain text. Typical use cases include: - PDF laboratory reports - proprietary binary result payloads - waveform files - image-based interpretations - externally generated rendered documents - rich formatted diagnostic content The attachment represents the clinically relevant result payload.
* Name: [Patient Affiliation](StructureDefinition-patient-affiliation.md)
  * Description: Applied at the root level of the Patient resource. Stores the patient's institutional or organizational affiliation (e.g., hospital network, physician group) using an internal code.
* Name: [Patient Employment Status](StructureDefinition-patient-employmentStatus.md)
  * Description: Applied at the root level of the Patient resource. Stores the patient's current employment status or occupation. This is a custom field added to the Patient record to capture what the patient does for work or their current employment situation.
* Name: [Patient Mother's Name](StructureDefinition-patient-mothersName.md)
  * Description: Applied directly at the root level of the Patient resource to store the mother's name of the patient.
* Name: [Patient Pharmacies](StructureDefinition-patient-pharmacies.md)
  * Description: Applied at the root level of the Patient resource. Stores one or more preferred pharmacies linked to the patient as references to Organization resources. A patient can have multiple pharmacies — each gets its own extension instance.
* Name: [Patient Preferred Gender Pronoun](StructureDefinition-patient-preferredGenderPronoun.md)
  * Description: Applied directly at the root level of the Patient resource to store the patient's preferred gender pronoun.
* Name: [Quantity Quantity String](StructureDefinition-quantity-quantityString.md)
  * Description: A string representation of Quantity. This extension preserves the original lexical representation of a quantity. Additionally, in scenarios where FHIR requires Quantity datatype but the source data cannot be represented as distinct value and unit, this extension SHALL be utilized. This extension is intended for preservation of textual rendering and does not replace the computable Quantity elements. Applications should preserve synchronization between the computable Quantity content and this extension if either representation is modified.
* Name: [Quantity Value String](StructureDefinition-quantity-valueString.md)
  * Description: A string/ textual representation associated with Quantity.value. In scenarios where the ‘value’ of Quantity datatype cannot be expressed as a numerical value even though a distinct unit can be represented in the ‘unit’ element, this extension SHALL be used on the value field of Quantity. The presence of this extension does not alter the numeric semantics of Quantity.value. Applications performing calculations SHALL use the actual decimal value of Quantity.value rather than the string carried in this extension. Applications should preserve synchronization between Quantity.value and this extension if either representation is modified.
* Name: [Reference Context](StructureDefinition-reference-context.md)
  * Description: Provides additional semantic context describing the role, capacity, purpose, or functional meaning of a Reference. This extension is intended for use in situations where the base FHIR element is broadly defined and the precise meaning or role of the referenced resource requires further clarification. For example, the performer element of an Observation may reference practitioners participating in different capacities such as technician, phlebotomist, or pathologist.
* Name: [Related Person Encounter](StructureDefinition-relatedPerson-encounter.md)
  * Description: Applied at the root level of the RelatedPerson resource. References the encounter with which a related person is associated.
* Name: [Resource Additional Info](StructureDefinition-resource-additionalInfo.md)
  * Description: Applied at the root level of any resource. Used to capture supplementary or non-standard information related to a FHIR resource that is not represented by the core FHIR elements or existing profiles.
* Name: [Resource Episode](StructureDefinition-resource-episode.md)
  * Description: Applied directly at the root level of clinical resources to store an EpisodeOfCare reference. This extension links a resource to its associated episode of care when that association is not otherwise expressible through standard FHIR elements.
* Name: [Resource Last Edited User](StructureDefinition-resource-lastEditedUser.md)
  * Description: Applied at the root level of clinical resources. Stores the reference of the person who last edited or modified the resource. Standard FHIR resources generally have no "last edited by" field — only recorder (who first recorded it) and asserter (who asserted it clinically). This extension captures an audit trail entry for the most recent editor.
* Name: [Time Accuracy](StructureDefinition-time-accuracy.md)
  * Description: Specifies the accuracy or exactness of a time value when only some part of the known/ usable precision of time can be verified as accurate or exact and the rest is estimated or approximate. This extension is intended to explicitly communicate the accuracy of a time value.
* Name: [Time Precision](StructureDefinition-time-precision.md)
  * Description: Specifies the meaningful/ usable precision of a time value when the datatype syntactically permits greater precision than is actually known or clinically usable. This extension is intended to explicitly communicate the usable precision of a time value.

