Profile: SampledData314e
Parent: SampledData
Id: sampleddata-314e
Title: "314e SampledData"
Description: """
314e profile of the FHIR SampledData datatype.

This profile constrains numeric and quantity-related
elements to corresponding 314e datatype profiles.

SampledData is typically used for:
- waveforms
- physiological telemetry
- ECG traces
- continuous monitoring streams
- device-generated measurements
"""

* ^status = #active

* origin only SimpleQuantity314e

* period only decimal314e

* factor only decimal314e

* lowerLimit only decimal314e

* upperLimit only decimal314e


