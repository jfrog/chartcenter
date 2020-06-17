[__Welcome__](index.md) | [__FAQ__](faq.md) | [__Inclusion Process__](inclusion.md) | [__Public Roadmap__](roadmap.md) | [__Security Tab__](security.md) | [__Mitigation Notes__](securitymitigationspec.md) | [__JFrog Container Registry__](jforg-cr.md) |

------

# How Vulnerability Scanning Works in ChartCenter

ChartCenter uses a limited version of [JFrog Xray](https://jfrog.com/xray/) to scan each available Helm chart and the dependencies associated with it and provides CVE data from the [National Vulnerability Database](https://nvd.nist.gov/). This means, we do not provide vulnerability information from the full set of proprietary databases that paid Xray users have. Our intention is to provide chart users enough information to make informed choices about which chart versions to use.

# Chart Maintainers can Activate High Vulnerabilities

Are you the maintainer of a Helm chart on ChartCenter? 

ChartCenter uses JFrog Xray to scan all Helm charts and provide publically available [CVE (using CVSS v2)](https://nvd.nist.gov/vuln-metrics/cvss) information for all charts. We show vulnerability details for medium, low, and unknown severity vulnerabilty by default, but have chosen to give maintainers control over what level of detail they'd like to make available to the community for high vulnerabilities.  

We provide chart maintainers the power to activate high severity vulnerability details once they've had the opportunity to provide [mitigation notes on the UI](https://github.com/jfrog/chartcenter/blob/master/docs/securitymitigationspec.md). Many Helm charts use third-party components and many of the updates to those components are not under direct control of the chart maintainer. Thus, we want to strike the right level of balance between making charts safe, giving maintainers the ability to engage with chart users, and providing users the right level of details regarding publically-listed vulnerabilities found in the lastest chart versions.   

# Mitigation Notes 

[Screenshot]

The ChartCenter security tab includes the ability for chart maintainers to provide notes under each individual CVE using the [security-mitigation.yaml](https://github.com/jfrog/chartcenter/blob/master/docs/security-mitigation.yaml) file. 

[SCREENSHOTS of UI]

You can provide the security-migitation.yaml file in two ways:
1. Include the file in your latest chart
2. Email us the security-mitigation.yaml file from email associated with your chart or repo
