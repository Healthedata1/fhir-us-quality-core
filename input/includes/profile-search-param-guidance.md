{% assign profile_notes = site.data.generated.profile_notes[include.profile] %}
{% assign search = profile_notes.search %}
{% assign search_params = search.searchParams %}
{% assign search_combinations = search.searchCombinations %}
{% assign required_searches = search.requiredSearches %}

{% if search and search.hasSearchParameters %}
### Search Parameter Expectations

The following search parameters are defined for the underlying `{{ search.resource }}` resource in the [US Quality Core Server CapabilityStatement](CapabilityStatement-us-quality-core-server.html).

{% if search_params.size > 0 %}
**Individual Search Parameters**

{: .table-bordered .usqc-generated-table .usqc-search-param-table}
| Name | Expectation |
|---|---|
{% for search_param in search_params -%}
| `{{ search_param.name }}` | {{ search_param.expectation | replace: "SHALL", "Required" | replace: "SHOULD", "Recommended" | replace: "MAY", "Optional" }} |
{% endfor %}
{% endif %}

{% if search_combinations.size > 0 %}
**Search Parameter Combinations**

{: .table-bordered .usqc-generated-table .usqc-search-param-table}
| Name | Expectation |
|---|---|
{% for combination in search_combinations -%}
| `{{ combination.name }}` | {{ combination.expectation | replace: "SHALL", "Required" | replace: "SHOULD", "Recommended" | replace: "MAY", "Optional" }} |
{% endfor %}
{% endif %}

{% if required_searches.size > 0 %}
**Required Search Rationale**

These required searches apply to the underlying `{{ search.resource }}` resource and therefore to every US Quality Core profile based on that resource.

{: .table-bordered .usqc-generated-table .usqc-search-rationale-table}
| Required search | US Core alignment | Rationale |
|---|---|---|
{% for requirement in required_searches -%}
{%- assign alignment = requirement.usCoreAlignment | replace: "|", "&#124;" -%}
{%- assign rationale = requirement.rationale | replace: "|", "&#124;" -%}
| {{ requirement.label }} | {{ alignment }} | {{ rationale }} |
{% endfor %}
{% endif %}
{% endif %}
