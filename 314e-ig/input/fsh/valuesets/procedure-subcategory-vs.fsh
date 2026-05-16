ValueSet: ProcedureCategorySubcategory314eVS
Id: procedure-category-subcategory-314e
Title: "314e Procedure Subcategories"
Description: """
Procedure subcategories used for more granular
operational classification.
"""

* ^url = "http://314e.com/fhir/ValueSet/procedure-category-subcategory-314e"

* include codes from system ProcedureCategory314eCS
    where concept descendent-of #LAB

* include codes from system ProcedureCategory314eCS
    where concept descendent-of #IMG

* include codes from system ProcedureCategory314eCS
    where concept descendent-of #FNP

* include codes from system ProcedureCategory314eCS
    where concept descendent-of #SUR

* include codes from system ProcedureCategory314eCS
    where concept descendent-of #TIN

* include codes from system ProcedureCategory314eCS
    where concept descendent-of #RHB

* include codes from system ProcedureCategory314eCS
    where concept descendent-of #CBE

* include codes from system ProcedureCategory314eCS
    where concept descendent-of #CNS
