CodeSystem: ProcedureCategory314eCS
Id: procedure-category-314e
Title: "314e Procedure Category CodeSystem"
Description: """
Hierarchical procedure categories used for operational,
workflow, and semantic classification of Procedure resources.
"""

* ^url = "http://314e.com/fhir/CodeSystem/procedure-category-314e"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* ^hierarchyMeaning = #is-a

// ======================================================
// LABORATORY MEDICINE
// ======================================================

* #LAB "Laboratory Medicine (In-Vitro)"

* #LAB #CHEM "Hematology & Chemistry"
* #LAB #PATH "Pathology & Cytology"
* #LAB #MICV "Microbiology & Virology"
* #LAB #BBTM "Transfusion Medicine / Blood Bank"
* #LAB #GEND "Molecular Diagnostics & Genetics"

// ======================================================
// DIAGNOSTIC IMAGING
// ======================================================

* #IMG "Diagnostic Imaging (Anatomical)"

* #IMG #RRXG "Routine Radiology"
* #IMG #ACSI "Advanced Cross-Sectional"
* #IMG #CATH "Interventional Radiology & Cath Lab Imaging"
* #IMG #NUCM "Nuclear Medicine"
* #IMG #MEDP "Medical Photography"

// ======================================================
// FUNCTIONAL & PHYSIOLOGICAL
// ======================================================

* #FNP "Functional & Physiological Studies"

* #FNP #CARD "Cardiology"
* #FNP #NEUS "Neurology & Sleep"
* #FNP #PULM "Pulmonary"
* #FNP #AUDV "Audiology & Vestibular"
* #FNP #GIFN "Gastroenterology Functional"

// ======================================================
// INVASIVE & SURGICAL
// ======================================================

* #SUR "Invasive & Surgical Procedures"

* #SUR #ORSU "Operative & Major Surgical Procedures"
* #SUR #ENDO "Endoscopic Procedures"
* #SUR #MSUR "Bedside & Minor Invasive Procedures"

// ======================================================
// THERAPEUTICS & INFUSION
// ======================================================

* #TIN "Therapeutics & Infusion Services"

* #TIN #IONC "Infusion Oncology"
* #TIN #RONC "Radiation Oncology"
* #TIN #BLDT "Renal & Blood Therapies"
* #TIN #INFU "Specialty Infusions"
* #TIN #MEDA "Bedside & General Medication Administration"

// ======================================================
// REHABILITATIVE
// ======================================================

* #RHB "Rehabilitative, Supportive & Physical Medicine"

* #RHB #PHYT "Physical Therapy"
* #RHB #OCCT "Occupational Therapy"
* #RHB #SPLP "Speech-Language Pathology"
* #RHB #RSPT "Respiratory Therapy"
* #RHB #PALC "Palliative & Comfort Care Regimens"

// ======================================================
// COGNITIVE / BEHAVIORAL
// ======================================================

* #CBE "Cognitive, Behavioral & Education Services"

* #CBE #WELL "Preventive & Wellness Education"
* #CBE #PSYC "Psychological & Mental Health Counseling"
* #CBE #GENC "Genetic & Familial Counseling"
* #CBE #MEDC "Medication and Device Compliance Education"

// ======================================================
// CONSULTATIONS & COORDINATION
// ======================================================

* #CNS "Clinical Consultations & Care Coordination"

* #CNS #SPEC "Specialist Consultations & Referrals"
* #CNS #NURS "Nursing & Bedside Care Orders"
* #CNS #SDOH "Social & Community Care Services"
* #CNS #DIST "Discharge & Transitional Care Management"
