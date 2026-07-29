{% assign profile_notes = site.data.generated.profile_notes[include.profile] %}
{% assign search = profile_notes.search %}
{% assign required_searches = search.requiredSearches %}

{% if search %}
{% if required_searches.size > 0 or profile_notes.usCore %}
#### Mandatory US Quality Core Server Search Parameters

The searches below are the focused set identified by US Quality Core as needed to retrieve USCDI+ Quality data for quality measurement and reporting. See the [US Core FHIR RESTful Search API Requirements]({{ site.data.fhir.ver.uscore }}/general-requirements.html#fhir-restful-search-api-requirements) for detailed information on requirements by search parameter type.

{% if profile_notes.usCore %}
Because this profile derives directly or indirectly from US Core, servers **SHALL** also support all mandatory searches described in the [US Core Server CapabilityStatement requirements for `{{ search.resource }}`]({{ site.data.fhir.ver.uscore }}/CapabilityStatement-us-core-server.html#Server_{{ search.resource | escape }}). When possible, this guide reuses mandatory searches from US Core and notes them with the **EXISTING US CORE REQUIREMENT** flag. While US Quality Core may restate US Core requirements to highlight searches directly relevant to USCDI+ Quality data access, US Core requirements not restated here remain applicable.

{% endif %}

See the [US Quality Core Server CapabilityStatement](CapabilityStatement-us-quality-core-server.html#{{ search.capabilityStatementAnchor }}) for complete requirements for the underlying `{{ search.resource }}` resource and [Search Requirement Selection](us-quality-core-general-requirements.html#search-requirement-selection) for how this focused set was selected.

{% if required_searches.size > 0 %}
Servers supporting this profile **SHALL** support the following search parameters and search parameter combinations:

{% for requirement in required_searches %}
1. **SHALL** support {{ requirement.statement }}.{% if requirement.usCoreExpectation == "SHALL" %} **EXISTING US CORE REQUIREMENT**{% endif %}

{% for additional_requirement in requirement.additionalRequirements %}
    - {{ additional_requirement.text }}.
{% endfor %}

    `{{ requirement.request }}`

    **Example:**

    > `{{ requirement.example }}`

    **Implementation Notes:** Fetches a bundle of {{ profile_notes.title }} resources matching the specified search criteria. {{ requirement.searchGuidance }}

    **Rationale for inclusion:** {{ requirement.rationale }}

{% endfor %}
{% else %}
US Quality Core does not identify searches of specific interest for the underlying `{{ search.resource }}` resource.
{% endif %}

{% endif %}
{% endif %}
