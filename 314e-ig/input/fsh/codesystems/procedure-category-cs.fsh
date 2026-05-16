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
// 1. LABORATORY MEDICINE
// ======================================================

* #LAB "Laboratory Medicine (In-Vitro)"
  "Laboratory diagnostic services"

  * #CHEM "Hematology & Chemistry"
    "Blood counts, routine panels"

  * #PATH "Pathology & Cytology"
    "Biopsies, cell blocks, smears"

  * #MICV "Microbiology & Virology"
    "Cultures, PCR tests, stains"

  * #BBTM "Transfusion Medicine / Blood Bank"
    "Cross-matches, antibody screens"

  * #GEND "Molecular Diagnostics & Genetics"
    "Gene sequencing, karyotyping"

// ======================================================
// 2. DIAGNOSTIC IMAGING
// ======================================================

* #IMG "Diagnostic Imaging (Anatomical)"
  "Anatomical imaging procedures"

  * #RRXG "Routine Radiology"
    "Plain X-Rays, Mammography"

  * #ACSI "Advanced Cross-Sectional"
    "CT Scans, MRIs"

  * #CATH "Interventional Radiology & Cath Lab Imaging"
    "Angiography, Fluoroscopy"

  * #NUCM "Nuclear Medicine"
    "PET Scans, SPECT Scans, Bone Scintigraphy"

  * #MEDP "Medical Photography"
    "Dermatology, Ophthalmology retinal photos"

// ======================================================
// 3. FUNCTIONAL & PHYSIOLOGICAL STUDIES
// ======================================================

* #FNP "Functional & Physiological Studies (Non-Invasive)"
  "Functional and physiological diagnostic procedures"

  * #CARD "Cardiology"
    "EKGs, Holter monitors, Stress tests"

  * #NEUS "Neurology & Sleep"
    "EEGs, EMGs, Polysomnography"

  * #PULM "Pulmonary"
    "PFTs, Spirometry, Blood Gas tracings"

  * #AUDV "Audiology & Vestibular"
    "Audiograms, Tympanometry, VNG balance tests"

  * #GIFN "Gastroenterology Functional"
    "Manometry, 24-hr pH monitoring"

// ======================================================
// 4. INVASIVE & SURGICAL
// ======================================================

* #SUR "Invasive & Surgical Procedures"
  "Invasive and surgical clinical procedures"

  * #ORSU "Operative & Major Surgical Procedures"
    "OR surgeries, day surgeries"

  * #ENDO "Endoscopic Procedures"
    "GI scopes, Bronchoscopy, Cystoscopy"

  * #MSUR "Bedside & Minor Invasive Procedures"
    "Lumbar punctures, Paracentesis"

// ======================================================
// 5. THERAPEUTICS & INFUSION SERVICES
// ======================================================

* #TIN "Therapeutics & Infusion Services"
  "Therapeutic and infusion-based treatment services"

  * #IONC "Infusion Oncology"
    "Chemotherapy, Immunotherapy biologics"

  * #RONC "Radiation Oncology"
    "External beam radiation, Brachytherapy"

  * #BLDT "Renal & Blood Therapies"
    "Hemodialysis, Peritoneal dialysis, Apheresis"

  * #INFU "Specialty Infusions"
    "IV Antibiotics, Iron infusions, Pain pumps"

  * #MEDA "Bedside & General Medication Administration"
    "General medication administration activities"

// ======================================================
// 6. REHABILITATIVE & SUPPORTIVE SERVICES
// ======================================================

* #RHB "Rehabilitative, Supportive & Physical Medicine"
  "Rehabilitative and supportive therapeutic services"

  * #PHYT "Physical Therapy"
    "Gross motor, mobility, wound care"

  * #OCCT "Occupational Therapy"
    "Fine motor, cognitive/ADL adaptations"

  * #SPLP "Speech-Language Pathology"
    "Swallowing studies, cognitive speech"

  * #RSPT "Respiratory Therapy"
    "Ventilator weaning, chest physiotherapy"

  * #PALC "Palliative & Comfort Care Regimens"
    "Symptom optimization, end-of-life care"

// ======================================================
// 7. COGNITIVE, BEHAVIORAL & EDUCATION
// ======================================================

* #CBE "Cognitive, Behavioral & Education Services"
  "Cognitive, behavioral, counseling, and educational services"

  * #WELL "Preventive & Wellness Education"
    "Diet tracking, smoking cessation, lactation support"

  * #PSYC "Psychological & Mental Health Counseling"
    "Psychotherapy, grief counseling, CBT"

  * #GENC "Genetic & Familial Counseling"
    "Pre-implantation counseling, oncology risk mapping"

  * #MEDC "Medication and Device Compliance Education"
    "Inhaler mechanics training, anticoagulant compliance"

// ======================================================
// 8. CLINICAL CONSULTATIONS & CARE COORDINATION
// ======================================================

* #CNS "Clinical Consultations & Care Coordination"
  "Consultation, coordination, referral, and transitional care services"

  * #SPEC "Specialist Consultations & Referrals"
    "Referral and specialist consultation workflows"

  * #NURS "Nursing & Bedside Care Orders"
    "Non-surgical clinical tasks executed by nursing staff"

  * #SDOH "Social & Community Care Services"
    "SDOH referrals including housing and food security"

  * #DIST "Discharge & Transitional Care Management"
    "Discharge planning and transitional care coordination"
