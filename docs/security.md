[__Welcome__](README.md) | [__FAQ__](faq.md) | [__Inclusion Process__](inclusion.md) | [__Public Roadmap__](roadmap.md) | [__Security Tab__](security.md) | [__Mitigation Notes__](securitymitigationspec.md) | [__JFrog Container Registry__](jfrog-cr.md)

------

# Learn How Security in ChartCenter Works

ChartCenter uses [JFrog Xray](https://jfrog.com/xray/) to scan each available Helm chart and the dependencies associated with it and provides CVE information by severity level from the [National Vulnerability Database](https://nvd.nist.gov/). 

![Mitigation](https://github.com/jfrog/chartcenter/blob/master/docs/screen2.png?raw=true)

By default, the Security tab for each chart version will show you unknown, low, and medium severities using the CVSS v2 rating scale. High severity vulnerabilities will be hidden until the maintainer of the chart chooses to activate that information.  We've given chart maintainers control over high severity information to encourage them to fix or provide mitigation notes on these issues. Our goal is not to penalize chart maintainers to issues that are found in third-party components. Our intention is to provide chart users enough information to make informed choices about which chart versions to use.

# How Chart Maintainers can Activate High Vulnerabilities

Are you the maintainer of a Helm chart on ChartCenter? 

ChartCenter shows vulnerability details for medium, low, and unknown severity vulnerabilty by default, but have chosen to give maintainers control over what level of detail they'd like to make available to the community for high vulnerabilities.  

We provide chart maintainers the power to activate high severity vulnerability details once they've had the opportunity to provide [mitigation notes on the UI](https://github.com/jfrog/chartcenter/blob/master/docs/securitymitigationspec.md). 

Many Helm charts use third-party components and we're aware that these components are not under direct control of the chart maintainer. In an effort to strike the right level of balance between making chart safety a priority, and giiving maintainers a fair ability to engage intelligently with chart users, and we have created a system to ensure maintainers can choose when to provide details about high severities on the UI for publically-listed vulnerabilities.

This means, we do not provide vulnerability information from the full set of proprietary databases that paid Xray users have access to.   

# Mitigation Notes 

The ChartCenter security tab includes the ability for chart maintainers to provide notes under each individual CVE using the [security-mitigation.yaml](https://github.com/jfrog/chartcenter/blob/master/docs/security-mitigation.yaml) file. 

![Mitigation](https://github.com/jfrog/chartcenter/blob/master/docs/screen1.png?raw=true)

You can provide the security-migitation.yaml file in two ways:

1. Include the this yaml file in your latest chart
2. Email us the security-mitigation.yaml file from email associated with your chart or repo

[The specifications for this yaml file can be found here](#securitymitigationspec.md).
