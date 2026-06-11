# Complex Datatypes - 314e FHIR Implementation Guide v1.0.0

## Complex Datatypes

# Complex Datatypes

* Name: [314e Address](StructureDefinition-address-314e.md)
  * Description: 314e profile of the FHIR Address datatype. This profile constrains the period element to use the 314e Period profile.
* Name: [314e Age](StructureDefinition-age-314e.md)
  * Description: 314e profile of the FHIR Age datatype. Age is a constrained Quantity used to express a duration of elapsed time, typically of a human being as read from a clinical record.
* Name: [314e Annotation](StructureDefinition-annotation-314e.md)
  * Description: A constrained Annotation datatype profile supporting attachment- based annotation content through the annotation-attachment extension. This profile enables annotation or note content to be represented using externally stored attachments in addition to standard inline Annotation.text content.
* Name: [314e Attachment](StructureDefinition-attachment-314e.md)
  * Description: A constrained Attachment datatype profile in which Attachment.data SHALL never be populated. All attachment content SHALL be externalized into object storage and referenced using Attachment.url. If attachment content originated as inline data/blob content and was subsequently externalized into object storage, the Attachment SHALL carry the tag 'inline-data-externalized-to-file' using the attachment-tag extension.
* Name: [314e CodeableConcept](StructureDefinition-codeableconcept-314e.md)
  * Description: 314e profile of the FHIR CodeableConcept datatype. This profile supports: - standard terminology codings - optional customer-specific internal codings Internal codings are used to preserve customer, EHR, workflow, and source-system-native semantic classifications and source system fidelity. Any coding system intended to represent an internal coding system SHALL follow the required naming convention: [customer]-[ehr]-[ResourceType]-[resource-subtype]-[element]-[SourceSpecificString]-InternalCode Example: acme-epic-Observation-lab-code-Glucose-InternalCode
* Name: [314e Coding](StructureDefinition-coding-314e.md)
  * Description: 314e profile of the FHIR Coding datatype. This profile strengthens semantic interoperability expectations around population of system, code, and display. When display is populated, code SHALL also be populated. If source data lacks a formal coded value but provides textual display content, implementers SHOULD generate a surrogate code using the display text transformed as follows: - convert all letters to lower case - replace spaces with hyphens Example: Display: "Blood Culture" Generated code: "blood-culture" Whenever either code or display is populated, system SHALL also be populated. This data type supports: - standard terminology codings - optional customer-specific internal codings Internal codings are used to preserve customer, EHR, workflow, and source-system-native semantic classifications and source system fidelity. Any coding system intended to represent an internal coding system SHALL follow the required naming convention: [customer]-[ehr]-[ResourceType]-[resource-subtype]-[element]-[SourceSpecificString]-InternalCode Example: acme-epic-Observation-lab-code-Glucose-InternalCode
* Name: [314e ContactPoint](StructureDefinition-contactpoint-314e.md)
  * Description: 314e profile of the FHIR ContactPoint datatype. This profile constrains the period element to use the 314e Period profile.
* Name: [314e DataRequirement](StructureDefinition-datarequirement-314e.md)
  * Description: 314e profile of the FHIR DataRequirement datatype. This profile constrains CodeableConcept, Reference, Coding, dateTime, Period, and Duration sub-elements to their corresponding 314e datatype profiles.
* Name: [314e Dosage](StructureDefinition-dosage-314e.md)
  * Description: 314e profile of the FHIR Dosage datatype. This profile constrains CodeableConcept, Timing, and quantity-related sub-elements to their corresponding 314e datatype profiles.
* Name: [314e Duration](StructureDefinition-duration-314e.md)
  * Description: 314e profile of the FHIR Duration datatype. Derived from FHIR Duration and incorporates 314e Quantity datatype behavior including: - quantity precision support - quantity string support - value string support
* Name: [314e HumanName](StructureDefinition-humanname-314e.md)
  * Description: 314e profile of the FHIR HumanName datatype. This profile constrains the period element to use the 314e Period profile.
