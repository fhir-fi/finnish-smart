Instance: apotti-ehr-launch-by-practitioner
InstanceOf: AuditEvent
Title: "Apotti EHR Launch by a Practitioner"
Description: "An data flow example of a SMART App Launch from Apotti Ekosysteemi, performed by a practitioner."
Usage: #example
* type.system = "http://hl7.org/fhir/ValueSet/audit-event-type"
* type.code = #110114
* type.display = "User Authentication"
* recorded = "2023-01-24T12:20:18.000+02:00"
* agent[0].who
  * type = "Organization"
  * display = "Apotti Ekosysteemi" 
* agent[=].requestor = true
* agent[+].who 
  * type = "Organization"
  * display = "Sensotrend Oy"
* agent[=].requestor = false
* source
  * observer
    * type = "Organization"
    * display = "Sensotrend Oy"
  * type
    * system = "http://hl7.org/fhir/ValueSet/audit-source-type"
    * code = #3
    * display = "Web Server"
