### CapabilityStatement

* [Apotti CapabilityStatement](CapabilityStatement-apotti-eko01.html), an
  example capability statement captured from Apotti's ecosystem environment.

### Launch Sequence

* [Apotti EHR Launch by a Practitioner](AuditEvent-apotti-ehr-launch-by-practitioner.html), an
  example data flow when an app is launched from an EHR system. Note that the AuditEvent resource
  instance has minimal content. Most of the content of the example is in the human readable
  introductory part of the example page.

<p class="dragon"><strong>Please do not implement the SMART App Launch mechanism based on
  examples!</strong> Examples in this implementation guide are meant to offer additional clarity on
  how the SMART App Launch mechanism works in certain circumstances. However, to appreciate all the
  details of the security mechanisms involved, all implementers of the SMART App Launch mechanism
  really need to study and understand the main <a
  href="http://hl7.org/fhir/smart-app-launch/">SMART App Launch specification</a>, and the
  underlying <a href="https://oauth.net/2/">OAuth2</a> and <a
  href="https://openid.net/connect/">OpenID Connect</a> specifications. Do give information
  security the attention it deserves!
</p>
