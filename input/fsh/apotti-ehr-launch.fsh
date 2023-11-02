Instance: ApottiEHRLaunch
InstanceOf: AuditEvent
Title: "Apotti EHR Launch by a Practitioner"
Description: "A data flow example of a SMART App Launch from Apotti Ekosysteemi, performed by a practitioner."
Usage: #example
* id = "apotti-ehr-launch-by-practitioner"
* type
  * system = "http://dicom.nema.org/resources/ontology/DCM"
  * code = #110114
  * display = "User Authentication"
* subtype
  * system = "http://dicom.nema.org/resources/ontology/DCM"
  * code = #110120
  * display = "Application Start"
* action = #E
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
    * system = "http://terminology.hl7.org/CodeSystem/security-source-type"
    * code = #3
    * display = "Web Server"
