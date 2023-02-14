Instance: apottiekosysteemi-capabilitystatement
InstanceOf: FiSmartServer
Title: "Apotti CapabilityStatement"
Description: "An example CapabilityStatement captured from Apotti Ekosysteemi"
Usage: #example
* status = #active
* experimental = true
* date = "2023-01-17T10:35:03Z"
* copyright = "Copyright Epic 1979-2022"
* kind = #instance
* software.name = "Epic"
* software.version = "toukokuu 2022"
* software.releaseDate = "2022-09-12"
* fhirVersion = #3.0.1
// * acceptUnknown = "no"
* format[0] = #xml
* format[+] = #json
* rest.mode = #server
* rest.security.extension.extension[0].valueUri = "https://gw.apottiekosysteemi.fi/Interconnect-FHIR-EKO01/oauth2/authorize"
* rest.security.extension.extension[=].url = "authorize"
* rest.security.extension.extension[+].valueUri = "https://gw.apottiekosysteemi.fi/Interconnect-FHIR-EKO01/oauth2/token"
* rest.security.extension.extension[=].url = "token"
* rest.security.extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.cors = true
* rest.security.service[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/restful-security-service"
* rest.security.service[=].coding[=].code = #OAuth
* rest.security.service[=].coding[=].display = "OAuth"
* rest.security.service[=].text = "OAuth"
* rest.security.service[+].coding[0].system = "http://terminology.hl7.org/CodeSystem/restful-security-service"
* rest.security.service[=].coding[=].code = #SMART-on-FHIR
* rest.security.service[=].coding[=].display = "SMART-on-FHIR"
* rest.security.service[=].text = "SMART-on-FHIR"
* rest.security.service[+].coding[0].system = "http://terminology.hl7.org/CodeSystem/restful-security-service"
* rest.security.service[=].coding[=].code = #Basic
* rest.security.service[=].coding[=].display = "Basic"
* rest.security.service[=].text = "Basic"
* rest.resource[0].type = #AllergyIntolerance
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for AllergyIntolerance resources for a specified patient ID."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Appointment
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Refine a search for Appointment resources by date. By default, all Appointments are returned."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Appointment resources by identifier."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Appointment resources for a specified patient ID."
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Appointment resources by status. By default, all Appointments are returned."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Binary
* rest.resource[=].interaction.code = #read
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #Condition
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Condition resources by category. By default, the search returns problem list Condition resources."
* rest.resource[=].searchParam[+].name = "clinical-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Condition resources by clinicalStatus. By default, the search returns active Condition resources. Only clinical statuses of resolved and active are supported."
* rest.resource[=].searchParam[+].name = "encounter"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Condition resources for specific encounters. If not provided, only problem list Condition results are returned."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Condition resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Condition resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Consent
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Consent resources by category."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Consent resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Consent resources by status."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Consent resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Coverage
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "beneficiary"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Coverage resource for a specific patient ID. You can use \"patient\" or \"beneficiary\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Coverage resource for a specific patient ID. You can use \"patient\" or \"beneficiary\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Device
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "device-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A string that will match the Device.udi.name field. Not case sensitive."
* rest.resource[=].searchParam[+].name = "manufacturer"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Manufacturer of the device."
* rest.resource[=].searchParam[+].name = "model"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Model number of the device."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The patient in whom this device is implanted. This is a required parameter."
* rest.resource[=].searchParam[+].name = "udi-carrier"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The UDI barcode string - matches static UDI."
* rest.resource[=].searchParam[+].name = "udi-di"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The UDI device identifier (DI)."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #DeviceRequest
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for a DeviceRequest resource for a specified patient ID."
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for a DeviceRequest based on a device request status"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #DeviceUseStatement
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for DeviceUseStatement resources for a specified patient ID."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for DiagnosticReport resources by category."
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for DiagnosticReport resources by code."
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Refine a search for DiagnosticReport resources by specifying a date or date range that a DiagnosticReport was resulted or recorded. Enter dates in ISO format (YYYY[-MM[-DD[THH:MM[:SS][TZ]]]]). Local server time is assumed if time zone information is not included. Not supported by Care Plan Goal."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for DiagnosticReport resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for DiagnosticReport resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #DocumentReference
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "author"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Further refine a search for a given set of DocumentReferences on a patient by specifying a Practitioner ID that corresponds to the author of the document. Not supported for ccda-document or clinical-note search."
* rest.resource[=].searchParam[+].name = "class"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for DocumentReference resources by category. Only \"clinical-note\", \"ccda-document\", \"correspondence\", and \"imaging-result\" are supported."
* rest.resource[=].searchParam[+].name = "created"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Further refine a search for a given set of DocumentReferences on a patient by specifying a date or date range in ISO format (YYYY[-MM[-DD]]) that corresponds to the document creation time. Not supported for correspondence or imaging-result search."
* rest.resource[=].searchParam[+].name = "docstatus"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Further refine a search for a given set of DocumentReferences on a patient by specifying a docStatus. By default, all docStatuses are returned. Not supported for ccda-document, correspondence, or imaging-result search."
* rest.resource[=].searchParam[+].name = "encounter"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for DocumentReference resources for a specified encounter ID. Not supported for ccda-document, correspondence, or imaging-result search."
* rest.resource[=].searchParam[+].name = "indexed"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Further refine a search for a given set of DocumentReferences on a patient by specifying a date or date range in ISO format (YYYY[-MM[-DD]]) that corresponds to the document indexed time. Not supported for ccda-document or clinical-note search."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for DocumentReference resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "period"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Further refine a search for a given set of DocumentReferences on a patient by specifying a date or date range in ISO format (YYYY[-MM[-DD]]) that corresponds to the time of the service that is being documented."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for DocumentReference resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Further refine a search for a given set of DocumentReferences on a patient by specifying a LOINC code or internal category ID to return only documents of that type. Not supported for ccda-document search."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Encounter
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "class"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Encounter resources by class. By default, all classes are returned."
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Refine a search for Encounter resources by date. By default, all Encounters are returned. Enter dates in ISO format (YYYY[-MM[-DD[THH:MM[:SS][TZ]]]]]). Local server time is assumed if time zone information is not included."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for Encounter resources by encounter identifier in the format <code system>|<code>"
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Encounter resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for difference references."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Encounter resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for difference references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Endpoint
* rest.resource[=].interaction.code = #read
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #Flag
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Flag resources by category."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Flag resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Flag resources by status."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Flag resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Goal
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refines a search by Goal Category. This parameter is ignored if searching via _ID."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources for a specific patient ID. You can use \"patient\" or \"subject\" equivalently but they can't be used at the same time for different references. This parameter is ignored if searching via _ID."
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refines a search based on Goal Status. This parameter is ignored if searching via _ID. This parameter is only supported by patient goals."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources for a specific patient ID. You can use \"patient\" or \"subject\" equivalently but they can't be used at the same time for different references. This parameter is ignored if searching via _ID."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Immunization
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Vaccine administration date. Enter dates in ISO format (YYYY[-MM[-DD[THH:MM[:SS][TZ]]]]). Local server time is assumed if time zone information is not included. This parameter is ignored if searching via ids."
* rest.resource[=].searchParam[+].name = "notgiven"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A boolean that indicates whether or not an immunization has been administered. This parameter is ignored if searching via ids."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Immunization resources for a specified patient ID. This parameter is ignored if searching via ids."
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Immunization by status. Completed is the only supported status."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #ImmunizationRecommendation
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The FHIR id of a patient whose immunization recommendations you'd like to obtain. Only one of either patient or subject needs to be specified."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #List
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The kind of list to search for (e.g. PatientList)"
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Used to return patients that have questionnaires due by a certain date."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "An internal id and system allowing access to a list without knowing its FHIR ID (currently supports Patient Lists)."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Location
* rest.resource[=].interaction.code = #read
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #Medication
* rest.resource[=].interaction.code = #read
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for MedicationDispense resources for a specified patient ID."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for MedicationDispense resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for difference references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "authoredon"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Further refine a search for MedicationRequest resources for a given patient by specifying a date or a range of dates for when the medication was ordered. Note: all medications will be returned regardless of date range provided on the search."
* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for MedicationRequest resources by category. By default, the search returns all categories. Categories of inpatient, outpatient, and community are supported."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for MedicationRequest resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for difference references."
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for MedicationRequest resources by one or more statuses. By default, only medications with active statuses are returned. MedicationRequest searches support active, on-hold, completed and stopped. If searching by status, active must be included."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for MedicationRequest resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #MedicationStatement
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for MedicationStatement resources by category. By default, the search returns all categories. Categories of inpatient, outpatient, community, and patientspecified are supported."
* rest.resource[=].searchParam[+].name = "effective"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Further refine a search for MedicationStatement resources for a given patient by specifying a date or a range of dates for when the medication was ordered. Note: all medications will be returned regardless of date range provided on the search."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for MedicationStatement resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for difference references."
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for MedicationStatement resources by one or more statuses. By default, only medications with active statuses are returned. MedicationStatement searches support active, on-hold, completed, and stopped. If searching by status, active must be included."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for MedicationStatement resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #NutritionOrder
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for NutritionOrder resources for a specified patient ID."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Observation
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Observation resources by category. Only laboratory, vital-signs, social-history, core-characteristics, functional-mental-status, LDA, and SNOMED codes 384821006 and 118228005 are supported."
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Observation resources by LOINC code, SNOMED code, or flowsheet row IDs."
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Refine a search for Observation resources by specifying a date or date range that a result- or vital sign-based Observation was resulted or recorded. Enter dates in ISO format (YYYY[-MM[-DD[THH:MM[:SS][TZ]]]]). Local server time is assumed if time zone information is not included."
* rest.resource[=].searchParam[+].name = "issued"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Refine a search for Observation resources by specifying a date or date range that a social-history-based Observation was made available. Enter dates in ISO format (YYYY[-MM[-DD[THH:MM[:SS][TZ]]]]). Local server time is assumed if time zone information is not included."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Observation resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Observation resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Organization
* rest.resource[=].interaction.code = #read
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #Patient
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources using an address string."
* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources using the city for a patient's home address. You can use this parameter along with other address parameters."
* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources using the postal code for a patient's home address. You can use this parameter along with other address parameters."
* rest.resource[=].searchParam[+].name = "address-state"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources using the state for a patient's home address. You can use this parameter along with other address parameters."
* rest.resource[=].searchParam[+].name = "birthdate"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources using a date of birth in ISO format (YYYY-MM-DD)."
* rest.resource[=].searchParam[+].name = "family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources by family (last) name. You can use the family parameter along with other name parameters to search by a patient's name. Family name searching supports exact matching, \"sounds like\" matching, and patient aliases."
* rest.resource[=].searchParam[+].name = "gender"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources using the following gender codes: female, male, other, or unknown."
* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources by given (first) name. You can use the given parameter along with other name parameters to search by a patient's name. Given name searching supports both exact and \"sounds like\" matches. Patient aliases and dominant name aliases (ex. Bob for Robert) are also supported."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources by a patient's identifier. You can use the identifier parameter as the only parameter in a search or in conjunction with other parameters. A patient's identifier must be in the format {<code system>|}<code> or {<ID Type>|}<ID>."
* rest.resource[=].searchParam[+].name = "legal-sex"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources using the following gender codes: female, male, nonbinary, x, other, or unknown."
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources by a patient's name. To search on specific name parts use the name part parameters, such as family or given. This parameter is ignored if any name part parameters are used."
* rest.resource[=].searchParam[+].name = "own-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources by patient's own last name, usually used in non-US names. You can use the own-name parameter along with other name parameters to search by a patient's name."
* rest.resource[=].searchParam[+].name = "own-prefix"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources by patient's own last name prefix, usually used in non-US names. You can use the own-prefix parameter along with other name parameters to search by a patient's name, but own-name must also be included."
* rest.resource[=].searchParam[+].name = "partner-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources by patient's spouse's last name, usually used in non-US names. You can use the partner-name parameter along with other name parameters to search by a patient's name, but own-name must also be included."
* rest.resource[=].searchParam[+].name = "partner-prefix"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources by patient's spouse's last name prefix, usually used in non-US names. You can use the partner-prefix parameter along with other name parameters to search by a patient's name, but own-name must also be included."
* rest.resource[=].searchParam[+].name = "telecom"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for Patient resources using a patient's home phone number, cell phone number, or email address."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Practitioner
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Any part of an address (street, city, etc.) where a practitioner can be visited. When used, family is also required. Only respected if no other address parameters are populated. Only the first instance of this parameter is respected."
* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The city where a practitioner can be visited. When used, address-state is also required. Only the first instance of this parameter is respected."
* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The zip code where a practitioner can be found. When used, family is also required."
* rest.resource[=].searchParam[+].name = "address-state"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The state where a practitioner can be found. When used, family is also required. Only the first instance of this parameter is respected."
* rest.resource[=].searchParam[+].name = "family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A practitioner's family (last) name. Only the first instance of this parameter is respected."
* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A practitioner's given (first) name. When used, family is also required. Only the first instance of this parameter is respected."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A practitioner's identifier in the format <code system>|<code>. Code system must be a URN. When this parameter is provided, all others (except _id) are ignored."
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Any part of a practitioner's name. For full names, format should be first last. When specified, family and given are ignored. Only the first instance of this parameter is respected."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "email"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for a PractitionerRole by entering a valid email address. Code system is ignored."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for PractitionerRoles using identifiers. A code system is required. The code must be prepended with URN:OID. Some codes may need to be URL encoded prior to query."
* rest.resource[=].searchParam[+].name = "location"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for PractitionerRoles using a Location ID. Only the first instance of this parameter is respected."
* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for PractitionerRoles using an Organization ID. Only the first instance of this parameter is respected."
* rest.resource[=].searchParam[+].name = "phone"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for a PractitionerRole by entering a valid phone number. Code system is ignored."
* rest.resource[=].searchParam[+].name = "practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for PractitionerRoles for a specified Practitioner ID. Only the first instance of this parameter is respected."
* rest.resource[=].searchParam[+].name = "role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for a PractitionerRole by entering a valid role. System must be included."
* rest.resource[=].searchParam[+].name = "specialty"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for PractitionerRoles for a given specialty. A code system is required. Depending on the organization, NUCC may be supported."
* rest.resource[=].searchParam[+].name = "telecom"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for a PractitionerRole for a specific telecom. System must be specified as either 'phone' or 'email'"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Procedure
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for Procedure resources by category. Only the following values are supported: 103693007 (diagnostic procedures), 387713003 (surgical procedures), 9632001 (nursing procedures, Netherlands only), and 225317005 or freedom-restricting-intervention (restricting intervention, Netherlands only) are supported."
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Refine a search for Procedure resources by specifying a date or date range that a Procedure was resulted. Enter dates in ISO format (YYYY[-MM[-DD]]). Not supported by nursing procedures or restricting interventions."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Procedure resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Procedure resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #ProcedureRequest
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "encounter"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for ProcedureRequest resources for specific encounters. If not provided, all ProcedureRequest results are returned."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for ProcedureRequest resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "requester"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Refine a search for ProcedureRequest resources by individual making the request. By defualt, all ProcedureRequests are returned."
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Refine a search for ProcedureRequest resources by status. By default, only active ProcedureRequests are returned. Statuses of draft, active, completed, cancelled, and unknown are supported."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for ProcedureRequest resources for a specified patient ID. You can use \"patient\" or \"subject\" equivalently, but they cannot be used at the same time for different references."
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."
* rest.resource[+].type = #Schedule
* rest.resource[=].interaction.code = #read
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #Slot
* rest.resource[=].interaction.code = #read
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #Specimen
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "FHIR resource IDs for the desired resources. If _id is used in a search, all other parameters will be ignored."
* rest.resource[=].searchParam[+].name = "_count"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Number of results per page."