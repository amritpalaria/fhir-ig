# Simple Datatypes - 314e FHIR Implementation Guide v1.0.0

## Simple Datatypes

# Primitive Datatypes

* Name: [314e dateTime](StructureDefinition-datetime-314e.md)
  * Description: 314e profile of the FHIR dateTime primitive datatype. All dateTime values SHALL be stored in UTC. If only a smaller degree of precision is usable (for example, only the date portion is known), the following extension SHALL be used: http://314e.com/fhir/StructureDefinition/datetime-precision-314e If all or part of the usable date/time value is approximate rather than exact, the following extension SHALL be used: https://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator
* Name: [314e decimal](StructureDefinition-decimal-314e.md)
  * Description: 314e profile of the FHIR decimal primitive datatype. Supports explicit precision representation using: http://hl7.org/fhir/StructureDefinition/quantity-precision This extension specifies the intended or known precision of the decimal value independently of the actual lexical form.
* Name: [314e instant](StructureDefinition-instant-314e.md)
  * Description: 314e profile of the FHIR instant primitive datatype. All instant values SHALL be stored in UTC. An instant represents an exact point in time and therefore does not support approximate or estimated accuracy semantics. If only a smaller degree of precision is usable (for example, only minute precision is meaningful), the following extension SHALL be used: http://314e.com/fhir/StructureDefinition/datetime-precision-314e
* Name: [314e time](StructureDefinition-time-314e.md)
  * Description: 314e profile of the FHIR time primitive datatype - a time during the day, in the format hh:mm:ss. There is no date specified. Seconds must be provided due to schema type constraints but may be zero-filled and may be ignored at receiver discretion. The time "24:00" SHALL NOT be used. A time zone SHALL NOT be present. Times can be converted to a Duration since midnight. If only a smaller degree of precision than syntactically recorded is usable (for example, only hour and minute are known), the following extension SHALL be used: http://314e.com/fhir/StructureDefinition/time-precision-314e If all or part of the usable time value is approximate rather than exact, the following extension SHALL be used: http://314e.com/fhir/StructureDefinition/time-accuracy-indicator-314e

