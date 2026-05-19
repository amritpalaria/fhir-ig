ValueSet: LabCategorySubcategory314eVS
Id: lab-category-subcategory-314e
Title: "314e Lab Subcategories"
Description: """
Procedure subcategories of Lab category used for more granular
operational classification.
"""

* ^url = "http://314e.com/fhir/ValueSet/lab-category-subcategory-314e"

* include codes from system ProcedureCategory314eCS
    where concept descendent-of #LAB
