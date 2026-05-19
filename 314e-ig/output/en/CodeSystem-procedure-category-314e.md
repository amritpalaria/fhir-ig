# 314e Procedure Category CodeSystem - 314e FHIR Implementation Guide v1.0.0

## CodeSystem: 314e Procedure Category CodeSystem 

 
Hierarchical procedure categories used for operational, workflow, and semantic classification of Procedure resources. 

This Code system is referenced in the definition of the following value sets:

* [LabCategorySubcategory314eVS](ValueSet-lab-category-subcategory-314e.md)
* [ProcedureCategoryBroad314eVS](ValueSet-procedure-category-broad-314e.md)
* [ProcedureCategorySubcategory314eVS](ValueSet-procedure-category-subcategory-314e.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "procedure-category-314e",
  "url" : "http://314e.com/fhir/CodeSystem/procedure-category-314e",
  "version" : "1.0.0",
  "name" : "ProcedureCategory314eCS",
  "title" : "314e Procedure Category CodeSystem",
  "status" : "active",
  "date" : "2026-05-19T11:54:54+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Hierarchical procedure categories used for operational,\nworkflow, and semantic classification of Procedure resources.",
  "caseSensitive" : true,
  "hierarchyMeaning" : "is-a",
  "content" : "complete",
  "count" : 44,
  "concept" : [{
    "code" : "LAB",
    "display" : "Laboratory Medicine (In-Vitro)",
    "definition" : "Laboratory diagnostic services",
    "concept" : [{
      "code" : "CHEM",
      "display" : "Hematology & Chemistry",
      "definition" : "Blood counts, routine panels"
    },
    {
      "code" : "PATH",
      "display" : "Pathology & Cytology",
      "definition" : "Biopsies, cell blocks, smears"
    },
    {
      "code" : "MICV",
      "display" : "Microbiology & Virology",
      "definition" : "Cultures, PCR tests, stains"
    },
    {
      "code" : "BBTM",
      "display" : "Transfusion Medicine / Blood Bank",
      "definition" : "Cross-matches, antibody screens"
    },
    {
      "code" : "GEND",
      "display" : "Molecular Diagnostics & Genetics",
      "definition" : "Gene sequencing, karyotyping"
    }]
  },
  {
    "code" : "IMG",
    "display" : "Diagnostic Imaging (Anatomical)",
    "definition" : "Anatomical imaging procedures",
    "concept" : [{
      "code" : "RRXG",
      "display" : "Routine Radiology",
      "definition" : "Plain X-Rays, Mammography"
    },
    {
      "code" : "ACSI",
      "display" : "Advanced Cross-Sectional",
      "definition" : "CT Scans, MRIs"
    },
    {
      "code" : "CATH",
      "display" : "Interventional Radiology & Cath Lab Imaging",
      "definition" : "Angiography, Fluoroscopy"
    },
    {
      "code" : "NUCM",
      "display" : "Nuclear Medicine",
      "definition" : "PET Scans, SPECT Scans, Bone Scintigraphy"
    },
    {
      "code" : "MEDP",
      "display" : "Medical Photography",
      "definition" : "Dermatology, Ophthalmology retinal photos"
    }]
  },
  {
    "code" : "FNP",
    "display" : "Functional & Physiological Studies (Non-Invasive)",
    "definition" : "Functional and physiological diagnostic procedures",
    "concept" : [{
      "code" : "CARD",
      "display" : "Cardiology",
      "definition" : "EKGs, Holter monitors, Stress tests"
    },
    {
      "code" : "NEUS",
      "display" : "Neurology & Sleep",
      "definition" : "EEGs, EMGs, Polysomnography"
    },
    {
      "code" : "PULM",
      "display" : "Pulmonary",
      "definition" : "PFTs, Spirometry, Blood Gas tracings"
    },
    {
      "code" : "AUDV",
      "display" : "Audiology & Vestibular",
      "definition" : "Audiograms, Tympanometry, VNG balance tests"
    },
    {
      "code" : "GIFN",
      "display" : "Gastroenterology Functional",
      "definition" : "Manometry, 24-hr pH monitoring"
    }]
  },
  {
    "code" : "SUR",
    "display" : "Invasive & Surgical Procedures",
    "definition" : "Invasive and surgical clinical procedures",
    "concept" : [{
      "code" : "ORSU",
      "display" : "Operative & Major Surgical Procedures",
      "definition" : "OR surgeries, day surgeries"
    },
    {
      "code" : "ENDO",
      "display" : "Endoscopic Procedures",
      "definition" : "GI scopes, Bronchoscopy, Cystoscopy"
    },
    {
      "code" : "MSUR",
      "display" : "Bedside & Minor Invasive Procedures",
      "definition" : "Lumbar punctures, Paracentesis"
    }]
  },
  {
    "code" : "TIN",
    "display" : "Therapeutics & Infusion Services",
    "definition" : "Therapeutic and infusion-based treatment services",
    "concept" : [{
      "code" : "IONC",
      "display" : "Infusion Oncology",
      "definition" : "Chemotherapy, Immunotherapy biologics"
    },
    {
      "code" : "RONC",
      "display" : "Radiation Oncology",
      "definition" : "External beam radiation, Brachytherapy"
    },
    {
      "code" : "BLDT",
      "display" : "Renal & Blood Therapies",
      "definition" : "Hemodialysis, Peritoneal dialysis, Apheresis"
    },
    {
      "code" : "INFU",
      "display" : "Specialty Infusions",
      "definition" : "IV Antibiotics, Iron infusions, Pain pumps"
    },
    {
      "code" : "MEDA",
      "display" : "Bedside & General Medication Administration",
      "definition" : "General medication administration activities"
    }]
  },
  {
    "code" : "RHB",
    "display" : "Rehabilitative, Supportive & Physical Medicine",
    "definition" : "Rehabilitative and supportive therapeutic services",
    "concept" : [{
      "code" : "PHYT",
      "display" : "Physical Therapy",
      "definition" : "Gross motor, mobility, wound care"
    },
    {
      "code" : "OCCT",
      "display" : "Occupational Therapy",
      "definition" : "Fine motor, cognitive/ADL adaptations"
    },
    {
      "code" : "SPLP",
      "display" : "Speech-Language Pathology",
      "definition" : "Swallowing studies, cognitive speech"
    },
    {
      "code" : "RSPT",
      "display" : "Respiratory Therapy",
      "definition" : "Ventilator weaning, chest physiotherapy"
    },
    {
      "code" : "PALC",
      "display" : "Palliative & Comfort Care Regimens",
      "definition" : "Symptom optimization, end-of-life care"
    }]
  },
  {
    "code" : "CBE",
    "display" : "Cognitive, Behavioral & Education Services",
    "definition" : "Cognitive, behavioral, counseling, and educational services",
    "concept" : [{
      "code" : "WELL",
      "display" : "Preventive & Wellness Education",
      "definition" : "Diet tracking, smoking cessation, lactation support"
    },
    {
      "code" : "PSYC",
      "display" : "Psychological & Mental Health Counseling",
      "definition" : "Psychotherapy, grief counseling, CBT"
    },
    {
      "code" : "GENC",
      "display" : "Genetic & Familial Counseling",
      "definition" : "Pre-implantation counseling, oncology risk mapping"
    },
    {
      "code" : "MEDC",
      "display" : "Medication and Device Compliance Education",
      "definition" : "Inhaler mechanics training, anticoagulant compliance"
    }]
  },
  {
    "code" : "CNS",
    "display" : "Clinical Consultations & Care Coordination",
    "definition" : "Consultation, coordination, referral, and transitional care services",
    "concept" : [{
      "code" : "SPEC",
      "display" : "Specialist Consultations & Referrals",
      "definition" : "Referral and specialist consultation workflows"
    },
    {
      "code" : "NURS",
      "display" : "Nursing & Bedside Care Orders",
      "definition" : "Non-surgical clinical tasks executed by nursing staff"
    },
    {
      "code" : "SDOH",
      "display" : "Social & Community Care Services",
      "definition" : "SDOH referrals including housing and food security"
    },
    {
      "code" : "DIST",
      "display" : "Discharge & Transitional Care Management",
      "definition" : "Discharge planning and transitional care coordination"
    }]
  }]
}

```
