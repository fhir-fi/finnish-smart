Profile: FiSmartServerProfile
Parent: CapabilityStatement
Id: fi-smart-server-profile
Title: "Finnish SMART Server Capability Statement Profile"
Description: "This CapabilityStatement profile describes the basic rules for a server actor providing SMART App Launch in Finland."
* implementationGuide = "http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch"
* rest.mode = #server
* format ^slicing.discriminator.type = #value
* format ^slicing.discriminator.path = #$this
* format ^slicing.rules = #open
* format ^slicing.description = "Slice by value of format."
  * ^definition = "Support for JSON is required, support for XML is recommended."
  * ^short = "JSON is mandatory"
* format contains json 1..*
* format[json].value = #json
