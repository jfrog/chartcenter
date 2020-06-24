[__Welcome__](README.md) | [__FAQ__](faq.md) | [__Inclusion Process__](inclusion.md) | [__Public Roadmap__](roadmap.md) | [__Security Tab__](security.md) | [__Mitigation Notes__](securitymitigationspec.md) | [__JFrog Container Registry__](jfrog-cr.md)

------

# Our Public Roadmap 
Explore the issues we're considering to add to the next version of ChartCenter:

## Security Mitigation UI
Currently, chart maintainers can provide mitigation notes for the vulnerabilities provided on the security tab using a YAML file spec that allows them to tag individual CVE IDs. We're considering a more robust UI solution to allow maintainers to login and create these mitigation notes using modal windows where they can save their comments and see a log of old comments that may have been provided for the same CVE in the past. 

[See Open Issue](https://github.com/jfrog/chartcenter/issues/2)

## Improved Inclusion Process
The current inclusion process is done using a pull request process and can be found here. Our next goal is to provide maintainers the option of including repos from source -- allowing developers to push directly from their git repository straight into ChartCenter.

Issues that must be discussed include:
* Versioning Considerations
* Namespaces
* Verification

[See Open Issue](https://github.com/jfrog/chartcenter/issues/3)

## Namespaces

Another consideration for inclusion and namespaces includes how we should prioritize namespace reservations and whether maintainers want a 2nd tier verification process to signify that a namespace is an official one from the organization. We would provide extra assurance that an organization repository is owned by the business and perhaps show an official icon signifying this to be the case. The process for 2nd Tier inclusion needs to be discussed.

[See Open Issue](https://github.com/jfrog/chartcenter/issues/4)

