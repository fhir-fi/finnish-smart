An example in *Apotti Ekosysteemi*, launching the development version of the Sensotrend app
(client).

### Prerequisites

Sensotrend's app has been set up in the [Epic on FHIR](https://fhir.epic.com/) portal and the
Client ID has been downloaded to Apotti, and a launch button has been configured in Apotti. 

### App Launch

When a practitioner clicks the **Sensotrend** button on the EHR, the EHR generates a launch request
to the client:
```
GET https://dev.sensotrend.fi/api/smart/launch?iss=https%3A%2F%2Fgw.apottiekosysteemi.fi%2FInterconnect-FHIR-EKO01%2Fapi%2FFHIR%2FSTU3&launch=o7mz2mMwXCgpyJ6ygi6NY7dRMI4c4ucIWlD_1o-j1mNJAAV_ESS_wSXxUtpGk2qmro4jk5c1zL744IuNZs_EZC4XRPns6LESRo_3RocY0KoJv9u8MngnWmJUSv3g7PM5 
```

The client app can use the `iss` parameter to decide whether to process the request at all. In this
case we want to continue.

### Server Metadata

In order to learn more about the system that is launching the app, the client app fetches the
server metadata (based on the `iss` parameter and the `.well-known` location):

```
GET https://gw.apottiekosysteemi.fi/Interconnect-FHIR-EKO01/api/FHIR/STU3/.well-known/smart-configuration
```

The response is:
```
{
  "authorization_endpoint": "https:\/\/gw.apottiekosysteemi.fi\/Interconnect-FHIR-EKO01\/oauth2\/authorize",
  "token_endpoint": "https:\/\/gw.apottiekosysteemi.fi\/Interconnect-FHIR-EKO01\/oauth2\/token",
  "token_endpoint_auth_methods_supported": ["client_secret_post", "client_secret_basic", "private_key_jwt"],
  "scopes_supported": ["epic.scanning.dmsusername", "fhirUser", "launch", "openid", "profile"],
  "response_types_supported": ["code"],
  "capabilities": [
    "launch-ehr",
    "launch-standalone",
    "client-public",
    "client-confidential-symmetric",
    "context-banner",
    "context-style",
    "context-ehr-patient",
    "context-ehr-encounter",
    "context-standalone-patient",
    "permission-offline",
    "permission-patient",
    "permission-user",
    "sso-openid-connect"
  ]
}
```

The client app can cache this information and use a conditional request on subsequent launches to
verify whether the information is still up to date (using the information present in the HTTP
header of the above response).

### Authorization Redirect

The client then redirects the launch request to the authorization endpoint. The request includes
the `scope`, the `redirect_url`, and the `client_id` known to the client app. The request could
also include the client secret, in case of a confidential app. Importantly, the client app sets a
one time `state` parameter through which it can identify the redirect back from the auth server.

```
GET https://gw.apottiekosysteemi.fi/Interconnect-FHIR-EKO01/oauth2/authorize?aud=https%3A%2F%2Fgw.apottiekosysteemi.fi%2FInterconnect-FHIR-EKO01%2Fapi%2FFHIR%2FSTU3&scope=launch+openid+fhirUser+patient%2FObservation.read+patient%2FOrganization.read+patient%2FPatient.read+user%2FPractitioner.read+user%2FPractitionerRole.read+launch+launch%2Fencounter+launch%2Fpatient&response_type=code&launch=o7mz2mMwXCgpyJ6ygi6NY7dRMI4c4ucIWlD_1o-j1mNJAAV_ESS_wSXxUtpGk2qmro4jk5c1zL744IuNZs_EZC4XRPns6LESRo_3RocY0KoJv9u8MngnWmJUSv3g7PM5&state=2c45ddb7-c830-4ef4-8922-7360b618768f&redirect_uri=https%3A%2F%2Fdev.sensotrend.fi%2Fapi%2Fauthenticate%2Fsmart&client_id=ba932e7a-d9c9-4d79-af8b-48159a727b01
```

### Authorization Response

The authorization server approves the request and redirects back to the indicated `redirect_uri`,
together with the `state` parameter the client app issued, and a `code` that the client app can use
to fetch the access token and context information.

```
GET http://dev.sensotrend.fi/api/authenticate/smart?code=2Q7gMpAsZuZdJeRrQHsKF0JW9HxodF5CrFjWWihM9STOkCutWYPPG5dKGG6fuLe_5ddxgSoBH2coxAfeQW_CrKTSS02RXsoxXN8YZO2AIznbB4iiBQzQcEIs5mZ_-U6U&state=2c45ddb7-c830-4ef4-8922-7360b618768f
```

### Access Token Retrieval

The client app exchanges the `code` to access token and context information with a `POST` request
to the token endpoint (retrieved earlier with the server metadata).

