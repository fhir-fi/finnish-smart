Instance: fi-smart-server
InstanceOf: CapabilityStatement
Title: "Finnish SMART Server Capability Statement"
Usage: #definition
* status = #active
* date = "2023-02-03"
* description = "This CapabilityStatement describes the basic rules for a server actor providing SMART App Launch in Finland."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHALL
* format[+] = #xml
* format[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHOULD
* patchFormat = #application/json-patch+json
* patchFormat.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* patchFormat.extension.valueCode = #SHOULD
* implementationGuide[0] = "http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch"
* implementationGuide[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHALL
* implementationGuide[+] = "http://hl7.org/fhir/uv/ipa/ImplementationGuide/hl7.fhir.uv.ipa"
* implementationGuide[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHOULD
* rest.mode = #server
* rest.documentation = "The server **SHALL**:\n1. Implement the RESTful behavior according to the FHIR specification.\n1. Support JSON source formats for all interactions.\n1. Declare a CapabilityStatement identifying the list of profiles, operations, and search parameters supported.\n\nThe server **SHOULD**:\n1. Support XML source formats for all interactions.\n1. Implement the International Patient Access (IPA) specification."
* rest.security.description = "This implementation guide relies heavily on the widely adopted SMART App Launch mechanism. This implementation guide does not define any new security mechanisms. 1. Please familiarize yourself with the securty concepts infroduced in the SMART App Launch specification, and the underlying OpenID Connect and OAuth2 specifications the SMART App Launch specification build on.\n1. See the Best Practices outlined in the SMART App Launch specification.\n1. See the [General Security Considerations](security.html) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an HTTP `401 Unauthorized`, `403 Forbidden`, or `404 Not Found` response code."
