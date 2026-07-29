{% assign profile_notes = site.data.generated.profile_notes[include.profile] %}
{% assign conformance_indicators = profile_notes.conformanceIndicators %}

{% if conformance_indicators and conformance_indicators.elements.size > 0 %}
#### Element Conformance Indicators by Profile Layer

Badges identify the profile layer where each conformance indicator is first introduced. Indicators introduced in an earlier layer remain applicable in later derived profiles.

<div class="usqc-conformance-indicator-table-scroll" role="region" aria-label="Element conformance indicators by profile layer" tabindex="0">
  <table class="table table-bordered usqc-generated-table usqc-profile-conformance-indicators">
    <caption class="assistive-text">Element conformance indicators organized by the profile layer where they are first introduced</caption>
    <thead>
      <tr>
        <th scope="col">Profile element</th>
        <th scope="col">FHIR</th>
        {% if profile_notes.usCore %}
        <th scope="col">US Core</th>
        {% endif %}
        <th scope="col">US Quality Core</th>
      </tr>
    </thead>
    <tbody>
      {% for element in conformance_indicators.elements %}
      {% assign fhir_layer = element.fhir %}
      {% assign us_core_layer = element.usCore %}
      {% assign us_quality_core_layer = element.usQualityCore %}
      <tr>
        <th scope="row"><code class="language-plaintext highlighter-rouge">{{ element.path | escape }}</code></th>
        <td>
          {% if fhir_layer.mandatory %}<span class="label">Mandatory</span>{% endif %}
          {% if fhir_layer.mustSupport %}<span class="label">Must Support</span>{% endif %}
          {% if fhir_layer.uscdi %}<span class="label">Additional USCDI</span>{% endif %}
          {% if fhir_layer.uscdiQuality %}<span class="label">USCDI+ Quality</span>{% endif %}
        </td>
        {% if profile_notes.usCore %}
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

> **Cardinality note:** “Mandatory” means the element has a minimum cardinality greater than zero. For nested elements, the cardinality indicator applies when the containing element is present.
{% endif %}