* Name: [314e Identifier](StructureDefinition-identifier-314e.md)
  * Description: 314e profile of the FHIR Identifier datatype. This profile requires Identifier.system whenever Identifier.value is populated. For customer-specific or internally defined identifiers, Identifier.system SHALL follow the naming convention: [customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier Example: acme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier
* Name: [314e Meta](StructureDefinition-meta-314e.md)
  * Description: 314e profile of the FHIR Meta datatype. This profile constrains the lastUpdated (instant), security (Coding), and tag (Coding) sub-elements to their corresponding 314e datatype profiles.
* Name: [314e Money](StructureDefinition-money-314e.md)
  * Description: 314e profile of the FHIR Money datatype. This profile constrains the decimal value sub-element to the 314e decimal profile.
* Name: [314e Period](StructureDefinition-period-314e.md)
  * Description: 314e profile of the FHIR Period datatype. All dateTime values within the Period SHALL conform to the 314e DateTime profile requirements, including UTC normalization and precision handling.
* Name: [314e Quantity](StructureDefinition-quantity-314e.md)
  * Description: An extended Quantity datatype supporting precision metadata and alternate textual representations. This profile SHALL be used so that the data can be faithfully represented in the following scenarios:1. The quantity value, such as a vital sign reading or a lab result value, is limited to a defined number of digits after the decimal in the source and this precision needs to be recorded with the value.2. The display-oriented or source-oriented textual representation of a quantity needs to be recorded, either in addition to the computable elements or because the original representation cannot be separated into distinct value and unit.3. The original source representation of a quantity value needs to be preserved, either because the original representation of value cannot be converted to numeric or for display or audit purposes.
* Name: [314e Range](StructureDefinition-range-314e.md)
  * Description: A 314e-constrained Range datatype using 314e SimpleQuantity profiles.
* Name: [314e Ratio](StructureDefinition-ratio-314e.md)
  * Description: A 314e-constrained Ratio datatype using 314e Quantity profiles.
* Name: [314e Reference](StructureDefinition-reference-314e.md)
  * Description: A constrained Reference datatype profile supporting semantic qualification of references using the reference-context extension. This profile enables references to carry additional information about the role, capacity, purpose, or contextual meaning of the referenced resource.
* Name: [314e RelatedArtifact](StructureDefinition-relatedartifact-314e.md)
  * Description: 314e profile of the FHIR RelatedArtifact datatype. This profile constrains the document (Attachment) sub-element to the 314e Attachment profile.
* Name: [314e SampledData](StructureDefinition-sampleddata-314e.md)
  * Description: 314e profile of the FHIR SampledData datatype. This profile constrains numeric and quantity-related elements to corresponding 314e datatype profiles. SampledData is typically used for: - waveforms - physiological telemetry - ECG traces - continuous monitoring streams - device-generated measurements
* Name: [314e Signature](StructureDefinition-signature-314e.md)
  * Description: 314e profile of the FHIR Signature datatype. This profile constrains Coding, instant, and Reference sub-elements to their corresponding 314e datatype profiles.
* Name: [314e SimpleQuantity](StructureDefinition-simplequantity-314e.md)
  * Description: A 314e-constrained SimpleQuantity datatype supporting precision metadata and alternate textual representations.
* Name: [314e Timing](StructureDefinition-timing-314e.md)
  * Description: Describes the occurrence of an event that may occur multiple times. Timing schedules are used for specifying when events are expected or requested to occur and may also be used to represent the summary of a past or ongoing event. For simplicity, the definitions of Timing components are expressed as 'future' events, but such components can also be used to describe historic or ongoing events. A Timing schedule can be a list of events and/or criteria for when the event happens, which can be expressed in a structured form and/or as a code. When both event and a repeating specification are provided, the list of events should be understood as an interpretation of the information in the repeat structure. Note: The Timing data type allows modifier extensions. 314e profile of the FHIR Timing datatype uses 314e datatype profiles including DateTime314e, Period314e, CodeableConcept314e and Quantity314e.

