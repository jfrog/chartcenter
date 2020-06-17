# Security Mitigation

You have the ability to activate high vulnerability CVE details on ChartCenter's UI by filling out the [security-mitigation.yaml](https://github.com/jfrog/chartcenter/blob/master/docs/security-mitigation.yaml)file and including it in your next chart release. Once you add a single CVE note on a high vulnerability and send us the file, you are opting in for us to activate details for all high vulnerabilities. 

[SCREENSHOT]

This spec will walk you through how to the [security-mitigation.yaml](https://github.com/jfrog/chartcenter/blob/master/docs/security-mitigation.yaml) should be filled out.

# Mitigation Notes Spec

Security mitigation provides the ability for producers to specify mitigation notes for security issues associated with their Helm chart with their consumers.

[SCREENSHOT]

These mitigation notes will appear on the security tab of your Helm chart on ChartCenter.

You can get a copy of the [security-mitigations.yaml](https://github.com/jfrog/chartcenter/blob/master/docs/security-mitigation.yaml) file here.

The security mitigation spec supports 3 use cases:
* Ability for producers to provide overall and/or CVE specific mitigation information. 
* Ability for producers to point security mitigation information that is hosted externally on a wiki / webpage.
* Ability for producers to point to externally hosted security-mitigation.yaml file.

Here’s the format:

schemaVersion: v1
summary: text
securityAdvisoryUrl: URL
useMitigationExternalFile: boolean
mitigationExternalFileUrl: URL

mitigations:
cves: 
  CVE-YYYY-NNNN
  versionsType: chart | app
  affectedVersions: mastermind SemVer constraint
  description: text

| Field  | Description | Type |
| ------------- | ------------- | ---- |
| summary  | Overall mitigation summary that applies to all chart versions  | text |
| securityAdvisoryUrl | Link pointing to a mitigation information hosted externally such as wiki, web page, etc. | url |
| useMitigationExternalFile | true means security-mitigation.yaml is hosted somewhere else. false means the content of the current file represents security mitigation information. Default value: false | true/false | 
| mitigationExternalFileUrl | If useMitigationExternalFile is set to true, then this parameter points to a url of externally hosted security-mitigation.yaml | url | 
| mitigations: cves | List of CVEs for which mitigation notes are being provided. | CVE-YYYY-NNNN | 
| mitigations: cves: versionsType | If versionType is set to chart, then the affectedVersions represents chart versions. If versionType is set to app, then the affectedVersions represents application versions. | chart / app | 
| mitigations: cves: affectedVersions | SemVer Constraint from Masterminds/semver as used on Chart.yaml for kubeVersion specifying which versions should use the mitigation information. | Example: > 1.2.x || < 2.5.8 | 
| mitigations: cves: description | Mitigation notes at CVE level. | text description | 

## Examples
Example 1: Ability for producers to provide overall and/or CVE specific mitigation information. 

Example 2: Ability for producers point security mitigation information that is hosted externally on wiki / webpage.

Example 3: Ability for producers to point to externally hosted security-mitigation.yaml file.

## Considerations
Presence of security-mitigation.yaml also represents intent for producers to be transparent with their consumers. Once a mitigation note is provied for 1 high CVE, all high CVEs will be activiated and made public in the UI. Let’s assume that application A has 5 high severity issues. If mitigation information is provided for 1 CVE that has high severity, then all 5 security issues will be made public on the UI.

Should you have any questions, please email us at [chartcenter@jfrog.com](mailto:chartcenter@jfrog.com)


