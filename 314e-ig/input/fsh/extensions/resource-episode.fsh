Extension: ResourceEpisode
Id: resource-episode
Title: "Resource Episode"
Description: """
Applied directly at the root level of clinical resources to store an
EpisodeOfCare reference.

This extension links a resource to its associated episode of care when
that association is not otherwise expressible through standard FHIR elements.
"""

Context: DomainResource

* ^url = "http://314ecorp.com/fhir/StructureDefinition/resource-episode"
* ^status = #active

* value[x] only Reference314e
* valueReference 1..1
* valueReference ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"

* valueReference ^short = "Associated episode of care"
* valueReference ^definition = """
Reference to the EpisodeOfCare resource with which this resource is associated.
"""
