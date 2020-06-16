# How Vulnerability Scanning works in ChartCenter

ChartCenter uses a limited version of JFrog Xray to scan each available Helm chart and the dependencies associated with it and provides CVE data from the National Vulnerability Database. This means, we do not provide vulnerability information from the full set of propietary databases that premium Xray users have. Our intention is to provide chart users enough information to make informed choices about which chart versions to use.

# Chart Maintainers can Activate High Vulnerabilities

Are you the maintainer of a Helm chart on ChartCenter? 

ChartCenter uses JFrog Xray to scan all Helm charts and provide publically available CVE (see details) information for all charts. We show vulnerability details for medium, low, and unknown severity vulnerabilty by default, but have chosen to give maintainers control over what level of detail they'd like to make available to the community for high vulnerabilities.  

After getting feedback from maintainers, we decided that it's only fair that we provide chart maintainers the power to activate high severity vulnerability details once they've had the opportunity to provide mitigation notes. Many Helm charts use third-party components and many of the updates to those components are not under direct control of the chart maintainer. Thus, we want to strike the right level of balance between making charts safe, giving maintainers the ability to engage with end-users, and providing chart users the right level of details regarding publically-listed vulnerabilities found.   

## Provide vulnerability mitigation notes with our new YAML file!

We've built out a security-mitigation.yaml file that will allow you to tag specific CVEs and provide a note for each CVE in our UI. The way this works:

[SCREENSHOTS of UI]

You can provide the security-migitation.yaml file in two ways:
1. Include the file in your latest chart
2. Email us the security-mitigation.yaml
