[__Welcome__](README.md) | [__FAQ__](faq.md) | [__Add Repo__](inclusion.md) | [__Add Chart__](source-inclusion.md) | [__Roadmap__](roadmap.md) | [__Security Tab__](security.md) | [__Mitigation Notes__](securitymitigationspec.md) | [__JFrog Container Registry__](jfrog-cr.md) 

# Attention: Deprecation Notice for Bintray, GoCenter, ChartCenter, and JCenter. [Learn More](https://jfrog.com/blog/into-the-sunset-bintray-jcenter-gocenter-and-chartcenter)

------

# Learn How Security in ChartCenter Works

ChartCenter uses [JFrog Xray](https://jfrog.com/xray/) to scan each available Helm chart and the dependencies associated with it and provides CVE information by severity level from the [National Vulnerability Database](https://nvd.nist.gov/). 

The information available on ChartCenter may not include all vulnerabilities and the actual severities thereof and is based on running a limited version of JFrog's Xray.

## High severity vulnerabilities will be hidden until the maintainer of the chart chooses to activate that information by providing [mitigation notes](securitymitigationspec.md). 

By default, the security tab for each chart version will show you unknown, low, and medium severities using the CVSS v2 rating. We've provided chart maintainers a feature that allows them to tell us when they'd like to expose high vulnerability data.

![Mitigation](https://github.com/jfrog/chartcenter/blob/master/docs/screenh.png?raw=true)

**Why?**

We've given chart maintainers control over high severity information to encourage them to fix or provide mitigation notes on these issues. Our goal is not to penalize chart maintainers for issues that are found in third-party components. Our intention is to provide chart users enough information to make informed choices about which chart versions to use.

This information is presented on the security tab in columns, but you can also see which vulnerabilities are present on the **dependencies tab** and drill down into the container image to see more.

![Container](https://github.com/jfrog/chartcenter/blob/master/docs/screend.png?raw=true)

# How Chart Maintainers can Activate High Vulnerabilities

Are you the maintainer of a Helm chart on ChartCenter? 

ChartCenter shows vulnerability details for medium, low, and unknown severity vulnerabilty by default, but have chosen to give maintainers control over what level of detail they'd like to make available to the community for high vulnerabilities.  

We provide chart maintainers the power to activate high severity vulnerability details once they've had the opportunity to provide [mitigation notes on the UI](https://github.com/jfrog/chartcenter/blob/master/docs/securitymitigationspec.md). 

Many Helm charts use third-party components and we're aware that these components are not under direct control of the chart maintainer. In an effort to strike the right level of balance between making chart safety a priority, and giiving maintainers a fair ability to engage intelligently with chart users, and we have created a system to ensure maintainers can choose when to provide details about high severities on the UI for publically-listed vulnerabilities.

This means, we do not provide vulnerability information from the full set of proprietary databases that paid Xray users have access to.   

# Maintainer Notes 

The ChartCenter security tab includes the ability for chart maintainers to provide notes under each individual CVE using the [security-mitigation.yaml](https://github.com/jfrog/chartcenter/blob/master/docs/security-mitigation.yaml) file. 

![Mitigation](https://github.com/jfrog/chartcenter/blob/master/docs/screenm.jpg?raw=true)

You can provide the security-migitation.yaml file in two ways:

1. Include the this yaml file in your latest chart
2. Email us the security-mitigation.yaml file from email associated with your chart or repo

[The specifications for this yaml file can be found here](securitymitigationspec.md).
