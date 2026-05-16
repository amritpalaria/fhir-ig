ValueSet: ProcedureCategoryBroad314eVS
Id: procedure-category-broad-314e
Title: "314e Broad Procedure Categories"
Description: """
Broad top-level procedure categories.
"""

* ^url = "http://314e.com/fhir/ValueSet/procedure-category-broad-314e"

* include codes from system ProcedureCategory314eCS
    where concept is-a #LAB

* include codes from system ProcedureCategory314eCS
    where concept is-a #IMG

* include codes from system ProcedureCategory314eCS
    where concept is-a #FNP

* include codes from system ProcedureCategory314eCS
    where concept is-a #SUR

* include codes from system ProcedureCategory314eCS
    where concept is-a #TIN

* include codes from system ProcedureCategory314eCS
    where concept is-a #RHB

* include codes from system ProcedureCategory314eCS
    where concept is-a #CBE

* include codes from system ProcedureCategory314eCS
    where concept is-a #CNS
