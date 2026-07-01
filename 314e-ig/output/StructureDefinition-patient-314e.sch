<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile QICorePatient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-sex']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-sex': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://314e.com/fhir/StructureDefinition/patient-preferredGenderPronoun']) &lt;= 1">extension with URL = 'http://314e.com/fhir/StructureDefinition/patient-preferredGenderPronoun': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://314e.com/fhir/StructureDefinition/patient-mothersName']) &lt;= 1">extension with URL = 'http://314e.com/fhir/StructureDefinition/patient-mothersName': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://314e.com/fhir/StructureDefinition/patient-employmentStatus']) &lt;= 1">extension with URL = 'http://314e.com/fhir/StructureDefinition/patient-employmentStatus': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://314e.com/fhir/StructureDefinition/patient-disability-314e']) &lt;= 1">extension with URL = 'http://314e.com/fhir/StructureDefinition/patient-disability-314e': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://314e.com/fhir/StructureDefinition/patient-adoptionInfo-314e']) &lt;= 1">extension with URL = 'http://314e.com/fhir/StructureDefinition/patient-adoptionInfo-314e': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://314e.com/fhir/StructureDefinition/patient-religion-314e']) &lt;= 1">extension with URL = 'http://314e.com/fhir/StructureDefinition/patient-religion-314e': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://314e.com/fhir/StructureDefinition/patient-importance-314e']) &lt;= 1">extension with URL = 'http://314e.com/fhir/StructureDefinition/patient-importance-314e': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://314e.com/fhir/StructureDefinition/patient-animal-314e']) &lt;= 1">extension with URL = 'http://314e.com/fhir/StructureDefinition/patient-animal-314e': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://314e.com/fhir/StructureDefinition/individual-genderIdentity-314e']) &lt;= 1">extension with URL = 'http://314e.com/fhir/StructureDefinition/individual-genderIdentity-314e': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-cadavericDonor']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-cadavericDonor': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:birthDate</sch:title>
    <sch:rule context="f:Patient/f:birthDate">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://314e.com/fhir/StructureDefinition/patient-birthTime-314e']) &lt;= 1">extension with URL = 'http://314e.com/fhir/StructureDefinition/patient-birthTime-314e': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address</sch:title>
    <sch:rule context="f:Patient/f:address">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-preferred|5.2.0-ballot']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-preferred|5.2.0-ballot': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
