### Welcome to the Finnish SMART App Launch Specification

This implementation guide specifies the Finnish FHIR base profiles.

It builds on top of both the HL7
[SMART App Launch](https://hl7.org/fhir/smart-app-launch/)
and the HL7
[International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)
specifications.

SMART App Launch is the mechanism through which third-party apps can be integrated with Electronic
Health Record (EHR) systems. It specifies how apps gain knowledge of which practitioner or patient
wants to access which patient's information, and how the app obtains the access token that can then
be used to access further information.

You can think of it as a single-sign-on (SSO) mechanism, but it is actually a bit more and extends
to communicating the context too.

When launched, the third party apps can either stand on their own or be embedded into the views of
the EHR or a patient portal.

The SMART specification is suitable for both web based apps and native apps. It makes a distinction
between
[public and confidential apps](https://hl7.org/fhir/smart-app-launch/app-launch.html#support-for-public-and-confidential-apps).

In addition to launching apps, the main SMART specification defines a
[profile for backend services](https://hl7.org/fhir/smart-app-launch/backend-services.html).

<section id="stu-ballot" class="stu-note">
  <h4>Standard for Trial Use Ballot Feedback</h4>
  <p><strong>This documentation and set of artifacts are still undergoing development, and they are
  in DRAFT mode.</strong> The working group of HL7 Finland and the different interested parties are
  working on this specification. This is a DRAFT specification that is currently under review by
  the members of <a href="https://www.hl7.fi">HL7 Finland</a>. If you are interested in
  participating to the formal review process, please contact Timo Kaskinen, the chair of the FL7
  Finland Technical Committee, or Mikael Rinnetmäki, responsible for publication of this
  implementation guide.</p>
  <p>This version of this implementation guide is frozen and published as a base for the official
  ballot within HL7 Finland. The p
  See also the <a
  href="https://www.hl7.fi/ennakkoilmoitus-alkavasta-fhir-perusprofilointimaarittelyjen-lausuntokierroksesta/">formal
  announcement</a> in HL7 Finland's website (in Finnish only).</p>
  <p>This ballot cycle is considered a <strong>Standard for Trial Use</strong> ballot in the <a
  href="https://confluence.hl7.org/display/HL7/HL7+Balloting">HL7 Balloting process</a>.</p>
  <p>HL7 Finland does not use the HL7 Ballot Desktop or the Jira Ballot Process, rather feedback is
  gathered through email to <a href="mailto:timo.kaskinen@nhg.fi">timo.kaskinen@nhg.fi</a> and <a
  href="https://github.com/fhir-fi/finnish-smart/issues">issues in the GitHub
  repository</a> of the implementation guide.</p>
  <p>The main purpose of the ballot cycle is to solicit feedback from the wider FHIR community. The
  team involved in creating the first versions of the implementation guide have a limited view on
  the market and the activities of the community.</p>
  <p>In the ballot process, the focus is on critical comments. We want to learn of any potential
  doubts and disagreements the community may have towards the specification created by the smaller
  core team.</p>
  <p>Still, <strong>all feedback is welcome and appreciated</strong> and will be considered in the
  further development of the implementation guide. Please do also share positive feedback.</p>
  <p>Some questions to trigger thoughts are:</p>
  <ul>
    <li>Do you find the creation of a Finnish implementation guide for SMART App Launch
    worthwhile?</li>
    <li>Is the purpose of the implementation guide clear and is the description of the problem
    domain adequate on this first page of the implementation guide?</li>
    <li>Is this the right level for a national implementation guide? The global community is still
    figuring this out. For instance, see the <a
    href="https://build.fhir.org/ig/HL7-Canada/ca-baseline/#base-vs-baseline-vs-core">categorization
    of Base, Baseline, and Core profiles</a> in the Canadian Baseline specification.</li>
    <li>Are there clear errors or mistakes in the implementation guide? Please don't hesitate
    pointing these out!</li>
    <li>Are there ambiguities or is some of the language confusing? Let us konw that too.</li>
    <li>Do you know of SMART App Launch mechanism being used in Finland in ways that are not
    covered by this implementation guide? Would the Finnish FHIR community benefit from those use
    cases being covered? Could the parties involved benefit from making the use case more visible
    through being mentioned in this implementation guide?</li>
    <li>Would you be able to provide examples from use cases to be included in this implementation
    guide?</li>
    <li>Did you happen to learn something useful when reading this implementation guide? :)</li>
  </ul>
  <p>We look forward to hearing from you!</p>
</section>

#### Companion Specifications

There is a separate implementation guide for [Finnish Base Profiles](../finnish-base-profiles/)
that defines the Finnish profiles for some of the key FHIR resources.

### Why Do We Need to Profile the SMART Specification?

The SMART App Launch specification is already a globally applicable specification. The
International Patient Access specification adds some more constraints and details to it. Do we
really need something more?

We have found out that there are still some places in both of these specifications that allow some
implementation feedom but may be tricky for app developers to support. In this implementation
guide, we aim to provide clarity on topics like how an app best learns the organization or
organization unit the practitioner launching the app works for (when launching the app).

We believe we can get some of these details sorted out more efficiently in the local Finnish
context. We still aim to feed our learnings and developments with the wider SMART community and
help get parts of them adopted to the SMART and IPA specifications.

### Notable SMART Implementations in Finland

Both HL7 FHIR and the SMART App Launch mechanism are used in Finland by many implementations.

[Apotti](https://www.apotti.fi/) is a sizeable Epic installation in Finland.
[Epic](https://www.epic.com) is one of the biggest electronic health record system vendors
globally. SMART App Launch is the primary mechanism through which third-party apps SHOULD be
integrated with Apotti. See also the
[Apotti Ecosystem](https://www.apotti.fi/en/the-apotti-ecosystem/).

The [Esko APTJ](https://eskosystems.fi/tuoteperhe/integraatiot/) by Esko Systems is one of the
prominent Finnish electronic health record systems. It uses both HL7 FHIR APIs and the SMART
specification for internal communication between the components of the system. Esko also offers a
SMART App Launch method to interact with third party systems.

The [Kanta PHR](https://www.kanta.fi/phr) is a personal health record platform for storing and
exchanging health and wellbeing data produced and governed by citizens. It uses a security
mechanism that is pretty close to FHIR, but with some subtle differences.

[Health Village](http://healthvillage.fi) is a publicly funded group of services. It has
built in HL7 [SMART App Launch](https://www.hl7.org/fhir/smart-app-launch/) capability for
interacting with third party apps. 

[InterSystems Finland](https://www.intersystems.com/fi/) has built an adapter through which
existing CCOW based systems can launch SMART apps. The adapter has been used at least by
[Vitec Acute](https://www.vitec-acute.com/) and
[Lifecare](https://www.tietoevry.com/en/care/healthcare/) EHRs.

Furthermore, the [FHIR Demo 2022](https://fhir.fi/en/demo2022/index.html) showcase presented
integrations implemented between a dozen platforms and more than a dozen FHIR apps, all based on
HL7 FHIR and most utilizing the SMART specification.

Even that showcase did not cover the full extent to which HL7 FHIR is being used in Finland.
There's a lot going on!

To learn about the current status, please contact [HL7 Finland](https://www.hl7.fi/). We're happy
to give you an overview.

### Profiling Approach

The base FHIR specification works on a global scope. It is hard to achieve consensus on many things
globally. However, smaller regions and jurisdictions are in a better position to agree on tighter
constraints. We take benefit of this and move faster with things that we can agree on on a local
level.

We are also committed to sharing our learnings with the wider FHIR community and get parts of the
definitions adopted in the international main specifications.

We hope that publishing examples gives new implementers a glance of how systems exchange
information. However, implementers are **strongly encouraged** to read the main SMART specification
and the relevant parts of the IPA specification. This implementation guide should not be used as a
comprehensive specification on which to build implementations.

### Governance

The profiling work is performed in a project driven by [HL7 Finland](https://www.hl7.fi).
See the
[announcement](https://www.hl7.fi/hl7-fhir-profilointityo-kaynnistyy-tule-mukaan-vaikuttamaan-kansalliseen-tekemiseen/)
(in Finnish), the [running
memo](https://docs.google.com/document/d/1yNq6XMLhWJqi6OELQtWC1DFwdtD9CQulzVOfz-zZCko/edit#), and
[some more details](https://fhir.fi). We warmly welcome new participants to the project. You may
even be compensated for your efforts.

The team involved in creating the first version of the implementation guide includes
* Arto Huusko, CGI Oyj
* Janne Heikkinen, BCB Medical Oy
* Jari Kariniemi, Kymenlaakson hyvinvointialue
* Jari Vuonos, Apotti Oy
* Joni Hirviniemi, Fujitsu
* Jyrki Soikkeli, Apotti Oy
* Marko Kaukonen, BCB Medical Oy
* Markus Lind, Buddy Healthcare Oy
* Markus Suonpää, CGI Finland Oyj
* Mika Jylhä, Esko Systems Oy
* Mika Lentovaara, HUS
* Mika Tuomainen, Kela
* Mikael Rinnetmäki, Sensotrend Oy
* Tero Pekkola, Esko Systems Oy

### Collaboration

We want this implementation guide to be useful for you.

If you are implementing FHIR in a system or application that is meant to be used in Finland and are
thinking of some implementation details, you are probably in the right place and this
implementation guide should help you with those questions. If this implementation guide in any way
fails to give you the answers you are looking for, we'd love to hear about it so we can make it
better. Please do be in touch in one of the ways listed below.

#### Open an Issue in GitHub

The source code of this implementation guide is maintained in a
[publicly accessible repository](https://github.com/fhir-fi/finnish-base-profiles) in GitHub.
Issues opened in that GitHub repo are very welcome. They help the team pick up any proposed changes
or additions and to discuss them publicly.

#### Open a Pull Request in GitHub

Pull requests are even better. If you are in a position to suggest how exactly your proposal should
be implemented in the specification, do it! It helps the team maintaining the implementation guide
a great deal.

#### Participate in IG Development and Maintenance

Please also consider joining the development effort. This is the best way to affect the outcome of
the profiling work. You may even be compensated for your efforts. Please be in touch with HL7
Finland to discuss options, if this even remotely interesting for you.

The best implementation guide is the one that reflects the views and the consensus of the whole
FHIR community!

### Safety Considerations
This implementation guide defines data elements, resources, formats, and methods for exchanging
healthcare data between different participants in the healthcare process. As such, clinical safety
is a key concern. Additional guidance regarding safety for the specification’s many and various
implementations is available at
[https://www.hl7.org/FHIR/safety.html](https://www.hl7.org/FHIR/safety.html).

Although the present specification does give users the opportunity to observe data protection and
data security regulations, its use does not guarantee compliance with these regulations. Effective
compliance must be ensured by appropriate measures during implementation projects and in daily
operations. The corresponding implementation measures are explained in the standard. In addition,
the present specification can only influence compliance with the security regulations in the
technical area of standardisation. It cannot influence organisational and contractual matters.

### License and Legal Terms 

This document is licensed under Creative Commons
[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/) Public Domain Dedication.

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png"
style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned
by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties
("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to
Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary
licenses or authorizations to utilize Third Party IP in connection with the specification or
otherwise.

See also [http://hl7.org/fhir/license.html](http://hl7.org/fhir/license.html).

Following is a non-exhaustive list of third-party artifacts and terminologies that may require a
separate license:

**SNOMED Clinical Terms® (SNOMED CT®)**
This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED
International (former known as International Health Terminology Standards Development Organisation
IHTSDO). All rights reserved. SNOMED CT®, was originally created by The College of American
Pathologists. “SNOMED” and “SNOMED CT” are registered trademarks of SNOMED International.

**Logical Observation Identifiers Names and Codes LOINC**
This material contains content from LOINC® (http://loinc.org). The LOINC table, LOINC codes, and
LOINC panels and forms file are copyright © 1995-2013, Regenstrief Institute, Inc. and the Logical
Observation Identifiers Names and Codes (LOINC) Committee and available at no cost under the
license at http://loinc.org/terms-of-use.
