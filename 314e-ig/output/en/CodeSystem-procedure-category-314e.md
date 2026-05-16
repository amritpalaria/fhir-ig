# 314e Procedure Category CodeSystem - 314e FHIR Implementation Guide v1.0.0

## CodeSystem: 314e Procedure Category CodeSystem 

 
Hierarchical procedure categories used for operational, workflow, and semantic classification of Procedure resources. 

This Code system is referenced in the definition of the following value sets:

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
  "date" : "2026-05-16T10:04:42+05:30",
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
    "concept" : [{
      "code" : "CHEM",
      "display" : "Hematology & Chemistry"
    },
    {
      "code" : "PATH",
      "display" : "Pathology & Cytology"
    },
    {
      "code" : "MICV",
      "display" : "Microbiology & Virology"
    },
    {
      "code" : "BBTM",
      "display" : "Transfusion Medicine / Blood Bank"
    },
    {
      "code" : "GEND",
      "display" : "Molecular Diagnostics & Genetics"
    }]
  },
  {
    "code" : "IMG",
    "display" : "Diagnostic Imaging (Anatomical)",
    "concept" : [{
      "code" : "RRXG",
      "display" : "Routine Radiology"
    },
    {
      "code" : "ACSI",
      "display" : "Advanced Cross-Sectional"
    },
    {
      "code" : "CATH",
      "display" : "Interventional Radiology & Cath Lab Imaging"
    },
    {
      "code" : "NUCM",
      "display" : "Nuclear Medicine"
    },
    {
      "code" : "MEDP",
      "display" : "Medical Photography"
    }]
  },
  {
    "code" : "FNP",
    "display" : "Functional & Physiological Studies",
    "concept" : [{
      "code" : "CARD",
      "display" : "Cardiology"
    },
    {
      "code" : "NEUS",
      "display" : "Neurology & Sleep"
    },
    {
      "code" : "PULM",
      "display" : "Pulmonary"
    },
    {
      "code" : "AUDV",
      "display" : "Audiology & Vestibular"
    },
    {
      "code" : "GIFN",
      "display" : "Gastroenterology Functional"
    }]
  },
  {
    "code" : "SUR",
    "display" : "Invasive & Surgical Procedures",
    "concept" : [{
      "code" : "ORSU",
      "display" : "Operative & Major Surgical Procedures"
    },
    {
      "code" : "ENDO",
      "display" : "Endoscopic Procedures"
    },
    {
      "code" : "MSUR",
      "display" : "Bedside & Minor Invasive Procedures"
    }]
  },
  {
    "code" : "TIN",
    "display" : "Therapeutics & Infusion Services",
    "concept" : [{
      "code" : "IONC",
      "display" : "Infusion Oncology"
    },
    {
      "code" : "RONC",
      "display" : "Radiation Oncology"
    },
    {
      "code" : "BLDT",
      "display" : "Renal & Blood Therapies"
    },
    {
      "code" : "INFU",
      "display" : "Specialty Infusions"
    },
    {
      "code" : "MEDA",
      "display" : "Bedside & General Medication Administration"
    }]
  },
  {
    "code" : "RHB",
    "display" : "Rehabilitative, Supportive & Physical Medicine",
    "concept" : [{
      "code" : "PHYT",
      "display" : "Physical Therapy"
    },
    {
      "code" : "OCCT",
      "display" : "Occupational Therapy"
    },
    {
      "code" : "SPLP",
      "display" : "Speech-Language Pathology"
    },
    {
      "code" : "RSPT",
      "display" : "Respiratory Therapy"
    },
    {
      "code" : "PALC",
      "display" : "Palliative & Comfort Care Regimens"
    }]
  },
  {
    "code" : "CBE",
    "display" : "Cognitive, Behavioral & Education Services",
    "concept" : [{
      "code" : "WELL",
      "display" : "Preventive & Wellness Education"
    },
    {
      "code" : "PSYC",
      "display" : "Psychological & Mental Health Counseling"
    },
    {
      "code" : "GENC",
      "display" : "Genetic & Familial Counseling"
    },
    {
      "code" : "MEDC",
      "display" : "Medication and Device Compliance Education"
    }]
  },
  {
    "code" : "CNS",
    "display" : "Clinical Consultations & Care Coordination",
    "concept" : [{
      "code" : "SPEC",
      "display" : "Specialist Consultations & Referrals"
    },
    {
      "code" : "NURS",
      "display" : "Nursing & Bedside Care Orders"
    },
    {
      "code" : "SDOH",
      "display" : "Social & Community Care Services"
    },
    {
      "code" : "DIST",
      "display" : "Discharge & Transitional Care Management"
    }]
  }]
}

```
