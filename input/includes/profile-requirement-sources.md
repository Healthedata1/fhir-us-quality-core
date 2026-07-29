{% assign profile_notes = site.data.generated.profile_notes[include.profile] %}
{% assign requirement_sources = profile_notes.requirementSources %}

{% if requirement_sources and requirement_sources.elements.size > 0 %}
### Element Requirements by Profile Layer

Badges identify the profile layer where each requirement first applies. Requirements introduced in an earlier layer remain in effect in later derived profiles.

<div class="usqc-requirement-table-scroll" role="region" aria-label="Element requirements by profile layer" tabindex="0">
  <table class="table table-bordered usqc-generated-table usqc-profile-requirement-sources">
    <caption class="assistive-text">Element requirements organized by the profile layer where they first apply</caption>
    <thead>
      <tr>
        <th scope="col">Profile element</th>
        <th scope="col">FHIR</th>
        {% if requirement_sources.hasUsCoreLineage %}
        <th scope="col">US Core</th>
        {% endif %}
        <th scope="col">US Quality Core</th>
      </tr>
    </thead>
    <tbody>
      {% for element in requirement_sources.elements %}
      {% assign fhir_layer = element.fhir %}
      {% assign us_core_layer = element.usCore %}
      {% assign us_quality_core_layer = element.usQualityCore %}
      <tr>
        <th scope="row"><code>{{ element.path | escape }}</code></th>
        <td>
          {% if fhir_layer.mandatory %}<span class="label">Mandatory</span>{% endif %}
          {% if fhir_layer.mustSupport %}<span class="label">Must Support</span>{% endif %}
          {% if fhir_layer.uscdi %}<span class="label">Additional USCDI</span>{% endif %}
          {% if fhir_layer.uscdiQuality %}<span class="label">USCDI+ Quality</span>{% endif %}
        </td>
        {% if requirement_sources.hasUsCoreLineage %}
        <td>
          {% if us_core_layer.mandatory %}<span class="label">Mandatory</span>{% endif %}
          {% if us_core_layer.mustSupport %}<span class="label">Must Support</span>{% endif %}
          {% if us_core_layer.uscdi %}<span class="label">Additional USCDI</span>{% endif %}
          {% if us_core_layer.uscdiQuality %}<span class="label">USCDI+ Quality</span>{% endif %}
        </td>
        {% endif %}
        <td>
          {% if us_quality_core_layer.mandatory %}<span class="label">Mandatory</span>{% endif %}
          {% if us_quality_core_layer.mustSupport %}<span class="label">Must Support</span>{% endif %}
          {% if us_quality_core_layer.uscdi %}<span class="label">Additional USCDI</span>{% endif %}
          {% if us_quality_core_layer.uscdiQuality %}<span class="label">USCDI+ Quality</span>{% endif %}
        </td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

> **Cardinality note:** “Mandatory” means the element has a minimum cardinality greater than zero. For nested elements, the requirement applies when the containing element is present.
{% endif %}