```
POST 'code=2Q7gMpAsZuZdJeRrQHsKF0JW9HxodF5CrFjWWihM9STOkCutWYPPG5dKGG6fuLe_5ddxgSoBH2coxAfeQW_CrKTSS02RXsoxXN8YZO2AIznbB4iiBQzQcEIs5mZ_-U6U&grant_type=authorization_code&redirect_uri=https%3A%2F%2Fdev.sensotrend.fi%2Fapi%2Fauthenticate%2Fsmart&client_id=ba932e7a-d9c9-4d79-af8b-48159a727b01' 
```

The response is:
```
{
  "access_token": "ODwdzFxnt2XPLkPN99X13HdgBy7v55nZuysW2RYbVQl9NnBVMuQv8ER5_3JDD1oPiRSp6EWS2LQ6Lv2GHtrSx2a8YHJRakSV1ZkvGVRN9YSAN7CaPA9GQ_Dc_0iS7MXe",
  "token_type": "Bearer",
  "expires_in": 3600,
  "scope": "user/Appointment.read user/DocumentReference.write user/Encounter.Read user/Encounter.read user/Observation.Read user/Observation.Write user/Observation.read user/Observation.write user/Organization.read user/Patient.Read user/Patient.read user/Practitioner.Read user/Practitioner.read user/PractitionerRole.read launch launch/patient openid",
  "state": "2c45ddb7-c830-4ef4-8922-7360b618768f",
  "__epic.dstu2.patient": "TsRGy4u8N.QB9ggWS-RNnKLIRbxmCIW4Fvyw1-8bXPawB",
  "deptID": "490771",
  "id_token": "eyJhbGciOiJSUzI1NiIsImtpZCI6ImFlOHhRNTBiMFd3UGNmNjNYWENCcms4anFJUlErSVBwNTg0VlVLbmRwZXM9IiwidHlwIjoiSldUIn0.eyJhdWQiOiJiYTkzMmU3YS1kOWM5LTRkNzktYWY4Yi00ODE1OWE3MjdiMDEiLCJleHAiOjE2NzQ1NTYwNTQsImlhdCI6MTY3NDU1NTc1NCwiaXNzIjoiaHR0cHM6Ly9ndy5hcG90dGlla29zeXN0ZWVtaS5maS9JbnRlcmNvbm5lY3QtRkhJUi1FS08wMS9vYXV0aDIiLCJzdWIiOiJlaEhqcnJCbDJ1VWJDMC5vbG9DVFJVU2dqbzNjUGFaZVFaaHJiNDgxeWx4dzMifQ.ZL2NAp1g3BHMpJMdMn7IUOqhaBokSUjdc33k6UPYx-FA9TyAlneJDnxEJ8gVfRIck5Ix3zanyuBt0wOYOSfH160Jng54Qmhqgo_HRHHQzqoz-pS7jUd_LSrFpbrEKTBfsvrirhfExT9nGkzhPPMwfDzv5HSXR56WCljpXbPS9JkZv2NgQxc0PDEByPdFo_OH1icYa9z7b8Xq_MqwUG27bnDc3jzBTq9QBrQUO6jEYEJaZIc4KaakizHPzjYaf-Av39ZIiw2FnG59xawHEwP77xsYaOJA9sMwMeXvvshwlyN9EM152JbxjcYUWhJw07se-VRtKqI_f_O2BYp3Ly89KQ",
  "loginDepartment": "eYvrM0-vLt2R54-Oq4G7jgA3",
  "need_patient_banner": "true",
  "patient": "e5Lq8kpLjGQOrUOSyW1Bwwg3",
  "smart_style_url": "https://gw.apottiekosysteemi.fi/Interconnect-FHIR-EKO01/api/epic/2016/EDI/HTTP/style/100016/I0YyRkFGOHwjQzEyMTI3fCMwMEFBRkZ8I0UwRjNFRXwjODZCNTQwfCMwMDAwMDB8MHB4fDEwcHh8fEFyaWFsLCBzYW5zLXNlcmlmfCdTZWdvZSBVSScsIEFyaWFsLCBzYW5zLXNlcmlmfHw%3D.json"
}
```

The parameters `__epic.dstu2.patient`, `deptID`, and `loginDepartment` are Epic specific
parameters, the rest are defined by the
[SMART App Launch specification](http://www.hl7.org/fhir/smart-app-launch/).

In this case, the client app uses the deptID to know the part of the organization the call comes
from. The client app wants to limit the visibility of the app and the data to only specific clinics
within Apotti.

The standard way to do this would be through the
[`fhirContext`](http://www.hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html#launch-context-arrives-with-your-access_token)
parameter.

The client app can now use the `access_token` to fetch more information.

### User Information

The client can decode the `id_token` to find out more about the person launching the app. It could
be a patient, accessing the app through the patient portal, but in this case it is a practitioner.

The client app SHOULD verify the signature of the `id_token`. The public key required for
verification can be found through the `.well-known/openid-configuration`, in this case with:
```
GET https://gw.apottiekosysteemi.fi/Interconnect-FHIR-EKO01/api/FHIR/STU3/.well-known/openid-configuration
```
The client app can then use the key set uri from the `jwks_uri` property to validate the token.

An alternative is to use the
[token introspection](http://www.hl7.org/fhir/smart-app-launch/token-introspection.html) endpoint.
