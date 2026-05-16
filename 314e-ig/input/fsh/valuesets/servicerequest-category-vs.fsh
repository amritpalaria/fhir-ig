ValueSet: ServiceRequestCategory314eVS
Id: servicerequest-category-314e
Title: "314e ServiceRequest Category ValueSet"
Description: """
Required high-level category classifications for 314e
ServiceRequest resources.
"""

* ^url = "http://314e.com/fhir/ValueSet/servicerequest-category-314e"
* ^status = #active

// Laboratory Medicine
* http://terminology.hl7.org/CodeSystem/v2-0074#LAB
    "Laboratory"

// Diagnostic Imaging
* http://snomed.info/sct#363679005
    "Imaging"

// Functional Studies
* http://snomed.info/sct#252416005
    "Physiological study"

// Invasive & Surgical
* http://snomed.info/sct#387713003
    "Surgical procedure"

// Therapeutics & Infusion
* http://snomed.info/sct#277132007
    "Therapeutic procedure"

// Rehabilitative Medicine
* http://snomed.info/sct#385805005
    "Rehabilitation procedure"

// Cognitive, Behavioral & Education Services
* http://snomed.info/sct#311401005
    "Patient education and counseling"

// Clinical Consultations & Care Coordination
* http://snomed.info/sct#409035000
    "Provider-to-provider consultation"
