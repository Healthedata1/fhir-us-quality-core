{:toc}

### US Core and QI-Core

US Quality Core implements [USCDI+
Quality](https://uscdiplus.healthit.gov/uscdiplus) requirements in FHIR.
Content in US Quality Core is derived from
[QI-Core](https://hl7.org/fhir/us/qicore/) and align to [US
Core](https://hl7.org/fhir/us/core/). The following table shows the relationship
between USCDI+ Quality and US Quality Core versions, as well as the
corresponding US Core and QI-Core versions:

{: .table-bordered}
| USCDI+ Quality Version | US Quality Core IG Version | US Core Version | QI-Core Version |
|---|---|---|---|
| V2 | 1.0.0-ballot | 9.0.0 | 8.0.0-ballot |
| V1 | 0.5.0 (published via FHIR foundation)| 6.1.0 | 6.0.0 |

The profiles defined in US Quality Core are derived from US Core profiles
whenever possible. As a result, conforming to US Core automatically satisfies a
significant subset of the conformance requirements of US Quality Core. US
Quality Core conformance involves supporting certain additional data elements
not required by US Core, because they are needed for quality measurement and reporting.

Because US Quality Core profiles derive from US Core profiles where possible,
wherever US Core defines a binding, the US Quality Core profiles inherit that
binding. US Quality Core may specify additional constraints, such as requiring a
binding that is only preferred in the US Core base profile, but in general, the
US Quality Core profiles use the same bindings as US Core.

### Search Expectations and US Core
{: #search-expectations-and-us-core}

The US Quality Core CapabilityStatements identify the RESTful API capabilities
specifically needed for [USCDI+ Quality
data](uscdiquality.html). They do not
repeat every US Core search expectation. For the search selection approach and
conformance details, see [API
Requirements](us-quality-core-general-requirements.html#api-requirements).
