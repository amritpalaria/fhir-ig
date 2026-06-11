Profile: ObservationLabGeneral314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-observation-lab
Id: observation-lab-general-314e
Title: "314e General Laboratory Observation"
Description: """
314e profile for general laboratory observations.

This profile derives from the QI Core Laboratory Result Observation profile
and constrains datatypes to corresponding 314e datatype profiles where applicable.

A required category slice SHALL identify the laboratory subcategory
using a code from LabCategorySubcategory314eVS.

This profile also supports the ValueAttachment314e extension
for scenarios where the laboratory result cannot be represented
using structured Observation.value[x] datatypes or plain text.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"

* ^status = #active

// ======================================================
// IDENTIFIERS
// ======================================================

* identifier 0..*

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open

* identifier contains internalIdentifier 0..*

* identifier[internalIdentifier] ^short =
    "Customer-specific internal identifier whose system SHALL follow the 314e internal naming convention"

* identifier[internalIdentifier] ^definition = """
Customer-specific or internally defined identifier.

Identifier.system SHALL follow the mandated 314e naming convention:

[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier

Example:
acme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier
"""

* identifier[internalIdentifier].system ^example[0].label =
    "Internal laboratory accession identifier system"

* identifier[internalIdentifier].system ^example[0].valueUri =
    "acme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier"

* identifier only Identifier314e

// ======================================================
// CATEGORY SLICE
// ======================================================

* category contains labSubcategory 1..1

* category[labSubcategory] from LabCategorySubcategory314eVS (required)

* category[labSubcategory] ^short =
    "Required laboratory category/subcategory classification"

* category[labSubcategory] ^definition = """
Required laboratory category/subcategory classification
for the non-microbiology laboratory observation.

The code SHALL be drawn from LabCategorySubcategory314eVS.
"""

* category only CodeableConcept314e

// ======================================================
// REFERENCES
// ======================================================

* basedOn only Reference314e
* partOf only Reference314e
* subject only Reference314e
* encounter only Reference314e
* performer only Reference314e
* specimen only Reference314e
* device only Reference314e
* derivedFrom only Reference314e
* focus only Reference314e

// ======================================================
// HAS MEMBER SLICING
// ======================================================

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #open
* hasMember only Reference314e  // has to be before the slice assignments - otherwise it overwrites slice assignments

* hasMember contains childObservation 0..*
* hasMember[childObservation] only Reference(Observation)
* hasMember[childObservation] ^type.targetProfile =
    "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"


// ======================================================
// CODEABLE CONCEPTS
// ======================================================

* code only CodeableConcept314e
* interpretation only CodeableConcept314e
* bodySite only CodeableConcept314e
* method only CodeableConcept314e

// ======================================================
// TEMPORALS
// ======================================================

* effective[x] only 
    dateTime314e or 
    Period314e or 
    Timing314e or 
    instant314e
* issued only instant314e

// ======================================================
// VALUE DATATYPES
// ======================================================

* value[x] only
    Quantity314e or
    CodeableConcept314e or
    string or
    boolean or
    integer or
    Range314e or
    Ratio314e or
    SampledData314e or
    time314e or
    dateTime314e or
    Period314e

// ======================================================
// COMPONENT DATATYPES
// ======================================================

* component.code only CodeableConcept314e
* component.value[x] only
    Quantity314e or
    CodeableConcept314e or
    string or
    boolean or
    integer or
    Range314e or
    Ratio314e or
    SampledData314e or
    time314e or
    dateTime314e or
    Period314e

* component.interpretation only CodeableConcept314e
* component.referenceRange.low only SimpleQuantity314e
* component.referenceRange.high only SimpleQuantity314e
* component.referenceRange.type only CodeableConcept314e
* component.referenceRange.appliesTo only CodeableConcept314e
* component.referenceRange.age only Range314e
* component.referenceRange.text only string

// ======================================================
// REFERENCE RANGE DATATYPES
// ======================================================

* referenceRange.low only SimpleQuantity314e
* referenceRange.high only SimpleQuantity314e
* referenceRange.type only CodeableConcept314e
* referenceRange.appliesTo only CodeableConcept314e
* referenceRange.age only Range314e
* referenceRange.text only string

// ======================================================
// VALUE ATTACHMENT EXTENSION
// ======================================================

* extension contains
    ObservationValueAttachment named valueAttachment 0..1

* extension[valueAttachment] ^short =
    "Attachment representation of the observation result"

* extension[valueAttachment] ^definition = """
Used when the laboratory result cannot reasonably be represented
using one of the structured Observation.value[x] datatypes
or as plain text.

Examples include:
- rendered PDF reports
- image-based results
- externally generated proprietary payloads
- complex formatted laboratory output
"""
* meta only Meta314e
