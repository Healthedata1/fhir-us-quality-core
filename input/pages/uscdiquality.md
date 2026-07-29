{:toc}

{: .note-to-balloters}
> Implementor feedback is requested on the proposed USCDI+ Quality mappings to US Quality Core and US Core profiles below. Specific feedback on the following elements are requested:  
> - **Diagnostic Imaging: Diagnostic Imaging Reference:** We are seeking feedback on the level of detail ncessary for quality reporting. This element is currently mapped to the `DiagnosticReport` profile. Additional considered mappings to `DocumentReference.content.attachment.url` or `ImagingStudy.endpoint` were considered to semantically align with the USCDI+ Quality data element definition by identifying the location of the referenced document content, but feedback through the US Quality Core IG will help determine if these additional mappings should be added.
> - **Encounter Information: Diagnosis Rank:** In QI-Core, information about principal diagnosis is represented using the `Claim` profile. In US Quality Core v1.0.0-ballot, support for the `Claim` profile is not required for conformance. We encourage the quality community to provide additional input on information needed to support quality measurement use cases for this USCDI+ Quality data element.
> - **Encounter Information: Present on Admission:** In QI-Core, information about present on admission is represented using the `Claim` profile. In US Quality Core v1.0.0-ballot, support for the `Claim` profile is not required for conformance. We have reintroduced the Present on Admission extension for `Encounter.diagnosis` in this US Quality Core v1.0.0-ballot and it is (USCDI+ Quality) tagged.
> - **Goals and Preferences: Patient Goals and SDOH Goals:** We are seeking feedback on the use of additional Goal elements (e.g., `Goal.target`) as it relates to this USCDI+ Quality data element and quality measure use cases.
> - **Orders: Nutrition Order:** We are seeking feedback on whether US Quality Core should include mappings for Nutrition Order beyond `NutritionOrder.oralDiet` to also include `NutritionOrder.enteralFormula` and `NutritionOrder.supplement`. These elements align with the broader Nutrition Order definition which includes enteral feedings and nutritional supplements; however, their implementation support and need in quality reporting requires additional feedback.
> - **Procedures: Procedures:** In QI-Core, information about principal procedure is represented using the `Claim` profile. In US Quality Core v1.0.0-ballot, support for the `Claim` profile is not required for conformance. Implementers may determine the appropriate implementation approach to support this USCDI+ Quality data element. We encourage the quality community to provide additional input on information needed to support quality measurement use cases for this USCDI+ Quality data element.

### Background

**USCDI+ Quality** is part of the [USCDI+ initiative](https://www.healthit.gov/topic/interoperability/uscdi-plus). The USCDI+ initiative supports the identification and establishment of domain- or program-specific data element lists that operate as extensions to the existing USCDI data element list.
 
USCDI+ Quality is intended to improve healthcare interoperability across quality programs by establishing a consistent baseline of harmonized data elements for a wide range of quality measurement and reporting use cases. The USCDI+ Quality data element list serves as a baseline dataset to support digital quality measurement and reporting across the healthcare ecosystem.

USCDI+ Quality includes [two data element lists](https://uscdiplus.healthit.gov/uscdiplus?id=uscdi_record&table=x_g_sshh_uscdi_domain&sys_id=7ddf78228745b95098e5edb90cbb3525&view=sp).
 
1. **USCDI+ Quality**:
   USCDI+ Quality prioritizes data elements for implementation that align with USCDI, are represented in relevant implementation guidance, or directly support electronic clinical quality measures. For more information and highlights on USCDI+ Quality, see [ONC's release bulletin](https://uscdiplus.healthit.gov/uscdiplus/en/uscdi-quality-public-feedback-requested-on-draft-v2-data-element-list-by?id=kb_article&table=kb_knowledge&sys_id=edc23ac193a58310c9f1f54958373cf3&view=sp).
 
2. **Quality Overarching**:
   Like USCDI, the USCDI+ Quality framework includes data classes and elements that are not yet part of USCDI+ Quality but are under consideration for future inclusion. The Quality Overarching data element list tracks all quality-relevant data elements identified across selected programs and captures a wider range of data elements identified through community input that may be included in a future version of USCDI+ Quality.
 
   Content in the Quality Overarching data element list that is not represented in USCDI+ Quality is outside the scope of this guide. Implementers and partners are encouraged to review these emerging data elements and provide feedback through the [USCDI+ platform](https://uscdiplus.healthit.gov/uscdiplus) to help shape the development of future USCDI+ Quality versions.



### USCDI+ Quality and US Quality Core

**USCDI+ Quality** defines high-level data requirements, and the **US Quality Core Implementation Guide** provides detailed FHIR-based profiles to meet those requirements. This guidance is necessary to achieve interoperability and consistency in quality-related healthcare data exchange in the United States, given the flexibility of the FHIR standard in representing this data.

The US Quality Core Implementation Guide defines profiles and specific requirements for USCDI+ Quality. It also defines specific expectations through [CapabilityStatements](capability-statements.html) for accessing the data over a standard FHIR RESTful API.
In the cases where US Core meets the requirements for implementing a USCDI+ Quality data element in FHIR, US Quality Core references the relevant profile in US Core.


US Quality Core is updated with each version of USCDI+ Quality, while also
maintaining alignment to US Core.  The following table shows the
corresponding US Quality Core and US Core versions for each USCDI+ Quality
version:

{: .table-bordered}
| USCDI+ Quality Version | US Quality Core Version | US Core Version |
|---|---|---|
| V2 | 1.0.0-ballot | 9.0.0 |
| V1 | 0.5.0 (published via the FHIR Foundation)| 6.1.0 |

Note that:

- USCDI+ Quality data class and element names may differ from the US Quality Core profile and element names.
- Not every USCDI+ Quality data class and element maps to a single US Quality Core profile.

A downloadable CSV version of the USCDI+ Quality data element mappings is available here: [USCDI+ Quality Data Element Mappings](generated/uscdi-quality-data-elements.csv).

{% include uscdi-quality-data-elements.md %}
